<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page isELIgnored="false" %>
<html lang="en">
<head>
    <title>Home</title>
    <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no"/>
    <!--手机不允许缩放-->
    <link rel="icon" href="images/favicon.ico">
    <!--找不到这个可能是网站站点的图标-->
    <link rel="shortcut icon" href="images/favicon.ico"/>

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

    <!--搜索框部分-->
    <!-- <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.js"></script> -->
    <!-- <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script> -->
    <script type="text/javascript" src="./js/area.js"></script>
    <link rel="stylesheet" href="./css/area.css" type="text/css"/>


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

    <!--基本css-->
    <link rel="stylesheet" href="./css/myqd/index.css"/>
    <!--基本css结束-->


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
    <style type="text/css">
        /*reset css*/
        /**{margin:0;padding:0;}
        a{text-decoration: none;}*/

        /*appearence css*/

        /*.def_box {*/
        /*display: block;*/
        /*float: left;*/
        /*background-color: #fff;*/
        /*padding: 0 18px 0 10px;*/
        /*border: 1px solid #ccc;*/
        /*height: 20px;*/
        /*/!*height: 200px;*!/*/
        /*margin-top: 5px;*/
        /*line-height: 20px;*/
        /*cursor: pointer;*/
        /*position: relative;*/
        /*z-index: 300;*/
        /*}*/
    </style>
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
</head>
<body>
<div id="content-full">
    <div class="texture">
        <!--==============================
                      header
        =================================-->
        <header id="home" class="page">
            <div class="navigation single-page-nav">              <!-- 最上方导航条-->


                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-2">
                            <h1 class="logo_head">
                                <a href="index.jsp">MagicCloud</a>
                                <!--<p>Magic Cloud</p>-->
                            </h1>
                        </div>
                        <div class="col-md-6" style="padding-top: 20px">
                            <form class="form-inline" action="result.html">
                                <!--<div style="display: inline">-->
                                <!--<label for="exampleInputName2">出发城市</label>-->
                                <!--&lt;!&ndash;<input type="text" class="form-control" id="exampleInputName2" placeholder="南京">&ndash;&gt;-->
                                <!--<input type="text" class="form-control" placeholder="请输入城市名" aria-describedby="basic-addon1" id="inputTest" style="width: 200px;">-->
                                <!--</div>-->
                                <!--<span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>-->
                                <img src="./images/icon/position.png" alt="" height="35px" width="35px"/>
                                <lable id="current-city">南京</lable>
                                <div style="display: inline">
                                    <!--<label for="exampleInputEmail2">目的城市</label>-->
                                    <!--<input type="email" class="form-control" id="exadmpleInputEmail2" placeholder="北京">-->
                                    <input type="text" class="form-control" placeholder="请输入城市名"
                                           aria-describedby="basic-addon1" id="inputTest2"
                                           style="width: 500px;font-size: 20px">
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
                                    <!--<li><a href="#skills" onclick="window.location.href='result.html'">搜索</a></li>-->
                                    <li><a href="#" onclick="window.location.href='login.jsp'">登录</a></li>
                                    <li><a href="#" onclick="window.location.href='regist.jsp'">注册</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>

                <!--<div class="container_12">-->
                <!--<div class="grid_12">-->
                <!--<h1 class="logo_head">-->
                <!--&lt;!&ndash;<p>Magic Cloud</p>&ndash;&gt;-->
                <!--</h1>-->


                <!--&lt;!&ndash;&lt;!&ndash;city城市控件&ndash;&gt;&ndash;&gt;-->
                <!--&lt;!&ndash;&lt;!&ndash; &ndash;&gt;&ndash;&gt;-->
                <!--&lt;!&ndash;<link rel="stylesheet" href="css/city/cityStyle.css"/>&ndash;&gt;-->
                <!--&lt;!&ndash;<script type="text/javascript" src="js/city/cityScript.js"></script>&ndash;&gt;-->
                <!--&lt;!&ndash;<script type="text/javascript" src="js/city/lazyload-min.js"></script>&ndash;&gt;-->
                <!--&lt;!&ndash;&lt;!&ndash; &ndash;&gt;&ndash;&gt;-->
                <!--&lt;!&ndash;&lt;!&ndash;city   控件end&ndash;&gt;&ndash;&gt;-->
                <!--<div class="city">-->
                <!--<form class="form-inline">-->
                <!--&lt;!&ndash;<div style="display: inline">&ndash;&gt;-->
                <!--&lt;!&ndash;<label for="exampleInputName2">出发城市</label>&ndash;&gt;-->
                <!--&lt;!&ndash;&lt;!&ndash;<input type="text" class="form-control" id="exampleInputName2" placeholder="南京">&ndash;&gt;&ndash;&gt;-->
                <!--&lt;!&ndash;<input type="text" class="form-control" placeholder="请输入城市名" aria-describedby="basic-addon1" id="inputTest" style="width: 200px;">&ndash;&gt;-->
                <!--&lt;!&ndash;</div>&ndash;&gt;-->
                <!--<lable id="current-city">南京</lable>-->
                <!--<div style="display: inline">-->
                <!--&lt;!&ndash;<label for="exampleInputEmail2">目的城市</label>&ndash;&gt;-->
                <!--&lt;!&ndash;<input type="email" class="form-control" id="exadmpleInputEmail2" placeholder="北京">&ndash;&gt;-->
                <!--<input type="text" class="form-control" placeholder="请输入城市名" aria-describedby="basic-addon1" id="inputTest2" style="width: 200px;">-->
                <!--</div>-->
                <!--<button type="submit" class="btn btn-default" id="b01">查询</button>-->
                <!--</form>-->
                <!--</div>-->

                <!--<nav>-->
                <!--<ul>-->
                <!--<li><a href="#home" class="current">主页</a></li>-->
                <!--<li><a href="#skills" onclick="window.location.href='result.html'">搜索</a></li>-->
                <!--</ul>-->
                <!--</nav>-->
                <!--</div>-->
                <!--</div>-->

            </div>

            <div class="banner-first">
                <div class="banner-left">
                    <div class="banner-text">          <!--这里是一整个的导航框架-->
                        <div class="logo">
                            <!--<h2>Magic Cloud</h2>-->
                        </div>
                        <div class="top-nav">
                            <ul class="nav1 cl-effect-1">
                                <li><a href="#special" class="scroll">特色推荐</a></li>
                                <li><a href="#services" class="scroll">国内游</a></li>
                                <li><a href="#products" class="scroll">世界游</a></li>
                                <li><a href="#team" class="scroll">周边游</a></li>
                                <li><a href="#contact" class="scroll">文章</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="banner-right">
                    <div id="camera_wrap" style="background-size: 100%;">
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
            <div class="special">
                <div class="special-left">
                    <div class="special-left-up">
                        <h3>特色推荐</h3>
                    </div>
                    <div class="special-left-down">

                    </div>
                </div>
                <div class="special-right">             <!--这里采用响应式标签-->
                    <div class="container-fluid">
                        <div class="row-fluid">
                            <div class="col-md-12">
                                <div class="tabbable" id="tabs-248330">
                                    <ul class="nav nav-tabs">
                                        <li class="active">
                                            <a href="#panel-539513" data-toggle="tab">第一部分</a>
                                        </li>
                                        <li>
                                            <a href="#panel-715867" data-toggle="tab">第二部分</a>
                                        </li>
                                        <li>
                                            <a href="#panel-715866" data-toggle="tab">第三部分</a>
                                        </li>
                                        <li>
                                            <a href="#panel-715865" data-toggle="tab">第四部分</a>
                                        </li>
                                        <li>
                                            <a href="#panel-715864" data-toggle="tab">第五部分</a>
                                        </li>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="panel-539513">
                                            <!--<p>-->
                                            <!--第一部分内容.-->
                                            <!--</p>-->
                                            <div class="container-fluid">
                                                <div class="row">
                                                    <div class="col-sm-6 col-md-4 thumbnail">
                                                        <img class="img-thumbnail" alt="140x140"
                                                             src="./images/travel/xc-1-01.jpg"
                                                             style="height: 150px;width: 270px "/>

                                                        <p>
                                                            <em>Git</em>是一个分布式的版本控制系统，最初由<strong>Linus Torvalds</strong>编写，用作Linux内核代码的管理。在推出后，Git在其它项目中也取得了很大成功，尤其是在Ruby社区中。
                                                        </p>
                                                    </div>
                                                    <div class="col-sm-6 col-md-4 thumbnail">
                                                        <img class="img-thumbnail" alt="140x140"
                                                             src="./images/travel/xc-1-02.jpg"
                                                             style="height: 150px;width: 270px "/>

                                                        <p>
                                                            <em>Git</em>是一个分布式的版本控制系统，最初由<strong>Linus Torvalds</strong>编写，用作Linux内核代码的管理。在推出后，Git在其它项目中也取得了很大成功，尤其是在Ruby社区中。
                                                        </p>
                                                    </div>
                                                    <div class="col-sm-6 col-md-4 thumbnail">
                                                        <img class="img-thumbnail" alt="140x140"
                                                             src="./images/travel/xc-1-03.jpg"
                                                             style="height: 150px;width: 270px "/>

                                                        <p>
                                                            <em>Git</em>是一个分布式的版本控制系统，最初由<strong>Linus Torvalds</strong>编写，用作Linux内核代码的管理。在推出后，Git在其它项目中也取得了很大成功，尤其是在Ruby社区中。
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6 col-md-4 thumbnail">
                                                        <img class="img-thumbnail" alt="140x140"
                                                             src="./images/travel/xc-1-04.jpg"
                                                             style="height: 150px;width: 270px "/>

                                                        <p>
                                                            <em>Git</em>是一个分布式的版本控制系统，最初由<strong>Linus Torvalds</strong>编写，用作Linux内核代码的管理。在推出后，Git在其它项目中也取得了很大成功，尤其是在Ruby社区中。
                                                        </p>
                                                    </div>
                                                    <div class="col-sm-6 col-md-4 thumbnail">
                                                        <img class="img-thumbnail" alt="140x140"
                                                             src="./images/travel/xc-1-05.jpg"
                                                             style="height: 150px;width: 270px "/>

                                                        <p>
                                                            <em>Git</em>是一个分布式的版本控制系统，最初由<strong>Linus Torvalds</strong>编写，用作Linux内核代码的管理。在推出后，Git在其它项目中也取得了很大成功，尤其是在Ruby社区中。
                                                        </p>
                                                    </div>
                                                    <div class="col-sm-6 col-md-4 thumbnail">
                                                        <img class="img-thumbnail" alt="140x140"
                                                             src="./images/travel/xc-1-06.jpg"
                                                             style="height: 150px;width: 270px "/>

                                                        <p>
                                                            <em>Git</em>是一个分布式的版本控制系统，最初由<strong>Linus Torvalds</strong>编写，用作Linux内核代码的管理。在推出后，Git在其它项目中也取得了很大成功，尤其是在Ruby社区中。
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="panel-715867">
                                            <p>
                                                第二部分内容.
                                            </p>
                                        </div>
                                        <div class="tab-pane" id="panel-715866">
                                            <p>
                                                第三部分内容.
                                            </p>
                                        </div>
                                        <div class="tab-pane" id="panel-715865">
                                            <p>
                                                第四部分内容.
                                            </p>
                                        </div>
                                        <div class="tab-pane" id="panel-715864">
                                            <p>
                                                第五部分内容.
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