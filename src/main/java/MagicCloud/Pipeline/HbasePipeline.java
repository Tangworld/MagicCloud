package MagicCloud.Pipeline;


import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.hbase.HBaseConfiguration;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;
import utils.Help;

import java.util.Map;

/**
 * Created by zqh on 15-12-10.
 */

public class HbasePipeline implements Pipeline {
    static Configuration cfg = HBaseConfiguration.create();
    public void process(ResultItems resultItems, Task task) {
        try {
            for (Map.Entry<String, Object> entry : resultItems.getAll().entrySet()){

                    Help.put("test", "html", "page", entry.getValue().hashCode()+"", entry.getValue().toString());
                    System.out.println("Insert succeded!");
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
//        for (Map.Entry<String, Object> entry : resultItems.getAll().entrySet()){
//                    System.out.println("Insert succeded!");
//            }
    }
}
