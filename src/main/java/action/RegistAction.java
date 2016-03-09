package action;

import com.opensymphony.xwork2.ActionSupport;
import domain.User;
import org.apache.struts2.ServletActionContext;
import service.MysqlRegistService;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by hadoop on 15-12-21.
 */
public class RegistAction extends ActionSupport{
    private String registusername;
    private String registpassword;
    private String registsecondpassword;
    private String telephone;
    private String mail;

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    //    private RegistService service;
    private MysqlRegistService service;

    public String getRegistusername() {
        return registusername;
    }

    public void setRegistusername(String registusername) {
        this.registusername = registusername;
    }

    public String getRegistpassword() {
        return registpassword;
    }

    public void setRegistpassword(String registpassword) {
        this.registpassword = registpassword;
    }

    public String getRegistsecondpassword() {
        return registsecondpassword;
    }

    public void setRegistsecondpassword(String registsecondpassword) {
        this.registsecondpassword = registsecondpassword;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }
    public String regist() {
        if(this.registusername.isEmpty()||this.registpassword.isEmpty()
                ||this.registsecondpassword.isEmpty()||this.mail.isEmpty()){
            recover();
            ServletActionContext.getRequest().getSession().setAttribute("registnul","请将信息填写完整！");
            return "wrong";
        }
        else{
            if(!this.registpassword.equals(this.registsecondpassword)){
                ServletActionContext.getRequest().getSession().setAttribute("registwrongpassword","两次密码不一致！");
                recover();
                return "wrong";
            }
            String check = "^([a-z0-9A-Z]+[-|_|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
            Pattern regex = Pattern.compile(check);
            Matcher matcher = regex.matcher(this.mail);
            if(!matcher.matches()){
                ServletActionContext.getRequest().getSession().setAttribute("registmail","邮箱格式不正确！");
                recover();
                return "wrong";
            }
//            put(String tablename, String row, String columnFamily, String column, String data)
            try {
                User user = new User();
                user.setUsername(this.registusername);
                user.setPassword(this.registpassword);
                user.setTelephone(this.telephone);
                user.setEmail(this.mail);
                service.insert(user);
//                service.put("usertable",this.registusername,"users",this.registpassword.hashCode()+"",this.registpassword);
                ServletActionContext.getRequest().getSession().setAttribute("regist", this.registusername);
            } catch (Exception e) {
                e.printStackTrace();
            }
            return SUCCESS;
        }
    }
    public void recover(){
        ServletActionContext.getRequest().getSession().setAttribute("registusername",this.registusername);
        ServletActionContext.getRequest().getSession().setAttribute("registpassword",this.registpassword);
        ServletActionContext.getRequest().getSession().setAttribute("registsecondpassword",this.registsecondpassword);
        ServletActionContext.getRequest().getSession().setAttribute("mail",this.mail);
    }
}
