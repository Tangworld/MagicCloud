package service;

import dao.MysqlRegistDao;
import domain.User;

import java.sql.ResultSet;

/**
 * Created by hadoop on 16-1-6.
 */
public class MysqlRegistService {
    private static MysqlRegistDao dao;
    public static void insert(User user){
        dao.insert(user);
    }
    public static void  update(User user,String sql){
        dao.update(user,sql);
    }
    public static ResultSet getAll(){
        ResultSet rs = dao.getAll();
        return rs;
    }
    public static void delete(String name){
        dao.delete(name);
    }
}
