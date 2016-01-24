package hello;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.HbaseService;

import javax.servlet.http.HttpServletRequest;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by hadoop on 15-12-17.
 */
public class HelloAction extends ActionSupport {
    //    private String message;
    private HbaseService service;
    HttpServletRequest request = ServletActionContext.getRequest();

    public String hello() throws Exception {

        List<String> values = HbaseService.get("priceforcity", "title");
        request.setAttribute("hello", values);


//            message = "hello world!";
//            message = service.get("priceforcity","title");
        System.out.println("HelloAction is visited!");
        return SUCCESS;
    }
}

