package dao;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import domain.User;
import utils.JDBCHelp;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by hadoop on 16-1-6.
 */
public class MysqlRegistDao {
    public static void insert(User user) {
        Connection conn = JDBCHelp.getConn();
        String sql = "insert into users (username,password,telephone,email) values(?,?,?,?)";
        PreparedStatement pstmt;
        try {
            pstmt = (PreparedStatement) conn.prepareStatement(sql);
            pstmt.setString(1, user.getUsername());
            pstmt.setString(2, user.getPassword());
            pstmt.setString(3, user.getTelephone());
            pstmt.setString(4, user.getEmail());
            pstmt.executeUpdate();
            pstmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void update(User user, String sql) {
        Connection conn = JDBCHelp.getConn();
        PreparedStatement pstmt;
        try {
            pstmt = (PreparedStatement) conn.prepareStatement(sql);
            pstmt.executeUpdate();
//            System.out.println("resutl: " + i);
            pstmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static List<User> getAll() throws SQLException {
        List<User> users = new ArrayList<User>();
        Connection conn = JDBCHelp.getConn();
        String sql = "select * from users";
        PreparedStatement pstmt;
        pstmt = (PreparedStatement) conn.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery();
        int col = rs.getMetaData().getColumnCount();
        System.out.println("============================");
        System.out.println(col);
        while (rs.next()) {
            User user = new User();
            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("password"));
            user.setTelephone(rs.getString("telephone"));
            user.setEmail(rs.getString("email"));
            if(rs.getString("priority").equals("0")){
                user.setPriority("普通用户");
            }else{
                user.setPriority("管理员");
            }

            users.add(user);
            for (int i = 2; i <= col; i++) {
                System.out.print(rs.getString(i) + "\t");
                if ((i == 2) && (rs.getString(i).length() < 8)) {
                    System.out.print("\t");
                }
            }
            System.out.println("");
        }
        System.out.println("============================");
        return users;

        //return rs;
    }

    public static void delete(String name) {
        Connection conn = JDBCHelp.getConn();
        String sql = "delete from users where username='" + name + "'";
        PreparedStatement pstmt;
        try {
            pstmt = (PreparedStatement) conn.prepareStatement(sql);
            pstmt.executeUpdate();
            pstmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
