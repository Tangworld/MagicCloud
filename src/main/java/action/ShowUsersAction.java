package action;

import com.opensymphony.xwork2.ActionSupport;
import domain.User;
import service.MysqlRegistService;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by hadoop on 16-2-24.
 */
public class ShowUsersAction extends ActionSupport{
    private List<User> users=new ArrayList<User>();

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }
    public String show(){
        ResultSet rs = null;
        User user=new User();
        try {
            rs = MysqlRegistService.getAll();
            int col = rs.getMetaData().getColumnCount();
            while (rs.next()) {
                for (int i = 1; i <= col; i++) {
                    user.setUsername(rs.getString("username"));
                    user.setPassword(rs.getString("password"));
                    user.setTelephone(rs.getString("telephone"));
                    user.setEmail(rs.getString("email"));
                    users.add(user);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }
}
