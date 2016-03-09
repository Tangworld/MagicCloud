package MagicCloud.Scheduler;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;
import us.codecraft.webmagic.Request;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.scheduler.Scheduler;

/**
 * Created by zqh on 15-11-25.
 */
public class RedisScheduler implements Scheduler {

    private JedisPool pool;

    private static final String QUEUE_PREFIX = "queue_";

    private  static final String SET_PREFIX = "set_";

    public RedisScheduler(String host){
        pool = new JedisPool(new JedisPoolConfig(),host);
    }



    public void push(Request request, Task task) {

        Jedis jedis = pool.getResource();
        //使用SortedSet进行url去重
        if(jedis.zrank(SET_PREFIX + task.getUUID(),request.getUrl())==null){
            //使用List保存队列
            jedis.rpush(QUEUE_PREFIX + task.getUUID(),request.getUrl());

            System.out.println("push: "+request.getUrl());

            jedis.zadd(SET_PREFIX + task.getUUID(), System.currentTimeMillis(), request.getUrl());
        }else{
            System.out.println("in but not push    "+request.getUrl());
        }

        pool.returnResource(jedis);

    }


    public Request poll(Task task) {
        Jedis jedis = pool.getResource();

        //zqh：从队列中取出
        String url = jedis.lpop(QUEUE_PREFIX + task.getUUID());

        System.out.println("pull: "+url);

        if (url==null) {
            return null;
        }
        pool.returnResource(jedis);
       return new Request(url);
    }
}
