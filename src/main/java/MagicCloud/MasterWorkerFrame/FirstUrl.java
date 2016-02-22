package MagicCloud.MasterWorkerFrame;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

import java.lang.NullPointerException;import java.lang.String;import java.lang.System;import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/**
 * Created by sl on 15-12-29.
 */
public class FirstUrl {

    private String firstUrl;

    private JedisPool pool;

    public FirstUrl(String host){
        pool = new JedisPool(new JedisPoolConfig(),host);
    }



    /**
    *从Redis中获取全部首地址url
     */
    public List<String> getFirstURLs(){
        List<String> firstUrls = new ArrayList<String>();

        Jedis jedis = pool.getResource();

        while(jedis.llen("firstUrl_list") != 0){

            firstUrl = jedis.lpop("firstUrl_list");

            try{
                firstUrls.add(firstUrls.size(),firstUrl);
            }catch (NullPointerException e){
                System.out.println("空指针异常！！！");
                System.out.println(firstUrl);
            }

        }

        for(String url : firstUrls){
            jedis.rpush("firstUrl_list",url);
        }

        pool.returnResource(jedis);
        return firstUrls;
    }


    /**
     * 添加url进firstUrl_list
     */
    public boolean addFirstUrl(String newUrl){
        Jedis jedis = pool.getResource();

        if(!this.existUrl(newUrl)){
            jedis.lpush("firstUrl_list", newUrl);
//            System.out.println("add IN");
            pool.returnResource(jedis);
            return true;
        }else{
            pool.returnResource(jedis);
            return false;
        }


    }


    /**
     * 删除某个url
     */
    public boolean deleteFirstUrl(String outUrl){
        Jedis jedis = pool.getResource();

        if(this.existUrl(outUrl)){
            jedis.lrem("firstUrl_list",1,outUrl);
//            System.out.println("ininininin");
            pool.returnResource(jedis);
            return true;
        }

        pool.returnResource(jedis);
        return false;
    }

    /**
     *判断url是否存在
     */
    public boolean existUrl(String url){
        Jedis jedis = pool.getResource();
        Long len = jedis.llen("firstUrl_list");

        while (len!=0){
            len = len-1;

            String urlInList = jedis.rpoplpush("firstUrl_list","firstUrl_list");
            if(url.equals(urlInList)){
                return true;
            }
        }

        return false;
    }


    /**
     *Client提交任务时，在redis中创建taskx_queue，并添加对应的首地址
     */
    public void createTask_queue(String url,String taskName){
        Jedis jedis = pool.getResource();
        String queueName = taskName + "_queue";
        jedis.lpush(queueName,url);

        pool.returnResource(jedis);

    }


    public static void main(String args[]){
        FirstUrl firstUrl = new FirstUrl("localhost");
        List<String> list = firstUrl.getFirstURLs();
        System.out.println("获取：");
        for(String url : list){
            System.out.println(url);
        }

        Scanner input = new Scanner(System.in);
        String ss = input.next();
        if(!firstUrl.addFirstUrl(ss)){
            System.out.println("bucunzai");
        }

        list = firstUrl.getFirstURLs();
        System.out.println("获取：");
        for(String url : list){
            System.out.println(url);
        }

        ss = input.next();
        if(!firstUrl.deleteFirstUrl(ss)){
            System.out.println("bucunzai");
        }

        list = firstUrl.getFirstURLs();
        System.out.println("获取：");
        for(String url : list){
            System.out.println(url);
        }





    }


}
