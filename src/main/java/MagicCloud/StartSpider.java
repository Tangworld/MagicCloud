package MagicCloud;

import MagicCloud.Pipeline.HbasePipeline;
import MagicCloud.Processor.RulesProcessor;
import MagicCloud.Processor.SearchProcessor;
import MagicCloud.Processor.TuniuProcessor;
import us.codecraft.webmagic.pipeline.JsonFilePipeline;
import us.codecraft.webmagic.scheduler.RedisScheduler;

/**
 * Created by sl on 16-1-16.
 */
public class StartSpider {

    private static String startUrl;

    private static String taskName;

    private static String host;

    public StartSpider(String taskName,String host){

//        this.startUrl = startUrl;

        this.taskName = taskName;

        this.host = host;

    }

    public static void start(){


        Spider.create(new SearchProcessor()).addUrl("www.tuniu.com")
//                .addPipeline(new HbasePipeline())
                .run();
        System.out.println("任务执行。。。"+taskName);

    }

    public static void main(String args[]){
        start();
    }




}
