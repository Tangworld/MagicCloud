package utils;

import org.junit.Test;
import service.HbaseService;

/**
 * Created by hadoop on 15-12-18.
 */
public class CreateData {
    @Test
    public void create() throws Exception {
        for(int i=0;i<10;i++)
        {
            HbaseService.put("priceforcity","北京_成都","base",Math.random()+"","lalalalalala");
        }
    }

    //产生模拟数据：行键为城市名字，列名是数据的哈希码，数据为
//    网站+产品名称+价格的字符串拼接结果
    @Test
    public void createFormatData() throws Exception {

        String data;
        for(int i=0;i<10;i++) {
            data = "www.tuniu.com$"+"自助游$"+"123"+i+"";
            HbaseService.put("priceforcity","四川_成都","base",
                    data.hashCode()+"",data);
        }
        for(int i=0;i<10;i++){
            data = "www.ctrip.com$"+"自助游$"+"456"+i+"";
            HbaseService.put("priceforcity","北京_成都","base",
                    data.hashCode()+"",data);
        }
        for(int i=0;i<10;i++){
            data = "www.qunar.com$"+"自助游$"+"789"+i+"";
            HbaseService.put("priceforcity","南京_成都","base",
                    data.hashCode()+"",data);
        }
        for(int i=0;i<10;i++){
            data = "www.tuniu.com$"+"DIY$"+"123"+i+"";
            HbaseService.put("priceforcity","南京_北京","base",
                    data.hashCode()+"",data);
        }
        for(int i=0;i<10;i++){
            data = "www.ctrip.com$"+"老带新$"+"333"+i+"";
            HbaseService.put("priceforcity","南京_吉林","base",
                    data.hashCode()+"",data);
        }
    }
}
