package MagicCloud;

import MagicCloud.Pipeline.HbasePipeline;
import MagicCloud.Processor.SearchProcessor;
import MagicCloud.Scheduler.RedisScheduler;


//import MagicCloud.Spider;


/**
 * A Camel Application
 */
public class main {

    //haha
    /**
     * A main() so we can easily run these routing rules in our IDE
     */
    public static void main(String[] args) throws Exception {

        Spider.create(new SearchProcessor()).setScheduler(new RedisScheduler("localhost"))

                .addUrl("http://s.tuniu.com/search_complex/whole-bj-0-成都/")
//                .addUrl("http://www.tuniu.com")
               // .addUrl("http://s.tuniu.com/search_complex/whole-nj-0-成都/")
                  .addPipeline(new HbasePipeline())
                .run();

//        Spider.create(new TuniuProcessor()).setDownloader(new TuniuDownloader())
//                .addUrl("http://www.tuniu.com/pkg")
//                .addPipeline(new HbasePipeline())
//                .run();

//        Spider.create(new DiyProcessor()).addUrl("http://www.tuniu.com")
//                .addPipeline(new HbasePipeline())
//                .run();
    }

}

