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

    public StartSpider(String startUrl,String taskName,String host){

        this.startUrl = startUrl;

        this.taskName = taskName;

        this.host = host;

    }

    public void start(){


        Spider.create(new RulesProcessor(taskName,host)).addUrl(startUrl)
                .run();

//        Spider spiderForName = new Spider()
//        Spider.create(new SearchProcessor(taskName, host)).setUUID(taskName)
//                .setScheduler(new RedisScheduler("127.0.0.1"))
//                .addPipeline(new JsonFilePipeline("/home/sl/PageData/tuniu"))
//                .addUrl(startUrl)
//                .addUrl("http://www.tuniu.com/search_complex/whole-nj-0-成都/")
//                .run();
    }



}
