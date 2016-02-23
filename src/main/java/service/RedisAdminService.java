package service;

import dao.RedisAdminDao;

import java.util.List;

/**
 * Created by sl on 16-2-22.
 */
public class RedisAdminService {

    private static RedisAdminDao redisAdminDao;

    public static List<String> Query(){
        return redisAdminDao.Query();
    }

    public static void Delete(String outUrl){
        redisAdminDao.Delete(outUrl);
    }

    public static void AddUrl(String newUrl){
        redisAdminDao.AddUrl(newUrl);
    }



}
