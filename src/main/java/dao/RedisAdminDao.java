package dao;

import MagicCloud.MasterWorkerFrame.FirstUrl;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by sl on 16-2-22.
 */
public class RedisAdminDao {

    static FirstUrl firstUrl = new FirstUrl("127.0.0.1");

    /**
     * 查询
     */
    public static List<String> Query(){
        List<String> result ;

        result = firstUrl.getFirstURLs();

        return result;
    }

    /**
     * 删除
     */
    public static void Delete(String outUrl){
        firstUrl.deleteFirstUrl(outUrl);
    }

    /**
     * 增加
     */
    public static void AddUrl(String newUrl){
        firstUrl.addFirstUrl(newUrl);
    }
}
