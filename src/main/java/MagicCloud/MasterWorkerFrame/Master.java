package MagicCloud.MasterWorkerFrame;

/**
 * Created by sl on 16-1-1.
 */
import org.apache.zookeeper.KeeperException;
import org.apache.zookeeper.WatchedEvent;
import org.apache.zookeeper.Watcher;
import org.apache.zookeeper.ZooKeeper;
import org.apache.zookeeper.data.Stat;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.util.List;
import java.util.Random;

import static org.apache.zookeeper.AsyncCallback.*;
import static org.apache.zookeeper.CreateMode.EPHEMERAL;
import static org.apache.zookeeper.CreateMode.PERSISTENT;
import static org.apache.zookeeper.KeeperException.*;
import static org.apache.zookeeper.ZooDefs.Ids.OPEN_ACL_UNSAFE;

public class
        Master implements Watcher {

    private static final Logger LOGGER = LoggerFactory.getLogger(Master.class);
    private static String MASTER_PATH = "/master";
    static boolean isLeader;

    ZooKeeper zk;
    String hostPort;
    String serverId;
    private volatile boolean connected;
    private volatile boolean expired;
    private volatile MasterStates state;
    ChildrenCache workersCache;

    /*
     * A master process can be either running for
     * primary master, elected primary master, or
     * not elected, in which case it is a backup
     * master.
     */
    enum MasterStates {
        RUNNING,
        ELECTED,
        NOTELECTED
    }

    // callbacks

    StringCallback masterCreateCallback = new StringCallback() {
        //        @Override
        public void processResult(int rc, String path, Object ctx, String name) {
            switch (Code.get(rc)) {
                case CONNECTIONLOSS:
                    checkMaster();
                    break;
                case OK:
//                    isLeader = true;
                    state = MasterStates.ELECTED;
                    takeLeadership();
                    break;
                case NODEEXISTS:
                    state = MasterStates.NOTELECTED;
                    masterExists();
                    break;
                default:
//                    isLeader = false;
                    state = MasterStates.NOTELECTED;
                    LOGGER.error("Error while running for master.", KeeperException.create(Code.get(rc), path));
                    break;
            }
            LOGGER.info("I'm " + (isLeader ? "" : "not ") + "the leader");
        }
    };

    StatCallback masterExistsCallback = new StatCallback() {
        //        @Override
        public void processResult(int rc, String path, Object ctx, Stat stat) {
            switch (Code.get(rc)) {
                case CONNECTIONLOSS:
                    masterExists();
                    break;
                case OK:
                    break;
                case NONODE:
                    state = MasterStates.RUNNING;
                    runForMaster();
                    LOGGER.info("Previous master was deleted. Run for master again.");
                    break;
                default:
                    checkMaster();
                    break;
            }
        }
    };

    DataCallback masterCheckCallback = new DataCallback() {
        //        @Override
        public void processResult(int rc, String path, Object ctx, byte[] data, Stat stat) {
            switch (Code.get(rc)) {
                case CONNECTIONLOSS:
                    checkMaster();
                    break;
                case NONODE:
                    runForMaster();
                    break;
                default:
                    LOGGER.error("Can't read data. ", KeeperException.create(Code.get(rc), path));
            }
        }
    };

    StringCallback createParentCallback = new StringCallback() {
        //        @Override
        public void processResult(int rc, String path, Object ctx, String name) {
            switch(Code.get(rc)) {
                case CONNECTIONLOSS:
                    createParent(path, (byte[]) ctx);
                    break;
                case OK:
                    LOGGER.info("Parent created: " + path);
                    break;
                case NODEEXISTS:
                    LOGGER.warn("Parent already registered: " + path);
                    break;
                default:
                    LOGGER.error("Error creating parent: " + path + ".", KeeperException.create(Code.get(rc), path));
            }
        }
    };

    ChildrenCallback workersGetChildrenCallback = new ChildrenCallback() {
        //        @Override
        public void processResult(int rc, String path, Object ctx, List<String> children) {
            switch(Code.get(rc)) {
                case CONNECTIONLOSS:
                    getWorkers();
                    break;
                case OK:
                    LOGGER.info("Success. Got list of workers: " + children.size() + " workers");
                    reassignAndSet(children);
                    break;
                default:
                    LOGGER.error("Unable to get children.", KeeperException.create(Code.get(rc), path));
            }
        }
    };

    ChildrenCallback workerAssignmentCallback = new ChildrenCallback() {
        //        @Override
        public void processResult(int rc, String path, Object ctx, List<String> children) {
            switch(Code.get(rc)) {
                case CONNECTIONLOSS:
                    getAbsentWorkerTasks(path);
                    break;
                case OK:
                    LOGGER.info("Success. Got list of assignments: " + children.size() + " tasks for " + path);
                    // reassign each task for the absent worker
                    for (String task : children) {
                        //getDataReassign(path + "/" + task, task);
                    }
                    break;
                default:
                    LOGGER.error("Unable to get children assignments.", KeeperException.create(Code.get(rc), path));
            }
        }
    };

    ChildrenCallback tasksGetChildrenCallback = new ChildrenCallback() {
        //        @Override
        public void processResult(int rc, String path, Object ctx, List<String> children) {
            switch (Code.get(rc)) {
                case CONNECTIONLOSS:
                    getTasks();
                    break;
                case OK:
                    if (children != null) {
                        assignTasks(children);
                    }
                    break;
                default:
                    LOGGER.error("Unable to get children tasks.", KeeperException.create(Code.get(rc), path));
            }
        }
    };

    DataCallback taskDataCallback = new DataCallback() {
        //        @Override
        public void processResult(int rc, String path, Object ctx, byte[] data, Stat stat) {
            switch (Code.get(rc)) {
                case CONNECTIONLOSS:
                    getTaskData((String) ctx);
                    break;
                case OK:
                    // choose random worker
                    List<String> list = workersCache.getList();
                    String worker = list.get(new Random().nextInt(list.size()));
                    // assign task to randomly chosen worker
                    String assignmentPath = "/assign/" + worker + "/" + (String) ctx;
                    createAssignment(assignmentPath, data);
                    break;
                default:
                    LOGGER.error("Unable to get task data.", KeeperException.create(Code.get(rc), path));
            }
        }
    };

    StringCallback assignTaskCallback = new StringCallback() {
        //        @Override
        public void processResult(int rc, String path, Object ctx, String name) {
            switch(Code.get(rc)) {
                case CONNECTIONLOSS:
                    createAssignment(path, (byte[]) ctx);
                    break;
                case OK:
                    LOGGER.info("Task assigned: " + name);
                    String taskName = name.substring(name.lastIndexOf("/") + 1);
                    deleteTask(taskName);
                    break;
                case NODEEXISTS:
                    LOGGER.warn("Already assigned: " + name);
                    break;
                default:
                    LOGGER.error("Unable to assign task.", KeeperException.create(Code.get(rc), path));
            }
        }
    };

    VoidCallback taskDeleteCallback = new VoidCallback() {
        //        @Override
        public void processResult(int rc, String path, Object ctx) {
            switch (Code.get(rc)) {
                case CONNECTIONLOSS:
                    deleteTask(path);
                    break;
                case OK:
                    LOGGER.info("Task deleted: " + path);
                    break;
                case NONODE:
                    LOGGER.warn("Task already deleted: " + path);
                    break;
                default:
                    LOGGER.error("Unable to delete task.", KeeperException.create(Code.get(rc), path));
            }
        }
    };

    // watchers

    Watcher masterExistsWatcher = new Watcher() {
        //        @Override
        public void process(WatchedEvent e) {
            if (e.getType() == Event.EventType.NodeDeleted) {
                assert MASTER_PATH.equals(e.getPath());
                runForMaster();
            }
        }
    };

    Watcher workersChangeWatcher = new Watcher() {
        //        @Override
        public void process(WatchedEvent e) {
            if (e.getType() == Event.EventType.NodeChildrenChanged) {
                assert Worker.WORKERS_PATH_PREFIX.equals(e.getPath());
                getWorkers();
            }
        }
    };

    Watcher tasksChangeWatcher = new Watcher() {
        //        @Override
        public void process(WatchedEvent e) {
            if (e.getType() == Event.EventType.NodeChildrenChanged) {
                assert "/tasks".equals(e.getPath());
                getTasks();
            }
        }
    };

    Master(String hostPort) {
        this.hostPort = hostPort;
        this.serverId = Long.toString(new Random().nextLong());
        this.connected = false;
        this.expired = false;
        this.state = MasterStates.RUNNING;
        isLeader = false;
    }

    void bootstrap() {
        createParent("/workers", new byte[0]);
        createParent("/assign", new byte[0]);
        createParent("/tasks", new byte[0]);
        createParent("/status", new byte[0]);
    }

    void createParent(String path, byte[] data) {
        zk.create(path, data, OPEN_ACL_UNSAFE, PERSISTENT, createParentCallback, data);
    }

    void startZk() throws IOException {
        zk = new ZooKeeper(hostPort, 150000, this);
    }

    void stopZk() throws InterruptedException {
        zk.close();
    }

    public void process(WatchedEvent e) {
        LOGGER.info("Process: " + e);
        if (e.getType() == Event.EventType.None) {
            switch(e.getState()) {
                case SyncConnected:
                    connected = true;
                    break;
                case Disconnected:
                    connected = false;
                    break;
                case Expired:
                    expired = true;
                    connected = false;
                    LOGGER.error("session expired");
                    break;
                default:
                    break;
            }
        }
    }

    private void checkMaster() {
        zk.getData(MASTER_PATH, false, masterCheckCallback, null);
    }

    void runForMaster() {
        zk.create(MASTER_PATH, serverId.getBytes(), OPEN_ACL_UNSAFE, EPHEMERAL, masterCreateCallback, null);
    }

    void masterExists() {
        zk.exists(MASTER_PATH, masterExistsWatcher, masterExistsCallback, null);
    }

    void takeLeadership() {
        isLeader = true;
        LOGGER.info("Taking leadership.");
    }

    boolean isConnected() {
        return connected;
    }

    boolean isExpired() {
        return expired;
    }

    void getWorkers() {
        zk.getChildren(Worker.WORKERS_PATH_PREFIX, workersChangeWatcher, workersGetChildrenCallback, null);
    }

    void reassignAndSet(List<String> children) {
        List<String> toProcess;
        if (workersCache == null) {
            workersCache = new ChildrenCache(children);
            toProcess = null;
        } else {
            toProcess = workersCache.removeAndSet(children);
        }

        if (toProcess != null) {
            // get tasks for all absent workers
            for (String worker : toProcess) {
                getAbsentWorkerTasks(worker);
            }
        }
    }

    void getAbsentWorkerTasks(String worker) {
        zk.getChildren("/assign/" + worker, false, workerAssignmentCallback, null);
    }

    void getTasks() {
        zk.getChildren("/tasks", tasksChangeWatcher, tasksGetChildrenCallback, null);
    }

    void assignTasks(List<String> tasks) {
        for (String task : tasks) {
            getTaskData(task);
        }
    }

    void getTaskData(String task) {
        zk.getData("/tasks/" + task, false, taskDataCallback, task);
    }

    void createAssignment(String path, byte[] data) {
        zk.create(path, data, OPEN_ACL_UNSAFE, PERSISTENT, assignTaskCallback, data);
    }

    void deleteTask(String name) {
        zk.delete("/tasks/" + name, -1, taskDeleteCallback, null);
    }

    public static void main(String[] args) throws Exception {
        Master m = new Master("localhost:2181");
        m.startZk();

        while(!m.isConnected()) {
            Thread.sleep(100);
        }

        m.bootstrap();
        m.runForMaster();
        m.getWorkers();
        m.getTasks();

        while(!m.isExpired()) {
            Thread.sleep(1000);
        }

        m.stopZk();
    }

}
