package dao;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import domain.User;
import utils.JDBCHelp;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by hadoop on 16-2-25.
 */
public class SearchPersonDao {
    public static User FindUserByName(String username){
        Connection conn = JDBCHelp.getConn();
        String sql = "select * from users where username='" + username + "'";
        PreparedStatement pstmt;
        try{
            pstmt = (PreparedStatement) conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            if(rs.next()){
                User user = new User();
                user.setUsername(username);
                System.out.println(rs.getString("telephone"));
                System.out.println(rs.getString("email"));
                user.setTelephone(rs.getString("telephone"));
                user.setEmail(rs.getString("email"));
                if(rs.getString("priority").equals("0")){
                    user.setPriority("普通用户");
                }else{
                    user.setPriority("管理员");
                }
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
