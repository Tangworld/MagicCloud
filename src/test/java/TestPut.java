import org.junit.Test;
import service.HbaseService;

/**
 * Created by hadoop on 15-12-18.
 */
public class TestPut {
    @Test
    public void put() throws Exception {
        HbaseService.put("priceforcity","url","base","price","www.tuniu.com");
    }
}
