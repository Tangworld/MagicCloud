    var cityInit = ['请选择省份'];  
    var cityArr = new Array();    
    //cityArr[0] = new Array("北京","东城|西城|崇文|宣武|朝阳|丰台|石景山|海淀|门头沟|房山|通州|顺义|昌平|大兴|平谷|怀柔|密云|延庆");    
    //cityArr[1] = new Array("上海","黄浦|卢湾|徐汇|长宁|静安|普陀|闸北|虹口|杨浦|闵行|宝山|嘉定|浦东|金山|松江|青浦|南汇|奉贤|崇明");    
    //cityArr[2] = new Array("天津","和平|东丽|河东|西青|河西|津南|南开|北辰|河北|武清|红挢|塘沽|汉沽|大港|宁河|静海|宝坻|蓟县");    
    //cityArr[3] = new Array("重庆","万州|涪陵|渝中|大渡口|江北|沙坪坝|九龙坡|南岸|北碚|万盛|双挢|渝北|巴南|黔江|长寿|綦江|潼南|铜梁 |大足|荣昌|壁山|梁平|城口|丰都|垫江|武隆|忠县|开县|云阳|奉节|巫山|巫溪|石柱|秀山|酉阳|彭水|江津|合川|永川|南川");    
    cityArr[0] = new Array("北京","北京");  
    cityArr[1] = new Array("上海","上海");  
    cityArr[2] = new Array("天津","天津");  
    cityArr[3] = new Array("重庆","重庆");  
    cityArr[4] = new Array("河北","石家庄|邯郸|邢台|保定|张家口|承德|廊坊|唐山|秦皇岛|沧州|衡水");    
    cityArr[5] = new Array("山西","太原|大同|阳泉|长治|晋城|朔州|吕梁|忻州|晋中|临汾|运城");    
    cityArr[6] = new Array("陕西","西安|宝鸡|咸阳|铜川|渭南|延安|榆林|汉中|安康|商洛");     
    cityArr[7] = new Array("辽宁","沈阳|大连|鞍山|抚顺|本溪|丹东|锦州|营口|阜新|辽阳|盘锦|铁岭|朝阳|葫芦岛");    
    cityArr[8] = new Array("吉林","长春|吉林|四平|辽源|通化|白山|松原|白城|延边");    
    cityArr[9] = new Array("黑龙江","哈尔滨|齐齐哈尔|牡丹江|佳木斯|大庆|绥化|鹤岗|鸡西|黑河|双鸭山|伊春|七台河|大兴安岭");    
    cityArr[10] = new Array("江苏","南京|镇江|苏州|南通|扬州|盐城|徐州|连云港|常州|无锡|宿迁|泰州|淮安");    
    cityArr[11] = new Array("浙江","杭州|宁波|温州|嘉兴|湖州|绍兴|金华|衢州|舟山|台州|丽水");    
    cityArr[12] = new Array("安徽","合肥|芜湖|蚌埠|马鞍山|淮北|铜陵|安庆|黄山|滁州|宿州|池州|淮南|巢湖|阜阳|六安|宣城|亳州");    
    cityArr[13] = new Array("福建","福州|厦门|莆田|三明|泉州|漳州|南平|龙岩|宁德");    
    cityArr[14] = new Array("江西","南昌市|景德镇|九江|鹰潭|萍乡|新馀|赣州|吉安|宜春|抚州|上饶");    
    cityArr[15] = new Array("山东","济南|青岛|淄博|枣庄|东营|烟台|潍坊|济宁|泰安|威海|日照|莱芜|临沂|德州|聊城|滨州|菏泽");    
    cityArr[16] = new Array("河南","郑州|开封|洛阳|平顶山|安阳|鹤壁|新乡|焦作|濮阳|许昌|漯河|三门峡|南阳|商丘|信阳|周口|驻马店|济源");    
    cityArr[17] = new Array("湖北","武汉|宜昌|荆州|襄樊|黄石|荆门|黄冈|十堰|恩施|潜江|天门|仙桃|随州|咸宁|孝感|鄂州");   
    cityArr[18] = new Array("湖南","长沙|常德|株洲|湘潭|衡阳|岳阳|邵阳|益阳|娄底|怀化|郴州|永州|湘西|张家界");    
    cityArr[19] = new Array("广东","广州|深圳|珠海|汕头|东莞|中山|佛山|韶关|江门|湛江|茂名|肇庆|惠州|梅州|汕尾|河源|阳江|清远|潮州|揭阳|云浮");    
    cityArr[20] = new Array("广西","南宁|柳州|桂林|梧州|北海|防城港|钦州|贵港|玉林|南宁地区|柳州地区|贺州|百色|河池");    
    cityArr[21] = new Array("海南","海口|三亚");    
    cityArr[22] = new Array("四川","成都|绵阳|德阳|自贡|攀枝花|广元|内江|乐山|南充|宜宾|广安|达川|雅安|眉山|甘孜|凉山|泸州");    
    cityArr[23] = new Array("贵州","贵阳|六盘水|遵义|安顺|铜仁|黔西南|毕节|黔东南|黔南");    
    cityArr[24] = new Array("云南","昆明|大理|曲靖|玉溪|昭通|楚雄|红河|文山|思茅|西双版纳|保山|德宏|丽江|怒江|迪庆|临沧");   
    cityArr[25] = new Array("西藏","拉萨|日喀则|山南|林芝|昌都|阿里|那曲");    
    cityArr[26] = new Array("甘肃","兰州|嘉峪关|金昌|白银|天水|酒泉|张掖|武威|定西|陇南|平凉|庆阳|临夏|甘南");    
    cityArr[27] = new Array("宁夏","银川|石嘴山|吴忠|固原");    
    cityArr[28] = new Array("青海","西宁|海东|海南|海北|黄南|玉树|果洛|海西");    
    cityArr[29] = new Array("内蒙古","呼和浩特|包头|乌海|赤峰|呼伦贝尔盟|阿拉善盟|哲里木盟|兴安盟|乌兰察布盟|锡林郭勒盟|巴彦淖尔盟|伊克昭盟");   
    cityArr[30] = new Array("新疆","乌鲁木齐|石河子|克拉玛依|伊犁|巴音郭勒|昌吉|克孜勒苏柯尔克孜|博尔塔拉|吐鲁番|哈密|喀什|和田|阿克苏");    
    cityArr[31] = new Array("香港","香港");    
    cityArr[32] = new Array("澳门","澳门");    
    cityArr[33] = new Array("台湾","台北|高雄|台中|台南|屏东|南投|云林|新竹|彰化|苗栗|嘉义|花莲|桃园|宜兰|基隆|台东|金门|马祖|澎湖");   
          
    var Search = function(){  
        return {  
          
            initArea : function(){  //??
              
                var provinceLen = cityArr.length;//共多少个省市自治区  
                var areaArr = [];  
                var provinceArr = [];  
                areaArr.push('<div class="sw-ui-area-box"><div class="sw-ui-area-bg"></div><div class="sw-ui-area-body"><div class="sw-ui-area-ab-all">');  
                  
                areaArr.push('<ul class="sw-ui-area-ab-prov">');//构造省  
                for(var i = 0; i< provinceLen; i ++){  
                    var p = cityArr[i][0];  
                    var pArr = new Array();  
                    var csArr = cityArr[i][1].split("|");  
                    var csLen = csArr.length;  
                      
                    pArr.push('<li class="sw-ui-area-box-item sw-ui-area-abProv-im">');  
                    pArr.push('<a class="sw-ui-area-box-link sw-ui-area-ab-prov-itemLink " href="#" p="'+p+'" c="" v="'+p+'">'+p+'</a>');  
                    pArr.push('<ul class="sw-ui-area-ab-prov-items">');  
                  
                    for(var j = 0;j < csLen ;j++){//构造市  
                        var c = csArr[j];  
                        pArr.push('<li class="sw-ui-area-box-item">');  
                        pArr.push('<a class="sw-ui-area-box-link sw-ui-area-abProv-itemsubLink " href="#" p="'+p+'" c="'+c+'" v="'+c+'">'+c+'</a>');  
                        pArr.push('</li>');  
                    }  
                      
                    pArr.push('</ul>');  
                    var pStr = pArr.join("");  
                    areaArr.push(pStr);  
                }//end for  
                
                areaArr.push('</ul>');//结束省  
                areaArr.push('</div></div></div>');  
                var areaStr = areaArr.join("");  
                $(".area .def_box").append(areaStr);  
                  
            },  
              
            //选择地区  
            areaEffect : function(){  
              
                //显示全部区域及省份  
                $(".def_box").hover(function(){  
                    $(this).find(".sw-ui-area-box").show();  
                },function(){  
                    $(this).find(".sw-ui-area-box").hide();  
                });  
                  
                //显示省级以下的市级城市  
                $(".sw-ui-area-box-item").hover(function(){  
                    $(this).css("z-index","90").find(".sw-ui-area-ab-prov-items").show();  
                },function(){  
                    $(this).css("z-index","0").find(".sw-ui-area-ab-prov-items").hide();  
                });  
                  
            }  
              
        }  
    }();  
      
    $(function(){  
          
        Search.initArea();  
        Search.areaEffect();  
          
    })  