package action;

import com.opensymphony.xwork2.ActionSupport;
import service.RedisAdminService;

/**
 * Created by hadoop on 16-2-23.
 */
public class RedisAdminDelAction extends ActionSupport {
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
    public String del(){
        String data=getName()+"$"+getUrl();
        Delete(data);
        return SUCCESS;
    }
}
