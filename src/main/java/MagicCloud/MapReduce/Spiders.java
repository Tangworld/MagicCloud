package MagicCloud.MapReduce;

import MagicCloud.MapReduce.Pipeline.Pipeline;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;
import us.codecraft.webmagic.downloader.Downloader;
import us.codecraft.webmagic.downloader.HttpClientDownloader;


/**
 * Created by zqh on 15-12-5.
 */
public class Spiders {


    private static int urlID;//通过自曾控制每个url的ID唯一

    private JedisPool pool;
    private static final String QUEUE_PREFIX = "queue_";
    private  static final String SET_PREFIX = "set_";


    /**
     * 设置redis的host
     * @param host
     */
    public void setPool(String host){
        pool = new JedisPool(new JedisPoolConfig(),host);
    }


    /**
     * 添加第一个url
     * @param url
     */
    public void addFirstUrl(String url){
        Jedis jedis = pool.getResource();

        jedis.rpush(QUEUE_PREFIX+urlID,url);
        jedis.zadd(SET_PREFIX+urlID++,System.currentTimeMillis(),url);
    }


    Downloader downloader = new HttpClientDownloader();
    Pipeline pipeline = new Pipeline();


    /**
     * run()
     */
    public void run(){

        Jedis jedis = pool.getResource();

      //  while (jedis.lpop(QUEUE_PREFIX))

    }

}
