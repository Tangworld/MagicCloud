<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page isELIgnored="false" %>
<html lang="en">
<head>
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
<div id="content-full">
    <!--==============================
                  header
    =================================-->
    <header id="home" class="page">
        <div class="navigation single-page-nav">              <!-- 最上方导航条-->


            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-2">
                        <h1 class="logo_head">
                            <!--<a href="index.html">Make Each Day Count</a>-->
                            <a href="index.html">MagicCloud</a>
                            <!--<p>Magic Cloud</p>-->
                        </h1>
                    </div>
                    <div class="col-md-6" style="padding-top: 20px">
                        <form class="form-inline" action="result.html">
                            <img src="./images/icon/position.png" alt="" height="35px" width="35px"/>
                            <lable id="current-city">南京</lable>
                            <div style="display: inline">
                                <input type="text" class="form-control" placeholder="请输入城市名"
                                       aria-describedby="basic-addon1" id="inputTest2"
                                       style="width: 70%;font-size: 20px">
                            </div>
                            <button type="submit" class="btn btn-default btn-lg" id="b01"
                                    style="height: 40px;margin-bottom: 5px">查询
                            </button>
                        </form>
                    </div>
                    <div class="col-md-4" style="padding-top: 10px">
                        <nav>
                            <ul>
                                <li><a href="#home" class="current">主页</a></li>
                                <li><a href="javascript:void(0)" onclick="openLogin()">登录</a></li>
                                <!--<li><a href="#" onclick="window.location.href='regist.html'">注册</a></li>-->
                                <li><a href="javascript:void(0)" onclick="openRegister()">注册</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>

        </div>

        <!--弹出式登录框-->
        <div class="modal-dialog" id="login">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" onclick="closeLogin()">x</button>
                    <h1 class="text-center text-primary">登录</h1>
                </div>
                <div class="modal-body center-block">
                    <form action="" class="form center-block">
                        <div class="input-group">
                            <!--<label for="examInputEmail1">邮箱:</label>-->
                            <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                            <input type="email" class="form-control input-lg" id="examInputEmail1"
                                   placeholder="请输入您的用户名"/>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                            <input type="password" class="form-control input-lg" id="examInputPassword1"
                                   placeholder="请输入您的密码"/>
                        </div>

                        <div class="form-group">
                            <button class="btn btn-primary btn-lg btn-block">立刻登录</button>
                            <span><a href="javascript:void(0)" style="text-align: left">找回密码</a></span>
                            <span><a href="javascript:void(0)" class="pull-right re-register">注册</a></span>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">

                </div>
            </div>
        </div>

        <!--注册框-->
        <div class="modal-dialog" id="register">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" onclick="closeRegister()">x</button>
                    <h1 class="text-center text-primary">注册</h1>
                </div>
                <div class="modal-body center-block">
                    <form action="" class="form center-block">
                        <div class="input-group">
                            <!--<label for="examInputEmail1">邮箱:</label>-->
                            <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                            <input type="email" class="form-control input-lg" id="username"
                                   placeholder="请输入您的用户名"/>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                            <input type="password" class="form-control input-lg" id="password1"
                                   placeholder="请输入您的密码"/>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                            <input type="password" class="form-control input-lg" id="password2"
                                   placeholder="确认密码"/>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
                            <input type="password" class="form-control input-lg" id="password2"
                                   placeholder="邮箱"/>
                        </div>

                        <div class="form-group">
                            <button class="btn btn-primary btn-lg btn-block">注册</button>
                            <span><a href="javascript:void(0)" style="text-align: left">找回密码</a></span>
                            <span><a href="javascript:void(0)" class="pull-right re-login">登录</a></span>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">

                </div>
            </div>
        </div>

        <div class="modal-dialog-mask"></div>

        <script>
            function openLogin() {
                $('.modal-dialog-mask').fadeIn(100);
                $("#login").slideDown(400);
            }
            function closeLogin() {
                $('.modal-dialog-mask').fadeOut(100);
                $("#login").slideUp(400);
            }

            function openRegister() {
                $('.modal-dialog-mask').fadeIn(100);
                $("#register").slideDown(400);
            }
            function closeRegister() {
                $('.modal-dialog-mask').fadeOut(100);
                $("#register").slideUp(400);
            }

            $("#login .re-register").click(function () {
                $("#login").css("display","none");
                $("#register").css("display","block");
            });
            $("#register .re-login").click(function () {
                $("#login").css("display","block");
                $("#register").css("display","none");
            });
        </script>


        <div class="banner-first">
            <div class="banner-left">
                <div class="banner-text">          <!--这里是一整个的导航框架-->
                    <div class="logo">            <!--这里其实只是个图层-->
                        <!--<a href="index.html"><img src="images/logo.png" alt=""/></a>-->
                        <!--<h2>Magic Cloud</h2>-->
                    </div>
                    <div id="top-nav" class="top-nav">
                        <ul class="nav1 cl-effect-1">
                            <!--<li><a href="index.html">Home</a></li>-->
                            <li><a href="#special" class="scroll">为您推荐</a></li>
                            <li><a href="#domestic" class="scroll">国内游览</a></li>
                            <li><a href="#world" class="scroll">世界环游</a></li>
                            <li><a href="#around" class="scroll">身边美景</a></li>
                            <li><a href="#travel-article" class="scroll">旅途感悟</a></li>
                        </ul>
                    </div>

                    <script>
                        $(document).ready(function() {

                            $("#top-nav [href='#special']").click(function(){
                                $("html, body").animate({
                                    scrollTop: $($(this).attr("href")).offset().top + "px"
                                }, {
                                    duration: 500,
                                    easing: "swing"
                                });
                                return false;
                            });
                            $("#top-nav [href='#domestic']").click(function(){
                                $("html, body").animate({
                                    scrollTop: $($(this).attr("href")).offset().top + "px"
                                }, {
                                    duration: 500,
                                    easing: "swing"
                                });
                                return false;
                            });
                            $("#top-nav [href='#world']").click(function(){
                                $("html, body").animate({
                                    scrollTop: $($(this).attr("href")).offset().top + "px"
                                }, {
                                    duration: 500,
                                    easing: "swing"
                                });
                                return false;
                            });
                            $("#top-nav [href='#around']").click(function(){
                                $("html, body").animate({
                                    scrollTop: $($(this).attr("href")).offset().top + "px"
                                }, {
                                    duration: 500,
                                    easing: "swing"
                                });
                                return false;
                            });
                            $("#top-nav [href='#travel-article']").click(function(){
                                $("html, body").animate({
                                    scrollTop: $($(this).attr("href")).offset().top + "px"
                                }, {
                                    duration: 500,
                                    easing: "swing"
                                });
                                return false;
                            });

                        });
                    </script>

                </div>
            </div>

            <div class="banner-right">

                <!--<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">-->
                    <!--&lt;!&ndash; Indicators &ndash;&gt;-->
                    <!--<ol class="carousel-indicators">-->
                        <!--<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>-->
                        <!--<li data-target="#carousel-example-generic" data-slide-to="1"></li>-->
                        <!--<li data-target="#carousel-example-generic" data-slide-to="2"></li>-->
                        <!--<li data-target="#carousel-example-generic" data-slide-to="3"></li>-->
                        <!--<li data-target="#carousel-example-generic" data-slide-to="4"></li>-->
                    <!--</ol>-->

                    <!--&lt;!&ndash; Wrapper for slides &ndash;&gt;-->
                    <!--<div class="carousel-inner" role="listbox">-->
                        <!--<div class="item active">-->
                            <!--<img src="images/img-fj/1.jpg" alt="">-->
                            <!--<div class="carousel-caption img-rounded">-->
                                <!--first-->
                            <!--</div>-->
                        <!--</div>-->
                        <!--<div class="item">-->
                            <!--<img src="images/img-fj/2.jpg" alt="">-->
                            <!--<div class="carousel-caption img-rounded">-->
                                <!--second-->
                            <!--</div>-->
                        <!--</div>-->
                        <!--<div class="item">-->
                            <!--<img src="images/img-fj/3.jpg" alt="">-->
                            <!--<div class="carousel-caption img-rounded">-->
                                <!--third-->
                            <!--</div>-->
                        <!--</div>-->
                        <!--<div class="item">-->
                            <!--<img src="images/img-fj/4.jpg" alt="">-->
                            <!--<div class="carousel-caption">-->
                                <!--four-->
                            <!--</div>-->
                        <!--</div>-->
                        <!--<div class="item">-->
                            <!--<img src="images/img-fj/6.jpg" alt="">-->
                            <!--<div class="carousel-caption">-->
                                <!--five-->
                            <!--</div>-->
                        <!--</div>-->
                    <!--</div>-->

                    <!--&lt;!&ndash; Controls &ndash;&gt;-->
                    <!--<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">-->
                        <!--<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>-->
                        <!--<span class="sr-only">Previous</span>-->
                    <!--</a>-->
                    <!--<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">-->
                        <!--<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>-->
                        <!--<span class="sr-only">Next</span>-->
                    <!--</a>-->
                <!--</div>-->


                <div id="camera_wrap">
                    <div data-src="images/img-fj/1.jpg">
                        <div class="caption fadeIn">Yesterday is History</div>
                    </div>
                    <div data-src="images/img-fj/2.jpg">
                        <div class="caption fadeIn">Tomorrow is a Mystery</div>
                    </div>
                    <div data-src="images/img-fj/3.jpg">
                        <div class="caption fadeIn">Today is a Gift</div>
                    </div>
                    <div data-src="images/img-fj/4.jpg">
                        <div class="caption fadeIn">That's Why We Call It The Present<span class="bull"></span> Best
                            <span class="bull"></span> Present
                        </div>
                    </div>
                    <div data-src="images/img-fj/6.jpg">
                        <div class="caption fadeIn">Let's Go</div>
                    </div>
                </div>
            </div>

        </div>

    </header>
    <!--=====================
              Content
    ======================-->
    <div id="special">

        <div class="special-left">
            <div class="special-left-up">
                <h3>为您推荐</h3>
            </div>
            <div class="special-left-down">

            </div>
        </div>

        <div class="special-right">
            <div class="special-right-up">
                <p>美景太多，我要去哪看山看海看世界</p>
            </div>
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

                            <div class="message"><strong>三亚亚龙湾5日自由行(5钻)·豪华酒店4晚连住</strong></div>
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

    <div id="domestic">
        <div class="special">
            <div class="special-left">
                <div class="special-left-up">
                    <h3>国内游览</h3>
                </div>
                <div class="special-left-down">

                </div>
            </div>
            <div class="special-right">             <!--这里采用响应式标签-->
                <div class="container-fluid">
                    <div class="row-fluid">
                        <div class="col-md-12">
                            <div class="tabbable" id="domestic-tabs">
                                <ul class="nav nav-tabs">
                                    <li class="active">
                                        <a href="#domestic-panel-1" data-toggle="tab">北国风光</a>
                                    </li>
                                    <li>
                                        <a href="#domestic-panel-2" data-toggle="tab">江南姿色</a>
                                    </li>
                                    <li>
                                        <a href="#domestic-panel-3" data-toggle="tab">疆藏风情</a>
                                    </li>
                                    <li>
                                        <a href="#domestic-panel-4" data-toggle="tab">滨海盛筵</a>
                                    </li>
                                    <li>
                                        <a href="#domestic-panel-5" data-toggle="tab">古色古香</a>
                                    </li>
                                </ul>

                                <div class="tab-content">
                                    <div class="tab-pane active" id="domestic-panel-1">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://vacations.ctrip.com/morelinetravel/p1843389s2.html"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/north/1.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message">
                                                        <strong>长春+吉林市+长白山5日4晚跟团游(4钻)·万科滑雪 魔界雾凇 温泉 最高减500...</strong></div>
                                                    <div class="price">￥3039起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://vacations.ctrip.com/morelinetravel/p5410478s2.html"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/north/2.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong>曲阜+泰山+济南+青岛5日4晚跟团游(4钻)·赠封禅大典 山海之恋·小资海滨</strong></div>
                                                    <div class="price">￥2290起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://vacations.ctrip.com/morelinetravel/p2530279s2.html"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/north/3.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong>北京5日4晚跟团游(5钻)·出游首选 轻奢之旅 高逼格国际5星 绝无暗店</strong></div>
                                                    <div class="price">￥3228起</div>
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://www.tuniu.com/tours/210032546"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/north/4.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><哈尔滨-东升雪谷-雪乡-滑雪-雾凇岛双飞5日游>行摄冰雪森林</strong>
                                                    </div>
                                                    <div class="price">￥790起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/210032832"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/north/5.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><大连-东方水城-海之韵公园-棒棰岛-金石滩双飞5日游>0购物推荐，休闲游首选</strong></div>
                                                    <div class="price">￥3599起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/210050383"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/north/6.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><镜泊湖-长白山-五营-汤旺河-五大连池7日游>天然旅行</strong></div>
                                                    <div class="price">￥5129起</div>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="domestic-panel-2">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/210050902"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/south/1.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message">
                                                        <strong><海南三亚5日游>8万点赞，精选4晚180海景，0购物玩海8H，奔跑吧牛人</strong></div>
                                                    <div class="price">￥2688起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://www.tuniu.com/tours/210054364"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/south/2.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><丽江-香格里拉-大理双廊6日游>牛人私家团，醉美普达措，双廊海景客栈，4人立减...</strong></div>
                                                    <div class="price">￥3899起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/210050739"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/south/3.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><昆明-普洱-版纳3飞6日游>犀牛坪喂小熊猫，版纳希尔顿，立减400</strong></div>
                                                    <div class="price">￥999起</div>
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://vacations.ctrip.com/grouptravel/p5208472s2.html"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/south/4.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><昆明+普洱+西双版纳6日5晚跟团游(4钻)·携程自营 三飞 3晚5星酒店 万达乐园嗨...</strong>
                                                    </div>
                                                    <div class="price">￥790起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://vacations.ctrip.com/grouptravel/p1860232s2.html"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/south/5.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><贵州黄果树+西江千户苗寨+荔波6日5晚跟团游(5钻)·美食美客·尊享1晚凯宾斯基...</strong></div>
                                                    <div class="price">￥3599起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://vacations.ctrip.com/around/p2097511s2.html"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/south/6.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><浙江杭州+千岛湖+乌镇3日2晚跟团游(2钻)·漫步苏堤之上 含千岛湖游船 森呼吸</strong></div>
                                                    <div class="price">￥688起</div>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="domestic-panel-3">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/210050347"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/tibet/1.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message">
                                                        <strong><西藏全景四飞9日游>0购物，最后一晚住洲际，南京往返</strong></div>
                                                    <div class="price">￥6886起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/210049146"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/tibet/2.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><青海湖-嘉峪关-敦煌-张掖双飞8日游>告别卧铺或长途车，兰新高铁，6晚4星，5月</strong></div>
                                                    <div class="price">￥5050起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/210064419"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/tibet/3.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><天山-喀纳斯-伊犁-巴音布鲁克双飞11日游>南北疆大环游，不走回头路，全景之旅</strong></div>
                                                    <div class="price">￥6301起</div>
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/210064235"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/tibet/4.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><乌鲁木齐-天池-吐鲁番-布尔津-喀纳斯双飞8日游>探秘喀纳斯，1人也发团</strong>
                                                    </div>
                                                    <div class="price">￥4386起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/210061144"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/tibet/5.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><林芝-波密-羊卓雍错-拉萨西藏9日游>0购物0自费林芝进藏，赏朵朵桃花观碧蓝然乌...</strong></div>
                                                    <div class="price">￥3999起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/210064443"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/tibet/6.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><呼伦贝尔-额尔古纳-呼伦湖-满洲里双飞双卧6日游>全程0购物，深入草原，赠烤全羊</strong></div>
                                                    <div class="price">￥3527起</div>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="domestic-panel-4">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://www.tuniu.com/tours/210050902"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/beach/1.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message">
                                                        <strong><海南三亚5日游>8万点赞，精选4晚180海景，0购物玩海8H，奔跑吧牛人</strong></div>
                                                    <div class="price">￥2688起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://www.tuniu.com/tours/210050563"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/beach/2.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><厦门-鼓浪屿双飞4日游>半自助，2人减200，1晚鼓浪屿，含4大景点，赠单车骑行</strong></div>
                                                    <div class="price">￥1328起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/210032962"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/beach/3.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><青岛-崂山双飞4日游>0购物，宿栈桥四星，2大海水浴场，海盗旅行</strong></div>
                                                    <div class="price">￥1648起</div>
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://www.tuniu.com/tours/5730729"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/beach/4.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><福州-武夷山2日错峰游>高铁往返，含九曲溪竹筏漂流，限时特惠</strong>
                                                    </div>
                                                    <div class="price">￥740起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://www.tuniu.com/tours/210054569"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/beach/5.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><北海-涠洲岛双飞4日半自助游>2晚珍珠湾海景，1晚涠洲岛港岛</strong></div>
                                                    <div class="price">￥2121起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/210032700"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/beach/6.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><烟台-威海-蓬莱阁-大乳山-青岛4日游>0购物，牛人专团（当地游）</strong></div>
                                                    <div class="price">￥1502起</div>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="domestic-panel-5">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/210052512"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/ancient/1.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message">
                                                        <strong><西安-兵马俑-乾陵-大明宫双飞4日游>品特色餐，2成人立减200元</strong></div>
                                                    <div class="price">￥1499起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://www.tuniu.com/tours/210045837"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/ancient/2.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><南靖云水谣-永定高北土楼1日游>厦门出发 酒店免费接送</strong></div>
                                                    <div class="price">￥299起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://www.tuniu.com/tours/210045384"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/ancient/3.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><天安门-故宫-颐和园-鸟巢水立方1日游>地道老北京海碗居炸酱面</strong></div>
                                                    <div class="price">￥88起</div>
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://www.tuniu.com/tours/210018380"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/ancient/4.png"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><乌镇-西塘2日游>宿西塘精选客栈 无购物无自理</strong>
                                                    </div>
                                                    <div class="price">￥183起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://www.tuniu.com/tours/210044487"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/ancient/5.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><神农架-武当山-武汉4日游>5A景点 舒心住宿 无购物</strong></div>
                                                    <div class="price">￥1425起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/5777578"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/1domestic/ancient/6.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><安徽歙县古城一日游>(黄山出发)</strong></div>
                                                    <div class="price">￥105起</div>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div id="world">
        <div class="special">
            <div class="special-left">
                <div class="special-left-up">
                    <h3>世界环游</h3>
                </div>
                <div class="special-left-down">

                </div>
            </div>
            <div class="special-right">             <!--这里采用响应式标签-->
                <div class="container-fluid">
                    <div class="row-fluid">
                        <div class="col-md-12">
                            <div class="tabbable" id="world-tabs">
                                <ul class="nav nav-tabs">
                                    <li class="active">
                                        <a href="#world-panel-1" data-toggle="tab">浪漫北欧</a>
                                    </li>
                                    <li>
                                        <a href="#world-panel-2" data-toggle="tab">多彩澳洲</a>
                                    </li>
                                    <li>
                                        <a href="#world-panel-3" data-toggle="tab">欢乐邻邦</a>
                                    </li>
                                    <li>
                                        <a href="#world-panel-4" data-toggle="tab">盛情美洲</a>
                                    </li>
                                    <li>
                                        <a href="#world-panel-5" data-toggle="tab">世纪邮轮</a>
                                    </li>
                                </ul>

                                <div class="tab-content">
                                    <div class="tab-pane active" id="world-panel-1">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/33058573" ><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/northeurope/1.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message">
                                                        <strong><瑞典-芬兰-爱沙尼亚8-10日游>北极圈，圣诞老人村，极光轻旅行，第二人半价</strong></div>
                                                    <div class="price">￥3369起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://vacations.ctrip.com/grouptravel/p5419397s2.html"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/northeurope/2.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong>法国+瑞士+意大利11日跟团游(3钻)·THE MALL Outlets 往返直飞 法拉利红色列车</strong></div>
                                                    <div class="price">￥11399起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/469482"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/northeurope/3.png"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><北欧+冰岛10-11日游>双峡湾，赠峡湾游船，冰岛黄金瀑布，冰岛蓝湖，瓦萨沉船博物...</strong></div>
                                                    <div class="price">￥18616起</div>
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/497901"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/northeurope/4.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><俄罗斯-北欧四国-双峡湾-北德-塔林15日游>东航直飞，四星酒店，赠峡湾游船，克...</strong>
                                                    </div>
                                                    <div class="price">￥17799起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://vacations.ctrip.com/grouptravel/p64592s2.html"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/northeurope/5.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong>英国苏格兰+英格兰10日8晚跟团游(4钻)·经典深度游 外航直飞 水上伯顿+双学府</strong></div>
                                                    <div class="price">￥18299起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/467486"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/northeurope/6.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><奥德捷12日或13日游>最高立减1700，4星全含，CK小镇，美泉宫，布拉格城堡，哈...</strong></div>
                                                    <div class="price">￥11899起</div>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="world-panel-2">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/37174975" ><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/australia/1.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message">
                                                        <strong><澳大利亚-新西兰-南北岛纯净12日游>澳新南北岛12天</strong></div>
                                                    <div class="price">￥18809起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/27160280"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/australia/2.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><澳大利亚大堡礁墨尔本10日游>升级二晚五星，摩尔外堡礁，墨尔本大洋路，天堂农</strong></div>
                                                    <div class="price">￥13699起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/22260510"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/australia/3.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><新西兰-南北岛-塔斯曼冰河奇幻之旅12日游>纯玩，库克山国家公园入内，减1500...</strong></div>
                                                    <div class="price">￥22499起</div>
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/36220168"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/australia/4.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><澳新凯墨南北岛全景21天游>纯玩，汤加里罗国家公园，库克山，福克斯冰川，米弗...</strong>
                                                    </div>
                                                    <div class="price">￥33199起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/34285158#source=bb"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/australia/5.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><冰火新大陆之澳新凯墨12日游>途牛包团，减1500，部分团期白航班，升两晚五星</strong></div>
                                                    <div class="price">￥17099起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://www.tuniu.com/tours/5784879"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/australia/6.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><悉尼斯蒂芬港精华一日游>中文服务，华人司导</strong></div>
                                                    <div class="price">￥45起</div>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="world-panel-3">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://vacations.ctrip.com/grouptravel/p2434769s2.html" ><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/asia/1.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message">
                                                        <strong>日本北海道+大阪+京都+箱根+东京7日6晚跟团游(4钻)·冰雪乐园 海鲜火锅 温泉...</strong></div>
                                                    <div class="price">￥8890起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/306118"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/asia/2.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><首尔4日游>明洞5花3晚，2天DIY，赠交通卡</strong></div>
                                                    <div class="price">￥2989起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/22129296"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/asia/3.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><济州岛4日游>赠送韩式汗蒸和韩服体验，南京包机直飞往返</strong></div>
                                                    <div class="price">￥2101起</div>
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/469590"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/asia/4.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><印度金三角-尼泊尔9晚10日游>雪山峻景、上海往返</strong>
                                                    </div>
                                                    <div class="price">￥11518起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/28316094"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/asia/5.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><曼谷-芭提雅5晚6日游>酷鸟直飞，无自费，3晚希尔顿，沙美岛出海</strong></div>
                                                    <div class="price">￥3388起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/36212453"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/asia/6.png"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><长滩岛5晚6日游>赠送出海游、日落风帆，2天自由活动</strong></div>
                                                    <div class="price">￥4227起</div>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="world-panel-4">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://taocan.ctrip.com/freetravel/p68122s2.html" ><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/america/1.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message">
                                                        <strong>美国夏威夷9日7晚自由行(5钻)·希尔顿春季大促 赠接送机及半日游</strong></div>
                                                    <div class="price">￥9898起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/23774395"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/america/2.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><美东西-黄石公园14-16日游>全含，三大公园，赠西峡，住拉斯大道</strong></div>
                                                    <div class="price">￥23699起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/21659871"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/america/3.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><当桑巴舞遇上探戈秀巴西-阿根廷16日游>巴西探秘亚马逊雨林，阿根廷大冰川火地岛...</strong></div>
                                                    <div class="price">￥42099起</div>
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://vacations.ctrip.com/grouptravel/p1675876s2.html"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/america/4.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong>美国纽约+费城+华盛顿+尼亚加拉大瀑布+波士顿11日9晚半自助游(3钻)·多人立减...</strong>
                                                    </div>
                                                    <div class="price">￥10315起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/25995923"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/america/5.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><南极-巴西-阿根廷-智利-秘鲁34日游>北上广三地同发，和企鹅宝宝共同享受南极</strong></div>
                                                    <div class="price">￥135149起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/30360185"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/america/6.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><洛杉矶-拉斯维加斯-旧金山11日游>一人成行，天天出发，自备签</strong></div>
                                                    <div class="price">￥7809起</div>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="world-panel-5">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://www.tuniu.com/tours/5200470" ><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/ship/1.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message">
                                                        <strong><马尔代夫美人蕉Thulhagiri5晚7日自助游>南京起止,送1晚马累</strong></div>
                                                    <div class="price">￥8511起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/36611081"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/ship/2.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><巴厘岛6日游>蓝梦岛出海，独栋别墅，拉古娜下午茶，纯玩，减300</strong></div>
                                                    <div class="price">￥5430起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/456099"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/ship/3.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><迪拜-阿布扎比4晚5日游>全程五星住宿，阿布扎比升级国五，登迪拜塔观光，水族馆...</strong></div>
                                                    <div class="price">￥6999起</div>
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://nj.tuniu.com/tours/30411081"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/ship/4.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong><斯里兰卡7日游>南部海滨免费升级3晚五星，斯航直飞</strong>
                                                    </div>
                                                    <div class="price">￥8039起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://www.tuniu.com/tours/5200507"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/ship/5.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong>[一价全含]<马尔代夫白金岛Adaraan Hudhuranfushi5晚7日自助游>南京起止,送1晚</strong></div>
                                                    <div class="price">￥7398起</div>
                                                    </p>
                                                </div>
                                                <div class="col-sm-6 col-md-4 thumbnail">
                                                    <a href="http://vacations.ctrip.com/grouptravel/p5572397s2.html"><img
                                                            class="img-thumbnail" alt="140x140"
                                                            src="./images/travel/2worldwide/ship/6.jpg"
                                                            style="height: 150px;width: 270px "/></a>

                                                    <p>

                                                    <div class="message"><strong>毛里求斯8日5晚半自助游(5钻)·瑞喜敦+园景房+2日游（双体船鹿岛+路易港）</strong></div>
                                                    <div class="price">￥9780起</div>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div id="around">
        <div class="special-left">
            <div class="special-left-up">
                <h3>身边美景</h3>
            </div>
            <div class="special-left-down">

            </div>
        </div>

        <div class="special-right">
            <div class="special-right-up">
                <p>众里寻景千百度，美景却在周边游</p>
            </div>
            <div class="special-right-down">

                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6 col-md-4 thumbnail">
                            <a href="http://vacations.ctrip.com/around/p85372s2.html"><img
                                    class="img-thumbnail" alt="140x140"
                                    src="./images/travel/3nearby/1.jpg"
                                    style="height: 150px;width: 270px "/></a>

                            <p>

                            <div class="message"><strong>南京2日半自助游(4钻)·汤山颐尚温泉+五星开元 携程自营&气质泡汤</strong></div>
                            <div class="price">￥519起</div>
                            </p>
                        </div>
                        <div class="col-sm-6 col-md-4 thumbnail">
                            <a href="http://vacations.ctrip.com/around/p1922079s2.html"><img
                                    class="img-thumbnail" alt="140x140"
                                    src="./images/travel/3nearby/2.jpg"
                                    style="height: 150px;width: 270px "/></a>

                            <p>

                            <div class="message"><strong>华东5市+乌镇6日5晚跟团游(3钻)·宿乌镇 1晚升5星&2晚4星 明星产品 上海进出</strong>
                            </div>
                            <div class="price">￥849起</div>
                            </p>
                        </div>
                        <div class="col-sm-6 col-md-4 thumbnail">
                            <a href="http://www.tuniu.com/tours/210054040#source=bb"><img
                                    class="img-thumbnail" alt="140x140"
                                    src="./images/travel/3nearby/3.jpg"
                                    style="height: 150px;width: 270px "/></a>

                            <p>

                            <div class="message"><strong>南京汤山颐和酒店1晚+颐尚温泉门票2张·酒店位于颐尚温泉斜对面！</strong></div>
                            <div class="price">￥630起</div>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-md-4 thumbnail">
                            <a href="http://vacations.ctrip.com/around/p3707207s2.html"><img
                                    class="img-thumbnail" alt="140x140"
                                    src="./images/travel/3nearby/4.jpg"
                                    style="height: 150px;width: 270px "/></a>

                            <p>

                            <div class="message"><strong>摄影之旅·南京2日1晚跟团游·【春暖花开、微风徐来】感受南京的独特韵味</strong></div>
                            <div class="price">￥365起</div>
                            </p>
                        </div>
                        <div class="col-sm-6 col-md-4 thumbnail">
                            <a href="http://vacations.ctrip.com/around/p2837195s2.html"><img
                                    class="img-thumbnail" alt="140x140"
                                    src="./images/travel/3nearby/5.jpg"
                                    style="height: 150px;width: 270px "/></a>

                            <p>

                            <div class="message"><strong>南京+扬州+镇江3日2晚跟团游·南京中山陵+阅江楼+镇江南山+扬州瘦西湖</strong></div>
                            <div class="price">￥388起</div>
                            </p>
                        </div>
                        <div class="col-sm-6 col-md-4 thumbnail">
                            <a href="http://vacations.ctrip.com/around/p1836591s2.html"><img
                                    class="img-thumbnail" alt="140x140"
                                    src="./images/travel/3nearby/6.jpg"
                                    style="height: 150px;width: 270px "/></a>

                            <p>

                            <div class="message"><strong>苏州+杭州2日1晚半自助游·西溪登高台观飞鸟 听吴侬软语</strong></div>
                            <div class="price">￥228起</div>
                            </p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div id="travel-article">
        <div class="special-left">
            <div class="special-left-up">
                <h3>旅途感悟</h3>
            </div>
            <div class="special-left-down">

            </div>
        </div>

        <div class="special-right">
            <div class="special-right-up">
                <p>旅途总有灵感，不妨在文章里和她遇见</p>
            </div>
            <div class="special-right-down">

                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6 col-md-4 thumbnail">
                            <a href="http://you.ctrip.com/travels/xuexiang1445063/2832346.html"><img
                                    class="img-thumbnail" alt="140x140"
                                    src="./images/travel/4essay/1.jpg"
                                    style="height: 150px;width: 270px "/></a>

                            <p>

                            <div class="message"><strong>#春节在路上# 5日4晚，陶醉在北国的冰雪童话世界里</strong></div>
                            <div class="price"></div>
                            </p>
                        </div>
                        <div class="col-sm-6 col-md-4 thumbnail">
                            <a href="http://you.ctrip.com/travels/hainan100001/2833039.html"><img
                                    class="img-thumbnail" alt="140x140"
                                    src="./images/travel/4essay/2.jpg"
                                    style="height: 150px;width: 270px "/></a>

                            <p>

                            <div class="message"><strong>追逐温暖，环行琼州</strong>
                            </div>
                            <div class="price"></div>
                            </p>
                        </div>
                        <div class="col-sm-6 col-md-4 thumbnail">
                            <a href="http://you.ctrip.com/travels/haerbin151/2836181.html"><img
                                    class="img-thumbnail" alt="140x140"
                                    src="./images/travel/4essay/3.jpg"
                                    style="height: 150px;width: 270px "/></a>

                            <p>

                            <div class="message"><strong>邂逅东方小巴黎—哈尔滨四日游</strong></div>
                            <div class="price"></div>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-md-4 thumbnail">
                            <a href="http://you.ctrip.com/travels/xian7/2236924.html"><img
                                    class="img-thumbnail" alt="140x140"
                                    src="./images/travel/4essay/4.jpg"
                                    style="height: 150px;width: 270px "/></a>

                            <p>

                            <div class="message"><strong>西安旅游攻略宝典~已更新~信息量较大~</strong></div>
                            <div class="price"></div>
                            </p>
                        </div>
                        <div class="col-sm-6 col-md-4 thumbnail">
                            <a href="http://you.ctrip.com/travels/santorini1998/2835850.html"><img
                                    class="img-thumbnail" alt="140x140"
                                    src="./images/travel/4essay/5.jpg"
                                    style="height: 150px;width: 270px "/></a>

                            <p>

                            <div class="message"><strong>梦想的盛宴 欧洲五十日 圣托里尼篇</strong></div>
                            <div class="price"></div>
                            </p>
                        </div>
                        <div class="col-sm-6 col-md-4 thumbnail">
                            <a href="http://you.ctrip.com/travels/bali438/2834447.html"><img
                                    class="img-thumbnail" alt="140x140"
                                    src="./images/travel/4essay/6.jpg"
                                    style="height: 150px;width: 270px "/></a>

                            <p>

                            <div class="message"><strong>Bali，海岛国的天堂</strong></div>
                            <div class="price"></div>
                            </p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!--==============================
                      footer
        =================================-->

    <footer id="footer">
        <div class="container_12">
            <div class="grid_12">
                <div class="copyright">Copyright &copy; 2015.Company name All rights reserved.<!--<a target="_blank"
                                                                                             href="http://sc.chinaz.com/moban/">
                &#x7F51;&#x9875;&#x6A21;&#x677F;</a>--></div>
            </div>
        </div>
        <div class="clear"></div>
    </footer>


