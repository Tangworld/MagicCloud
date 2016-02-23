import action.RegistAction;
import domain.User;
import org.junit.Test;
import service.MysqlRegistService;
import service.RegistService;

/**
 * Created by hadoop on 16-1-6.
 */
public class TestMysql {
    @Test
    public void testLink(){
        User user = new User();
        user.setUsername("123");
        user.setPassword("123");
        user.setTelephone("18354653216");
        user.setEmail("123@qq.com");
        MysqlRegistService.insert(user);
    }

}
