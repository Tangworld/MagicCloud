package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.HbaseService;
import service.LoginService;
import service.MysqlLoginService;

import javax.print.DocFlavor;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by hadoop on 15-12-20.
 */
public class LoginAction extends ActionSupport{


    private String username;
    private String password;
    private String rpassword;
    private MysqlLoginService service;
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    public String check(){
        try {
            if(this.username.isEmpty()||this.password.isEmpty()){
                ServletActionContext.getRequest().getSession().setAttribute("nul","用户名或密码不能为空！");
                return "wrong";
            }
            rpassword = service.queryone(this.username);
            if(!password.equals(rpassword)){
                if(rpassword.isEmpty())
                ServletActionContext.getRequest().getSession().setAttribute("nouser","不存在的用户！");
                else
                    ServletActionContext.getRequest().getSession().setAttribute("usererror","用户名或密码错误！");
                return "wrong";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        ServletActionContext.getRequest().getSession().setAttribute("login","欢迎您，"+username);
        return SUCCESS;
    }
}
