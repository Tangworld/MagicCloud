package service;

import dao.MysqlRegistDao;
import domain.User;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

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
    public static List<User> getAll() throws SQLException {
        List<User> users = dao.getAll();
        return users;
    }
    public static void delete(String name){
        dao.delete(name);
    }
}