</div>

<a href="#" id="toTop" class="fa fa-chevron-up"></a>

<script src="js/jquery.singlePageNav.min.js"></script>
<script>
    // Prevent console.log from generating errors in IE for the purposes of the demo
    if (!window.console) console = {
        log: function () {
        }
    };
    // The actual plugin
    $('.single-page-nav').singlePageNav({
        offset: $('.single-page-nav').outerHeight(),
        filter: ':not(.external)',
        updateHash: true,
        beforeStart: function () {
            console.log('begin scrolling');
        },
        onComplete: function () {
            console.log('done scrolling');
        }
    });
</script>
<script type="text/javascript">
    google_api_map_init();
    function google_api_map_init() {
        var map;
        var coordData = new google.maps.LatLng(parseFloat(40.646197), parseFloat(-73.9724068, 14));
        var styleArray = [
            {
                "featureType": "water",
                "elementType": "geometry",
                "stylers": [
                    {
                        "color": "#193341"
                    }
                ]
            },
            {
                "featureType": "landscape",
                "elementType": "geometry",
                "stylers": [
                    {
                        "color": "#2c5a71"
                    }
                ]
            },
            {
                "featureType": "road",
                "elementType": "geometry",
                "stylers": [
                    {
                        "color": "#29768a"
                    },
                    {
                        "lightness": -37
                    }
                ]
            },
            {
                "featureType": "poi",
                "elementType": "geometry",
                "stylers": [
                    {
                        "color": "#406d80"
                    }
                ]
            },
            {
                "featureType": "transit",
                "elementType": "geometry",
                "stylers": [
                    {
                        "color": "#406d80"
                    }
                ]
            },
            {
                "elementType": "labels.text.stroke",
                "stylers": [
                    {
                        "visibility": "on"
                    },
                    {
                        "color": "#3e606f"
                    },
                    {
                        "weight": 2
                    },
                    {
                        "gamma": 0.84
                    }
                ]
            },
            {
                "elementType": "labels.text.fill",
                "stylers": [
                    {
                        "color": "#ffffff"
                    }
                ]
            },
            {
                "featureType": "administrative",
                "elementType": "geometry",
                "stylers": [
                    {
                        "weight": 0.6
                    },
                    {
                        "color": "#1a3541"
                    }
                ]
            },
            {
                "elementType": "labels.icon",
                "stylers": [
                    {
                        "visibility": "off"
                    }
                ]
            },
            {
                "featureType": "poi.park",
                "elementType": "geometry",
                "stylers": [
                    {
                        "color": "#2c5a71"
                    }
                ]
            }
        ]

        function initialize() {
            var mapOptions = {
                zoom: 13,
                center: coordData,
                scrollwheel: false,
                styles: styleArray
            }
            var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
            google.maps.event.addDomListener(window, 'resize', function () {
                map.setCenter(coordData);
                var center = map.getCenter();
            });
        }

        google.maps.event.addDomListener(window, "load", initialize);
    }
