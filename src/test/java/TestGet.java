import org.junit.Test;
import service.HbaseService;

/**
 * Created by hadoop on 15-12-17.
 */
public class TestGet {
    private HbaseService service;
    @Test
    public void test() throws Exception {
        service.get("priceforcity","title");
    }


}
