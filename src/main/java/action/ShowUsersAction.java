package action;

import com.opensymphony.xwork2.ActionSupport;
import domain.User;
import service.MysqlRegistService;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by hadoop on 16-2-24.
 */
public class ShowUsersAction extends ActionSupport {
    private List<User> users = new ArrayList<User>();

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    public String show() {
        try {
            users = MysqlRegistService.getAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }
}
