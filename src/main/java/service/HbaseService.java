package service;

import dao.HbaseDao;

import java.io.IOException;
import java.util.List;

/**
 * Created by hadoop on 15-12-17.
 */
public class HbaseService {
    private static HbaseDao dao;
    public static void create(String tablename, String columnFamily) throws Exception {
        dao.create(tablename,columnFamily);
    }


    public static void put(String tablename, String row, String columnFamily, String column, String data) throws Exception {
        dao.put(tablename,row,columnFamily,column,data);
    }

    public static List<String> get(String tablename, String row) throws Exception {
        return dao.get(tablename,row);
    }

    public static void scan(String tablename) throws Exception {
        dao.scan(tablename);
    }

    public static boolean delete(String tablename) throws IOException {
        return dao.delete(tablename);
    }
}
