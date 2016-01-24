package MagicCloud.Processor;

//import org.apache.commons.lang3.StringUtils;

import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Request;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.pipeline.FilePipeline;
import us.codecraft.webmagic.processor.PageProcessor;
import us.codecraft.webmagic.scheduler.PriorityScheduler;

import java.util.List;

import static us.codecraft.webmagic.selector.Selectors.xpath;

//import static us.codecraft.webmagic.selector.Selectors.regex;

/**
 * @author code4crafter@gmail.com
 */
public class answerSpider implements PageProcessor {

    private Site site = Site.me().setCharset("gb2312")
            .setSleepTime(100).addStartUrl("http://www.ip138.com/post/");

    //@Override
    public void process(Page page) {
        //这还真是深度优先啊
        if (page.getUrl().toString().equals("http://www.ip138.com/post/")) {
            System.out.println("进入第一层网页\n\n");
            processCountry(page);
        } else if (page.getUrl().regex("http://www\\.ip138\\.com/\\w+[/]?$")
                .toString() != null) { //都是绝对路径
            System.out.println("进入第二层网页\n\n");
            processProvince(page);
        } else {
            System.out.println("进入第三层网页\n\n");
            processDistrict(page);
        }

    }

    private void processCountry(Page page) {
        List<String> provinces = page.getHtml().
                xpath("//*[@id=\"newAlexa\"]/table/tbody/tr/td").all();
        for (String province : provinces) {
            String link = xpath("//@href").select(province);
            String title = xpath("/text()").select(province);
            if(link==null)
                continue;
            //System.out.println(title+": "+link+"\n\n");
            Request request = new Request(link).setPriority(0).
                    putExtra("province", title);
            page.addTargetRequest(request);
        }
    }

    private void processProvince(Page page) {
        //这里仅靠xpath没法精准定位，所以使用正则作为筛选，不符合正则的会被过滤掉
        List<String> districts = page.getHtml().
                xpath("//body/table[@class='t12']/tbody/tr/td").
                regex(".*http://www\\.ip138\\.com/\\w+/\\w+.*").all();
        for (String district : districts) {
            String link = xpath("//@href").select(district);
            String title = xpath("/text()").select(district);
            // System.out.println(title+": "+link+"\n\n");
            Request request = new Request(link).setPriority(1)
                    .putExtra("province", page.getRequest().getExtra("province"))
                    .putExtra("district", title);
            page.addTargetRequest(request);
        }

    }

    private void processDistrict(Page page) {

        String province = page.getRequest().getExtra("province").toString();
        String district = page.getRequest().getExtra("district").toString();

        String re0="<td>.*([\\u4e00-\\u9fa5]+).*</td>"; //匹配城市   海南省的比较奇怪
        String re1="<td><a href=\"http://www\\.ip138\\.com/[0-9]{6}/\">" +
                "([0-9]{6})</a></td>";//匹配邮编
        String re2="<td><a href=\"http://www\\.ip138\\.com/[0-9]{4}/\">" +
                "([0-9]{4})</a></td>";//匹配区号
        List<String> counties = page.getHtml().
                xpath("//body/table[@class='t12']/tbody/tr").regex(re0).all();
        List<String> youbians = page.getHtml().
                xpath("//body/table[@class='t12']/tbody/tr").regex(re1).all();
        List<String> quhaos = page.getHtml().
                xpath("//body/table[@class='t12']/tbody/tr").regex(re2).all();

        int i=counties.size();
        for(int j=0;j<i;j++){
            System.out.println(province+" "+district+" "+counties.get(j)+
                    " 邮编："+youbians.get(j)+" 区号："+quhaos.get(j));
        }
        
        /*
        int i=counties.size();
        for(int j=0;j<i;j++){
            page.putField("province", province);
            page.putField("district",district);
            page.putField("counties",counties.get(j));
            page.putField("youbians",youbians.get(j));
            page.putField("quhaos",quhaos.get(j));
          */
    }




    //@Override
    public Site getSite() {
        return site;
    }

    public static void main(String[] args) {
        FilePipeline fp=new FilePipeline("c:\\data.txt");
        Spider.create(new answerSpider()).scheduler(new PriorityScheduler())
                .pipeline(fp).run();

    }
}