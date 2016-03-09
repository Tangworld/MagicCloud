package MagicCloud;

import MagicCloud.MasterWorkerFrame.Client;
import MagicCloud.MasterWorkerFrame.FirstUrl;
import us.codecraft.webmagic.selector.thread.CountableThreadPool;

import java.io.IOException;
import java.util.List;

/**
 * Created by sl on 16-1-8.
 */
public class TaskToClient {

    private List<String> firstUrlList;

    private FirstUrl firstUrl;

    private String host;

    private Client client;

    protected CountableThreadPool threadPool;

    public TaskToClient(String host){
        this.host = host;
    }


    public void process() throws IOException {

        firstUrl = new FirstUrl(host);
        client = new Client(host);

        //获取当前redis中的firstUrls
        firstUrlList = firstUrl.getFirstURLs();

        for (final String url : firstUrlList){

            threadPool.execute(new Runnable() {
                public void run() {

                    try {
                        processClient(url);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }

                }
            });
        }

        client.close();

    }


    public void processClient(String url) throws IOException {

        client.start();

        //生成task-x，作为任务的唯一标识
        Client.TaskObject task = new Client.TaskObject();

        client.submitTask(url,task);

        firstUrl.createTask_queue(url,task.getTaskName());

        task.waitUntilDone();
    }


}
