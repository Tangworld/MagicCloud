package MagicCloud.Processor;

import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.processor.PageProcessor;

import java.util.List;

/**
 * Created by hadoop on 15-11-24.
 */
public class SearchProcessor implements PageProcessor {

    private Site site = Site.me().setRetryTimes(3).setSleepTime(3000)
            .setTimeOut(3000);

    public Site getSite() {
        return site;
    }







    public void process(Page page) {


        System.out.println("entry pageProcessor!");

        System.out.println(page.getUrl().toString());


        if(page.getUrl().toString().equals("http://s.tuniu.com/search_complex/whole-bj-0-成都/")){
//            List<String> urlLists = page.getHtml().links().regex("http://bj\\.tuniu\\.com/tours/[^\\s]*").all();
            List<String> urlLists = page.getHtml().links().regex("http://bj\\.tuniu\\.com/tours/[^[0-9]+$]*").all();
            System.out.println(urlLists.size());

//            for(String url : urlLists){
//                page.addTargetRequest(url);
//                System.out.println("url: "+url);
              //  break;
//            }

//            page.addTargetRequest("http://bj.tuniu.com/tours/210000193");
            page.addTargetRequest("http://bj.tuniu.com/tours/210000197");
//            page.addTargetRequest("http://bj.tuniu.com/tours/210000199");
//            page.addTargetRequest("http://bj.tuniu.com/tours/210000265");
//            page.addTargetRequest("http://bj.tuniu.com/tours/210000189");
//            page.addTargetRequest("http://bj.tuniu.com/tours/210000650");
//            page.addTargetRequest("http://bj.tuniu.com/tours/210000198");



            page.addTargetRequests(urlLists);
        }else{
           // System.out.println("");
         //   page.putField("start_city", "北京");
          //  page.putField("end_city","成都");
//            page.putField("title",page.getHtml().xpath("//div[@class='top_tit']/h1").all());
         //   page.putField("price", page.getHtml().xpath("//span[@class='cx_price']/em").all());
           // page.setSkip(true);

            System.out.println("else running...");

        }


//        page.putField("url",page.getHtml().links().regex("http://[^\\s]*\\.tuniu\\.com/tours/[^\\s]*").all());


    }


}
