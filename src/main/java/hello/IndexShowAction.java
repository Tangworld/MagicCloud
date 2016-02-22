package hello;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import utils.JDBCHelp;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by hadoop on 16-1-24.
 */
public class IndexShowAction extends ActionSupport{
    public String getinfo(){
        Connection conn = JDBCHelp.getConn();
        String sql = "select * from target WHERE id=1";
        PreparedStatement pstmt;
        try {
            pstmt = (PreparedStatement)conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            int col = rs.getMetaData().getColumnCount();
            System.out.println("============================");
            while (rs.next()) {
                ServletActionContext.getRequest().getSession().setAttribute("imagename1",rs.getString("imagename"));
                ServletActionContext.getRequest().getSession().setAttribute("productname1",rs.getString("productname"));
                ServletActionContext.getRequest().getSession().setAttribute("price1",rs.getString("price"));
                ServletActionContext.getRequest().getSession().setAttribute("url1",rs.getString("url"));



//                for (int i = 1; i <= col; i++) {
//                    System.out.print(rs.getString(i) + "\t");
//                    if ((i == 2) && (rs.getString(i).length() < 8)) {
//                        System.out.print("\t");
//                    }
//                }
//                System.out.println("");
            }
            System.out.println("============================");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }
}
