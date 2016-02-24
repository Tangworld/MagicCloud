package action;

import com.opensymphony.xwork2.ActionSupport;
import service.RedisAdminService;

/**
 * Created by hadoop on 16-2-23.
 */
public class RedisAdminAddAction extends ActionSupport{
    private String name;

    private String url;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
    public void Delete(String outNameUrl){
        RedisAdminService.Delete(outNameUrl);
    }

    public void AddUrl(String newNameUrl){
        RedisAdminService.AddUrl(newNameUrl);
    }
    public String add(){
        if((!this.getName().equals(""))&&(!this.getUrl().equals(""))){
            String data=this.getName()+"$"+this.getUrl();
            this.AddUrl(data);
        }
        return SUCCESS;
    }
}
