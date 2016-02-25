<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title> 浏览记录</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>MagicCloud</title>
    <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no"/>
    <!--手机不允许缩放-->
    <link rel="icon" href="images/favicon.ico">
    <!--<link rel="icon" href="images/cloud.ico">-->
    <!--找不到这个可能是网站站点的图标-->
    <link rel="shortcut icon" href="images/cloud.ico"/>

    <link rel="stylesheet" href="css/animation.css">
    <link rel="stylesheet" href="css/camera.css">
    <link rel="stylesheet" href="css/contact-form.css">
    <link rel="stylesheet" href="css/touchTouch.css">
    <link rel="stylesheet" href="css/style.css">

    <script src="js/jquery.js"></script>
    <script src="js/jquery-migrate-1.1.1.js"></script>
    <!--让你在原来代码上升级jquery 不用修改代码用的-->
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/script.js"></script>
    <script src="js/jquery.ui.totop.js"></script>
    <!--回到顶部的插件-->
    <script src="js/touchTouch.jquery.js"></script>
    <script src="js/isotope.pkgd.js"></script>
    <script src="js/TMForm.js"></script>
    <script src="js/modal.js"></script>
    <script src="js/camera.js"></script>
    <!--[if (gt IE 9)|!(IE)]><!-->
    <script src="js/jquery.mobile.customized.min.js"></script>
    <!--？？手机相关吧-->

    <!--bootstrap与登录框部分部分-->
    <link rel="stylesheet" href="./css/bootstrap.css"/>
    <!--这里有些奇怪？min与大的区别只有数据量的区别-->
    <link rel="stylesheet" href="./css/loging.css"/>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <!-- bootstrap end-->


    <!-- <link rel="stylesheet" href="./css/reset.css" type="text/css" /> -->
    <!--<![endif]-->
    <!--搜索框结束-->

    <!--city城市控件-->
    <!-- -->
    <link rel="stylesheet" href="css/city/cityStyle.css"/>
    <script type="text/javascript" src="js/city/cityScript.js"></script>
    <script type="text/javascript" src="js/city/lazyload-min.js"></script>
    <!-- -->
    <!--city   控件end-->

    <!--基本css--START-->
    <link rel="stylesheet" href="./css/myqd/index.css"/>
    <link rel="stylesheet" href="./css/myqd/special.css"/>
    <!--基本css--END-->


    <script>
        $(window).load(function () {
            $().UItoTop({easingType: 'easeOutQuart'});
            $('.gallery .gall_item').touchTouch();
        });
        $(document).ready(function () {
            jQuery('#camera_wrap').camera({
                loader: false,
                pagination: true,
                minHeight: '500',
                thumbnails: false,
                height: '44.42708333333333%',
                caption: true,
                navigation: false,
                fx: 'mosaic'
            });
            $('.gallery .gall-item').touchTouch();
        });
    </script>
    <!--[if lt IE 8]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
            <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0"
                 height="42" width="820"
                 alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/>
        </a>
    </div>
    <![endif]-->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <link rel="stylesheet" media="screen" href="css/ie.css">
    <![endif]-->

    <!--<base target="_blank" />-->

</head>
<body>
<h2>用户浏览记录</h2>

<table class="bordered">


    <tr>
        <td>
            <div id="special">

                <%--<div class="special-left">--%>
                    <%--<div class="special-left-up">--%>
                        <%--<h3>为您推荐</h3>--%>
                    <%--</div>--%>
                    <%--<div class="special-left-down">--%>

                    <%--</div>--%>
                <%--</div>--%>

                <div class="special-right">
                    <%--<div class="special-right-up">--%>
                        <%--<p>美景太多，我要去哪看山看海看世界</p>--%>
                    <%--</div>--%>
                    <div class="special-right-down">

                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-sm-6 col-md-4 thumbnail">
                                    <a href="http://vacations.ctrip.com/grouptravel/p1711738s2.html"><img
                                            class="img-thumbnail" alt="140x140"
                                            src="./images/travel/xc-1-01.jpg"
                                            style="height: 150px;width: 270px "/></a>

                                    <p>

                                    <div class="message"><strong>西安兵马俑+华清池4日3晚半自助游·索菲特立减-1000元/单+9元换购市内游</strong></div>
                                    <div class="price">￥2965起</div>
                                    </p>
                                </div>
                                <div class="col-sm-6 col-md-4 thumbnail">
                                    <a href="http://www.tuniu.com/tours/210051470"><img
                                            class="img-thumbnail" alt="140x140"
                                            src="./images/travel/xc-1-02.jpg"
                                            style="height: 150px;width: 270px "/></a>

                                    <p>

                                    <div class="message"><strong>桂林+漓江+阳朔+龙脊梯田5日4晚跟团游(4钻)·独家竹筏 金牌0自费 携程放心全景游...</strong>
                                    </div>
                                    <div class="price">￥2209起</div>
                                    </p>
                                </div>
                                <div class="col-sm-6 col-md-4 thumbnail">
                                    <a href="http://www.tuniu.com/tours/210054040#source=bb"><img
                                            class="img-thumbnail" alt="140x140"
                                            src="./images/travel/xc-1-03.jpg"
                                            style="height: 150px;width: 270px "/></a>

                                    <p>

                                    <div class="message"><strong>三亚亚龙湾5日自由行(5钻)·豪华酒店4晚连住，舒适出行，释放身心......</strong></div>
                                    <div class="price">￥2208起</div>
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6 col-md-4 thumbnail">
                                    <a href="http://www.tuniu.com/tours/210052821"><img
                                            class="img-thumbnail" alt="140x140"
                                            src="./images/travel/xc-1-04.jpg"
                                            style="height: 150px;width: 270px "/></a>

                                    <p>

                                    <div class="message"><strong>鼓浪屿+厦门5日自由行·双飞 2晚鼓浪屿 2晚厦门 0元接机</strong></div>
                                    <div class="price">￥680起</div>
                                    </p>
                                </div>
                                <div class="col-sm-6 col-md-4 thumbnail">
                                    <a href="http://www.tuniu.com/tours/210049828#source=bb"><img
                                            class="img-thumbnail" alt="140x140"
                                            src="./images/travel/xc-1-05.jpg"
                                            style="height: 150px;width: 270px "/></a>

                                    <p>

                                    <div class="message"><strong>成都+九寨沟+黄龙6日5晚跟团游(4钻)·2进沟 2晚5星雪芽3晚温泉酒店 赠家访特卖汇</strong></div>
                                    <div class="price">￥2549起</div>
                                    </p>
                                </div>
                                <div class="col-sm-6 col-md-4 thumbnail">
                                    <a href="http://www.tuniu.com/tours/210053885#source=bb"><img
                                            class="img-thumbnail" alt="140x140"
                                            src="./images/travel/xc-1-06.jpg"
                                            style="height: 150px;width: 270px "/></a>

                                    <p>

                                    <div class="message"><strong>武汉+长江三峡+重庆6日5晚跟团游(5钻)·双城记 汉渝印象+总统游轮 动去飞返</strong></div>
                                    <div class="price">￥3655起</div>
                                    </p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </td>
    </tr>
</table>


</body>
</html>  