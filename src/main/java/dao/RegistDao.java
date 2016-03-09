package dao;

import com.google.common.annotations.VisibleForTesting;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.hbase.HBaseConfiguration;
import org.apache.hadoop.hbase.HColumnDescriptor;
import org.apache.hadoop.hbase.HTableDescriptor;
import org.apache.hadoop.hbase.KeyValue;
import org.apache.hadoop.hbase.client.*;
import org.apache.hadoop.hbase.util.Bytes;

import java.io.IOException;

/**
 * Created by hadoop on 15-12-21.
 */
public class RegistDao {
    public static Configuration cfg;

    //静态代码块，初始化信息
    static {
        cfg = HBaseConfiguration.create();
        cfg.set("hbase.zookeeper.property.clientPort", "2181");
        cfg.set("hbase.zookeeper.quorum", "127.0.1.1");
        cfg.set("hbase.master", "127.0.1.1:60010");
    }


    //建表
    public static void create(String tablename, String columnFamily) throws Exception {
        HBaseAdmin admin = new HBaseAdmin(cfg);
        if (admin.tableExists(tablename)) {
            System.out.println("table exists!");
            System.exit(0);
        } else {
            HTableDescriptor tableDesc = new HTableDescriptor(tablename);
            tableDesc.addFamily(new HColumnDescriptor(columnFamily));
            admin.createTable(tableDesc);
            System.out.println("create table success!");
        }
    }

    //存数据
    public static void put(String tablename, String row, String columnFamily, String column, String data) throws Exception {
//        HTable table = new HTable(cfg, tablename);
        HConnection connection = HConnectionManager.createConnection(cfg);
        HTableInterface table = connection.getTable(tablename);
        Put p1 = new Put(Bytes.toBytes(row));
        p1.add(Bytes.toBytes(columnFamily), Bytes.toBytes(column), Bytes.toBytes(data));
        table.put(p1);
        System.out.println("put '" + row + "', '" + columnFamily + ":" + column + "', '" + data + "'");
        table.close();
        connection.close();
    }

    //从数据库表中取数据
    public static String get(String tablename, String row) throws Exception {
//        HTable table = new HTable(cfg, tablename);

        HConnection connection = HConnectionManager.createConnection(cfg);
        HTableInterface table = connection.getTable(tablename);
        Get get = new Get(Bytes.toBytes(row)); // ????
        // Get get=new Get(Bytes.toString(row));
        Result result = table.get(get); // /?????
        String value = "";
        for (KeyValue rowKV : result.raw()) {   //KeyValue?????
            System.out.println("行名:" + new String(rowKV.getRow()) + " ");
            System.out.println("时间戳:" + rowKV.getTimestamp() + " ");
            System.out.println("列族名:" + new String(rowKV.getFamily()) + " ");
            System.out.println("列名:" + new String(rowKV.getQualifier()) + " ");
            value = new String(rowKV.getValue());
            System.out.println("值:" + result);
        }
        table.close();
        connection.close();
        return value;
    }

    public static void scan(String tablename) throws Exception {
//        HTable table = new HTable(cfg, tablename);
        HConnection connection = HConnectionManager.createConnection(cfg);
        HTableInterface table = connection.getTable(tablename);
        Scan s = new Scan();
        ResultScanner rs = table.getScanner(s);
        for (Result r : rs) {    //Result代表一行的"集合“
            for (KeyValue rowKV : r.raw()) {   //KeyValue?????
                System.out.println("行名:" + new String(rowKV.getRow()) + " ");
                System.out.println("时间戳:" + rowKV.getTimestamp() + " ");
                System.out.println("列族名:" + new String(rowKV.getFamily()) + " ");
                System.out.println("列名:" + new String(rowKV.getQualifier()) + " ");
                System.out.println("值:" + new String(rowKV.getValue()));
            }
//			System.out.println("Scan: " + r);
        }
        table.close();
        connection.close();
    }

    //将结果打印在控制台中

    public static boolean delete(String tablename) throws IOException {
        HBaseAdmin admin = new HBaseAdmin(cfg);
        if (admin.tableExists(tablename)) {
            try {
                admin.disableTable(tablename);
                admin.deleteTable(tablename);
            } catch (Exception e) {
                // TODO: handle exception
                e.printStackTrace();
                return false;
            }
        }
        return true;
    }

}