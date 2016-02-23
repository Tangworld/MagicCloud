import org.junit.Test;
import utils.Help;

/**
 * Created by hadoop on 15-12-22.
 */
public class TestEffi {
    @Test
    public void Insert() throws Exception {
        for(int i=0;i<10000000;i++){
            Help.put("test","test","base","test"+i,i+"");
        }
    }
//    跑到第5232条数据时崩溃
}
