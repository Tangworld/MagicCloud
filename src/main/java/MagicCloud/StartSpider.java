package MagicCloud;

import MagicCloud.Processor.RulesProcessor;
import MagicCloud.Processor.SearchProcessor;
import us.codecraft.webmagic.pipeline.JsonFilePipeline;
import us.codecraft.webmagic.scheduler.RedisScheduler;

/**
 * Created by sl on 16-1-16.
 */
public class StartSpider {

    private String startUrl;

    private String taskName;

    private String host;

    public StartSpider(String taskName,String host){

//        this.startUrl = startUrl;

        this.taskName = taskName;

        this.host = host;

    }

    public void start(){


//        Spider.create(new RulesProcessor(taskName,host)).addUrl(startUrl)
//                .run();
        System.out.println("任务执行。。。"+taskName);

    }



}
