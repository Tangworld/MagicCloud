package MagicCloud.Processor;

import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Request;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.processor.PageProcessor;

/**
 * Created by sl on 15-10-25.
 */
public class DiyProcessor implements PageProcessor {

    public void process(Page page) {

        String cityUrl ;
        int count=0;
        cityUrl = "http://diy.tuniu.com/pkg";

        page.putField("cityUrl: ",cityUrl);

            Request request = new Request(cityUrl);
                  /*  .putExtra("r", "dynamic/GetPkg")
                    .putExtra("primary[isSingleTrip]", "0")
                    .putExtra("primary[departureCityCode]", "3402")
                    .putExtra("primary[departureCityName]", "杭州")
                    .putExtra("primary[destinationCityCodes]","3302")
                    .putExtra("primary[destinationCityName]","昆明")
                    .putExtra("primary[departsDate]","2015-10-27")
                    .putExtra("primary[destinationData]","2015-10-31")
                    .putExtra("primary[adultNum]","2")
                    .putExtra("primary[childNum]","0")
                    .putExtra("primary[hotel][0][cityCode]","3302")
                    .putExtra("primary[hotel][0][cityName]","昆明")
                    .putExtra("primary[hotel][0][departsDateBegin]","2015-10-27")
                    .putExtra("primary[hotel][0][departsDateEnd]", "2015-10-31")
                    .putExtra("_","1445778759848");
            request.setMethod("GET");*/
            page.addTargetRequest(request);
        count=1;

        if(count==1)
            page.putField("testtest:",page.getHtml());
    }

    private Site site = Site.me().setRetryTimes(3).setSleepTime(3000);

    public Site getSite() {
        return site;
    }
}
