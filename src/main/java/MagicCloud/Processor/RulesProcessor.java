package MagicCloud.Processor;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.processor.PageProcessor;
import us.codecraft.webmagic.selector.Html;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class RulesProcessor implements PageProcessor{

    private String redisFormName="rule_";

    private JedisPool pool;

    private List<String> rules = new ArrayList<String>();

    public RulesProcessor(String redisFormName,String host){
        this.redisFormName += redisFormName;
        pool = new JedisPool(new JedisPoolConfig(),host);
    }


    private Site site = Site.me().setRetryTimes(3).setSleepTime(3000);

    public Site getSite() {
        return site;
    }



    public void process(Page page) {

        /*
        规则生成
         */
        produceRule(page);

        Jedis jedis = pool.getResource();

        for(String rule:rules){
            jedis.lpush(redisFormName,rule);
        }

        pool.returnResource(jedis);

    }



    private void produceRule(Page page){

        //        1、传入page，该page即为首页信息

        Set<String> second = new HashSet<String>();
        Set<String> third = new HashSet<String>();
        Set<String> realsecond = new HashSet<String>();
        Set<String> realthird = new HashSet<String>();

        List<String> realurls = new ArrayList<String>();

//          2、爬取当前页面符合条件的全部链接

//        Html html = page.getHtml();
        String name = page.getUrl().toString();
        String prefix = name.substring(name.indexOf(".") + 1);//tuniu.com

//        List<String> as = html.xpath("//a/@href").all();//共547个页面，包括了主页中的所有超链接（以途牛为例）

        List<String> as = page.getHtml().links().all();

        System.out.println("首页包含url的个数： "+as.size());

        for (String s : as) {                       //筛选，认为和主页有关的链接才留下
            if (s.contains("http")) {
                if (s.contains(prefix)) {
                    realurls.add(s);
                }
            }
        }

        System.out.println("realurl的个数： "+realurls.size());


        int cnt = realurls.size();
        for (int i = 0; i < cnt; i++) {                             //手动去重
            for (int j = i + 1; j < cnt; j++) {
                if (realurls.get(i).equals(realurls.get(j))) {
                    realurls.remove(j);
                    cnt--;
                    j--;
                }
            }
        }


        //zqh
        int zqhcnt=0;
        for(String zqhurl:as){
            if(zqhurl.contains("drive")){
                zqhcnt++;
                System.out.println("ZQH dive:  "+zqhurl);
            }
        }
        System.out.println("zqhcnt:  "+zqhcnt);




//        System.out.println("1111111111111111111111111111111111111111111111111111");
        for (String s : realurls) {                                 //切割获取url树的节点
//            System.out.println(getIndex(s,"/",4));
            if (getIndex(s, "/", 4) != -1) {
                second.add(s.substring(0, getIndex(s, "/", 4) + 1));
            }
//            System.out.println(getIndex(s,"/",5));
            if (getIndex(s, "/", 5) != -1) {
                third.add(s.substring(0, getIndex(s, "/", 5) + 1));
            }
//            System.out.println(s);
        }


        for (String s : second) {                       //去掉所有只有一个子节点的节点
            int c = 0;
            for (String s2 : realurls) {
                if (s2.contains(s)) c++;
                if (c >= 5) break;
            }
            if (c >= 5) {
                realsecond.add(s);
            }
        }

        for (String s : third) {
            int c = 0;
            for (String s2 : realurls) {
                if (s2.contains(s)) c++;
                if (c >= 5) break;
            }
            if (c >= 5) {
                realthird.add(s);
            }
        }

//        3、计算匹配规则
//        计算发现realsecond有20个元素，而realthird为0，因此可以认为匹配规则是realsecond（以tuniu.com为例）
        for(String s:realsecond){
            rules.add(s);
        }
        for(String s:realthird){
            rules.add(s);
        }
        int sum = realsecond.size() + realthird.size();
        System.out.println("在RuleProcessor中：");
        System.out.println("匹配规则(共" + sum + "个）");
        for (String s : rules) {
            System.out.println(s);
        }


//        4、使用计算出的匹配规则进行页面爬取





    }

    private int getIndex(String s, String target, int th) {//获取字符串s中第th个target的位置，若存在返回位置，否则返回-1
        if (!s.contains(target)) return -1;
        int index = 0;
        int count = 0;
        for (int i = 0; i < s.length(); i++) {
            if (target.equals(s.charAt(i) + "")) {
                count++;
                index = i;
                if (count == th) break;
            }
        }
        if (count == th) return index;
        else return -1;
    }



}