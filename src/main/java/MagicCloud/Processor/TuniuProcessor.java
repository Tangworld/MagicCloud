package MagicCloud.Processor;

import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Request;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.processor.PageProcessor;

import java.util.List;

public class TuniuProcessor implements PageProcessor{

    private Site site = Site.me().setRetryTimes(3).setSleepTime(3000);

    public Site getSite() {
        return site;
    }



    public void process(Page page) {

        /*
         * 获取city的URL，并加入到待爬取队列中
         */
        List<String> cityUrls = page.getHtml().xpath("//a")
                .regex("http://www\\.tuniu\\.com/[^s]*/pkg-all-0/").all();
        //testing
        if(cityUrls!=null)
            System.out.println("测试！");


        for(String cityUrl : cityUrls){
            //System.out.println("cityUrl: "+cityUrl);
            page.putField("cityUrl: ",cityUrl);
            String pkg_info_from = page.getHtml().xpath("//div[@class='pkg_info_from']").toString();
            String pkg_info_to = page.getHtml().xpath("//div[@class='pkg_info_to']").toString();
            String pkg_info_start_date = page.getHtml().xpath("//div[@class='pkg_info_start_date']").toString();
            String pkg_info_end_date = page.getHtml().xpath("//div[@class='pkg_info_end_date']").toString();
            Request request = new Request(cityUrl)
                    .putExtra(pkg_info_from,"济南").putExtra(pkg_info_to,"香港")
                    .putExtra(pkg_info_start_date,"2015-10-27")
                    .putExtra(pkg_info_end_date,"2015-10-31");

            page.putField("pkg_info_from",pkg_info_from);
            page.addTargetRequest(request);
        }



    }


    /*
    *表单
     */

    public void tableForRequest(Page page){
        String pkg_info_from = page.getHtml().xpath("//div[@class='pkg_info_from']")
                .toString();
        String pkg_info_to = page.getHtml().xpath("//div[@class='pkg_info_to']").toString();
        String pkg_info_start_date = page.getHtml().xpath("//div[@class='pkg_info_start_date']").toString();
        String pkg_info_end_date = page.getHtml().xpath("//div[@class='pkg_info_end_date']").toString();

    }
}