</script>
<!--[if IE]>
<script type="text/javascript" src="js/excanvas.js"></script><![endif]-->
<script src="js/jquery.knob.js"></script>
<script>
    $(function ($) {
        $(".knob").knob({
            change: function (value) {
                //console.log("change : " + value);
            },
            release: function (value) {
                //console.log(this.$.attr('value'));
                console.log("release : " + value);
            },
            cancel: function () {
                console.log("cancel : ", this);
            },
            /*format : function (value) {
             return value + '%';
             },*/
            draw: function () {
                // "tron" case
                if (this.$.data('skin') == 'tron') {
                    this.cursorExt = 0.3;
                    var a = this.arc(this.cv)  // Arc
                            , pa                   // Previous arc
                            , r = 1;
                    this.g.lineWidth = this.lineWidth;
                    if (this.o.displayPrevious) {
                        pa = this.arc(this.v);
                        this.g.beginPath();
                        this.g.strokeStyle = this.pColor;
                        this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, pa.s, pa.e, pa.d);
                        this.g.stroke();
                    }
                    this.g.beginPath();
                    this.g.strokeStyle = r ? this.o.fgColor : this.fgColor;
                    this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, a.s, a.e, a.d);
                    this.g.stroke();
                    this.g.lineWidth = 2;
                    this.g.beginPath();
                    this.g.strokeStyle = this.o.fgColor;
                    this.g.arc(this.xy, this.xy, this.radius - this.lineWidth + 1 + this.lineWidth * 2 / 3, 0, 2 * Math.PI, false);
                    this.g.stroke();
                    return false;
                }
            }
        });
        // Example of infinite knob, iPod click wheel
        var v, up = 0, down = 0, i = 0
                , $idir = $("div.idir")
                , $ival = $("div.ival")
                , incr = function () {
                    i++;
                    $idir.show().html("+").fadeOut();
                    $ival.html(i);
                }
                , decr = function () {
                    i--;
                    $idir.show().html("-").fadeOut();
                    $ival.html(i);
                };
        $("input.infinite").knob(
                {
                    min: 0
                    , max: 20
                    , stopper: false
                    , change: function () {
                    if (v > this.cv) {
                        if (up) {
                            decr();
                            up = 0;
                        } else {
                            up = 1;
                            down = 0;
                        }
                    } else {
                        if (v < this.cv) {
                            if (down) {
                                incr();
                                down = 0;
                            } else {
                                down = 1;
                                up = 0;
                            }
                        }
                    }
                    v = this.cv;
                }
                });
    });
</script>

<script type="text/javascript">                      /*城市选择的js*/
LazyLoad.css(["css/city/cityStyle.css"], function () {
    LazyLoad.js(["js/city/cityScript.js"], function () {
//            var test = new citySelector.cityInit("inputTest");
        var test2 = new citySelector.cityInit("inputTest2");
    });
});
</script>
<script src="js/isotop_ini.js"></script>
</body>
</html>