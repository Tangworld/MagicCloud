package action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.HbaseService;

import javax.servlet.http.HttpServletRequest;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by hadoop on 15-12-18.
 */
public class ResultAction extends ActionSupport{
    private HbaseService service;
    private String scity;
    private String dcity;

    public String getDcity() {
        return dcity;
    }

    public void setDcity(String dcity) {
        this.dcity = dcity;
    }

    public String getScity() {
        return scity;
    }

    public void setScity(String scity) {
        this.scity = scity;
    }

    HttpServletRequest request = ServletActionContext.getRequest();
    public String show() throws Exception {
        List<String> result= service.get("priceforcity", scity + "_" + dcity);
        List<String> trans = new LinkedList<String>();
       // service.get("priceforcity",);
        for(String s:result){
            //String []temp = new String [3];
            String []temp = s.split("\\$");
//            System.out.println(temp[0]+"12432342452");
//            System.out.println(temp[1]+"#%#^$^$^$");
//            System.out.println(temp[2]+"22222222222");
            trans.add("网站： "+temp[0]+" 产品： "+temp[1]+" 价格： "+temp[2]);
        }
        request.setAttribute("city",scity+" 到 "+dcity);
        request.setAttribute("hello",trans);
        System.out.println(scity+"_"+dcity);
        return "show";
    }
}
