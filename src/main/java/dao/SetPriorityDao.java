package dao;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import domain.User;
import utils.JDBCHelp;

import java.sql.SQLException;

/**
 * Created by hadoop on 16-2-24.
 */
public class SetPriorityDao {
    public static void update(User user){
        Connection conn = JDBCHelp.getConn();
        String sql = "update users set priority='" + "1" + "' where username='" + user.getUsername() + "'";
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

}
