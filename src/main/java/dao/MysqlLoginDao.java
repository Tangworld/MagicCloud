package dao;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import utils.JDBCHelp;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by hadoop on 16-1-7.
 */
public class MysqlLoginDao {
    public static String queryone(String username){
        Connection conn = JDBCHelp.getConn();
        String sql = "select * from users where username='" + username + "'";
        PreparedStatement pstmt;
        try{
            pstmt = (PreparedStatement) conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            if(rs.next()){
                return rs.getString("password");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
