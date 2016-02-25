package action;

import com.opensymphony.xwork2.ActionSupport;
import domain.User;
import service.SetPriorityService;

/**
 * Created by hadoop on 16-2-24.
 */
public class SetPriorityAction extends ActionSupport{
    private String username;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String update(){
        User user = new User();
        user.setUsername(username);
        SetPriorityService.update(user);
        return SUCCESS;
    }
}
