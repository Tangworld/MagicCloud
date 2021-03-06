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

    <!--<div class="navbar navbar-inverse navbar-fixed-top">-->
        <!--<div class="container">-->
            <!--&lt;!&ndash;<div class="navbar-header">&ndash;&gt;-->
                <!--&lt;!&ndash;<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">&ndash;&gt;-->
                    <!--&lt;!&ndash;<span class="sr-only">Toggle navigation</span>&ndash;&gt;-->
                    <!--&lt;!&ndash;<span class="icon-bar"></span>&ndash;&gt;-->
                    <!--&lt;!&ndash;<span class="icon-bar"></span>&ndash;&gt;-->
                    <!--&lt;!&ndash;<span class="icon-bar"></span>&ndash;&gt;-->
                <!--&lt;!&ndash;</button>&ndash;&gt;-->
                <!--&lt;!&ndash;<a class="navbar-brand hidden-sm" href="http://www.bootcss.com" onclick="_hmt.push(['_trackEvent', 'navbar', 'click', 'navbar-首页'])">Bootstrap中文网</a>&ndash;&gt;-->
            <!--&lt;!&ndash;</div>&ndash;&gt;-->
            <!--<div class="navbar-collapse collapse" role="navigation">-->
                <!--<ul class="nav navbar-nav">-->
                    <!--<li class="hidden-sm hidden-md"><a href="http://v2.bootcss.com/"  target="_blank" onclick="_hmt.push(['_trackEvent', 'navbar', 'click', 'v2doc'])">Bootstrap2中文文档</a></li>-->
                    <!--<li><a href="http://v3.bootcss.com/" target="_blank" onclick="_hmt.push(['_trackEvent', 'navbar', 'click', 'v3doc'])">Bootstrap3中文文档</a></li>-->
                    <!--<li><a href="http://v4.bootcss.com/" target="_blank" onclick="_hmt.push(['_trackEvent', 'navbar', 'click', 'v4doc'])">Bootstrap 4.0 预览</a></li>-->
                    <!--<li><a href="/p/lesscss/" target="_blank" onclick="_hmt.push(['_trackEvent', 'navbar', 'click', 'less'])">Less 教程</a></li>-->
                    <!--<li><a href="http://www.jquery123.com/" target="_blank" onclick="_hmt.push(['_trackEvent', 'navbar', 'click', 'jquery'])">jQuery API</a></li>-->
                    <!--<li><a href="http://expo.bootcss.com" target="_blank" onclick="_hmt.push(['_trackEvent', 'navbar', 'click', 'expo'])">网站实例</a></li>-->
                    <!--&lt;!&ndash;<li><i class="fa fa-fire job-hot"></i><a href="http://www.liepin.com/event/bootstrap/index.shtml?mscid=b_o_0001" target="_blank" onclick="_hmt.push(['_trackEvent', 'navbar', 'click', 'navbar-高薪工作'])">高薪工作</a></li>&ndash;&gt;-->
                <!--</ul>-->
                <!--<ul class="nav navbar-nav navbar-right hidden-sm">-->
                    <!--<li><a href="/about/" onclick="_hmt.push(['_trackEvent', 'navbar', 'click', 'about'])">关于</a></li>-->
                <!--</ul>-->
            <!--</div>-->
        <!--</div>-->
    <!--</div>-->


    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
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
                            <p>
                                第一部分内容.
                            </p>
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
            <!--<div class="span6">-->
            <!--</div>-->
        </div>
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
<script src="js/isotop_ini.js"></script>
</body>
</html>