package service;

import dao.MysqlLoginDao;

/**
 * Created by hadoop on 16-1-7.
 */
public class MysqlLoginService {
    static MysqlLoginDao dao;
    public static String queryone(String username){
      return dao.queryone(username);
    }
}
