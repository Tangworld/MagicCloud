package action;

import com.opensymphony.xwork2.ActionSupport;
import domain.User;
import org.apache.struts2.ServletActionContext;
import service.SearchPersonService;

/**
 * Created by hadoop on 16-2-25.
 */
public class SearchPersonAction extends ActionSupport{
    public String FindUserByName(){
//        String username = (String)ServletActionContext.getRequest().getSession().getAttribute("login");
        String username="zhangsan";
        User user = SearchPersonService.FindUserByName(username);
        System.out.println("action   "+user.getTelephone());
        System.out.println("action   "+user.getEmail());
        ServletActionContext.getRequest().getSession().setAttribute("personalname",user.getUsername());
        ServletActionContext.getRequest().getSession().setAttribute("personalphone",user.getTelephone());
        ServletActionContext.getRequest().getSession().setAttribute("personalemail",user.getEmail());
        ServletActionContext.getRequest().getSession().setAttribute("personalrole",user.getPriority());
        return SUCCESS;
    }
}
