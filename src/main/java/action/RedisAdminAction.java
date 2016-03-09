package action;

import com.opensymphony.xwork2.ActionSupport;
import domain.RedisAdmin;
import service.RedisAdminService;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by sl on 16-2-22.
 */
public class RedisAdminAction extends ActionSupport {

    private String name;

    private String url;

    private String nameUrl;

    private List<RedisAdmin> list=new ArrayList<RedisAdmin>();


    private RedisAdminService redisAdminService;

    public List<RedisAdmin> getList() {
        return list;
    }

    public void setList(List<RedisAdmin> list) {
        this.list = list;
    }

    public void Delete(String outNameUrl){
        redisAdminService.Delete(outNameUrl);
    }

    public void AddUrl(String newNameUrl){
        redisAdminService.AddUrl(newNameUrl);
    }

    public void Change(String oldUrl , String newUrl){
        oldUrl = this.getName()+"$"+oldUrl;
        newUrl = this.getName()+"$"+newUrl;
        this.Delete(oldUrl);
        this.AddUrl(newUrl);
    }

    public String Query(){
       // System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaa");
        List<String> NameUrls = redisAdminService.Query();
       // System.out.println(NameUrls.size());

        for(String nameUrl : NameUrls){

            RedisAdmin redisAdmin = new RedisAdmin();

            int index = nameUrl.indexOf('$');
            String newName = nameUrl.substring(0,index);
            redisAdmin.setName(newName);

            String newUrl = nameUrl.substring(index+1,nameUrl.length());
            redisAdmin.setUrl(newUrl);

            list.add(redisAdmin);

            this.setList(list);
           // System.out.println(nameUrl);


        }


        return SUCCESS;

    }


    public String getNameUrl(){
        return this.getName()+"$"+this.getUrl();
    }


    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
