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

    <link rel="stylesheet" href="css/myqd/index.css"/>

    <!--特殊result.css-------->
    <link rel="stylesheet" href="css/myqd/result.css"/>
    <!--特殊result.css    end-->

    <!--图标库         -------->
    <link rel="stylesheet" href="css/myqd/font-awesome.css"/>
    <!--图标库             end-->


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
    </style>

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

            <div id="range">
                <div class="price-range">
                    <form>
                        <!--<span>价格区间:</span>-->
                        <!--<label for="exampleInputName3">价格区间</label>-->
                        <div class="form-group">
                            <!--<label for="exampleInputName2">最低价格</label>-->
                            <input type="text" class="form-control" id="price-min" placeholder="最低价格">
                        </div>
                        <span><strong class="fa fa-long-arrow-right fa-3x"></strong></span>
                        <div class="form-group">
                            <!--<label for="exampleInputEmail2">最高价格</label>-->
                            <input type="email" class="form-control" id="price-max" placeholder="最高价格">
                        </div>
                        <!--<button type="submit" class="btn btn-default">Send invitation</button>-->
                    </form>
                </div>
                <div class="day-range">
                    <!--<span>出行天数:</span>-->
                    <dl class="select">
                        <dt>1天</dt>
                        <dd>
                            <ul>
                                <li><a href="#">1天</a></li>
                                <li><a href="#">2天</a></li>
                                <li><a href="#">3天</a></li>
                                <li><a href="#">4天</a></li>
                                <li><a href="#">5天</a></li>
                                <li><a href="#">6天</a></li>
                                <li><a href="#">7天</a></li>
                            </ul>
                        </dd>
                    </dl>
                    <!--<div class="clear"></div>-->
                    <button type="button" class="btn btn-warning btn-lg">搜索</button>
                    <div class="clear"></div>
                </div>

                <script type="text/javascript">
                    $(function(){
                        $(".select").each(function(){
                            var s=$(this);
                            var z=parseInt(s.css("z-index"));
                            var dt=$(this).children("dt");
                            var dd=$(this).children("dd");
                            var _show=function(){dd.slideDown(200);dt.addClass("cur");s.css("z-index",z+1);};   //展开效果
                            var _hide=function(){dd.slideUp(200);dt.removeClass("cur");s.css("z-index",z);};    //关闭效果
                            dt.click(function(){dd.is(":hidden")?_show():_hide();});
                            dd.find("a").click(function(){dt.html($(this).html());_hide();});     //选择效果（如需要传值，可自定义参数，在此处返回对应的“value”值 ）
                            $("body").click(function(i){ !$(i.target).parents(".select").first().is(s) ? _hide():"";});
                        })
                    })
                </script>
            </div>
        </header>
        <!--=====================
                  Content
        ======================-->
        <div id="result-search">
            <div class="search">
                <!--<div class="search-left">-->

                <!--</div>-->
                <div class="search-right">
                    <div class="search-right-up">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="btn-group">
                                    <button class="btn btn-default btn-md" type="button">
                                        <em class="glyphicon glyphicon-align-left"></em> 价格 ↓
                                    </button>
                                    <button class="btn btn-default" type="button">
                                        <em class="glyphicon glyphicon-align-center"></em> 销量 ↓
                                    </button>
                                    <button class="btn btn-default" type="button">
                                        <em class="glyphicon glyphicon-align-right"></em> 天数 ↓
                                    </button>
                                    <button class="btn btn-default" type="button">
                                        <em class="glyphicon glyphicon-align-justify"></em> 好评数 ↓
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                    <div class="search-right-down floor-all">
                        <div class="floor">
                                <div class="flex-row">
                                    <div class="flex-3">
                                        <img src="./images/travel/xc-1-01.jpg" alt=""/>
                                    </div>
                                    <div class="flex-6 flex-col second">
                                        <div class="flex-6">
                                            <strong class="message"><a
                                                    href="http://vacations.ctrip.com/grouptravel/p1711738s2.html">西安兵马俑+华清池4日3晚半自助游·索菲特立减-1000元/单+9元换购市内游</a></strong>
                                        </div>
                                        <div class="flex-6 flex-row">
                                            <span class="url flex-4">来自:途牛网</span>
                                            <span class="day flex-8">行程:7天</span>
                                        </div>

                                    </div>
                                    <div class="flex-3 flex-col">
                                        <div class="price flex-6">￥2965<span class="price-1">起</span></div>
                                        <div class="flex-6">
                                            <button type="button" class="btn btn-warning">前往</button>
                                        </div>
                                        <div class="flex-6 flex-col">
                                            <div class="flex-6 good">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-half-empty"></i>
                                                <span>4.7分</span>
                                            </div>
                                            <div class="flex-6 buyed">300人已点评</div>
                                        </div>

                                    </div>
                                </div>
                        </div>

                        <div class="floor">
                            <div class="flex-row">
                                <div class="flex-3">
                                    <img src="./images/travel/xc-1-01.jpg" alt=""/>
                                </div>
                                <div class="flex-6 flex-col second">
                                    <div class="flex-6">
                                        <strong class="message"><a
                                                href="http://vacations.ctrip.com/grouptravel/p1711738s2.html">西安兵马俑+华清池4日3晚半自助游·索菲特立减-1000元/单+9元换购市内游</a></strong>
                                    </div>
                                    <div class="flex-6 flex-row">
                                        <span class="url flex-4">来自:途牛网</span>
                                        <span class="day flex-8">行程:7天</span>
                                    </div>

                                </div>
                                <div class="flex-3 flex-col">
                                    <div class="price flex-6">￥2965<span class="price-1">起</span></div>
                                    <div class="flex-6">
                                        <button type="button" class="btn btn-warning">前往</button>
                                    </div>
                                    <div class="flex-6 flex-col">
                                        <div class="flex-6 good">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half-empty"></i>
                                            <span>4.7分</span>
                                        </div>
                                        <div class="flex-6 buyed">300人已点评</div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="floor">
                            <div class="flex-row">
                                <div class="flex-3">
                                    <img src="./images/travel/xc-1-01.jpg" alt=""/>
                                </div>
                                <div class="flex-6 flex-col second">
                                    <div class="flex-6">
                                        <strong class="message"><a
                                                href="http://vacations.ctrip.com/grouptravel/p1711738s2.html">西安兵马俑+华清池4日3晚半自助游·索菲特立减-1000元/单+9元换购市内游</a></strong>
                                    </div>
                                    <div class="flex-6 flex-row">
                                        <span class="url flex-4">来自:途牛网</span>
                                        <span class="day flex-8">行程:7天</span>
                                    </div>

                                </div>
                                <div class="flex-3 flex-col">
                                    <div class="price flex-6">￥2965<span class="price-1">起</span></div>
                                    <div class="flex-6">
                                        <button type="button" class="btn btn-warning">前往</button>
                                    </div>
                                    <div class="flex-6 flex-col">
                                        <div class="flex-6 good">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half-empty"></i>
                                            <span>4.7分</span>
                                        </div>
                                        <div class="flex-6 buyed">300人已点评</div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="floor">
                            <div class="flex-row">
                                <div class="flex-3">
                                    <img src="./images/travel/xc-1-01.jpg" alt=""/>
                                </div>
                                <div class="flex-6 flex-col second">
                                    <div class="flex-6">
                                        <strong class="message"><a
                                                href="http://vacations.ctrip.com/grouptravel/p1711738s2.html">西安兵马俑+华清池4日3晚半自助游·索菲特立减-1000元/单+9元换购市内游</a></strong>
                                    </div>
                                    <div class="flex-6 flex-row">
                                        <span class="url flex-4">来自:途牛网</span>
                                        <span class="day flex-8">行程:7天</span>
                                    </div>

                                </div>
                                <div class="flex-3 flex-col">
                                    <div class="price flex-6">￥2965<span class="price-1">起</span></div>
                                    <div class="flex-6">
                                        <button type="button" class="btn btn-warning">前往</button>
                                    </div>
                                    <div class="flex-6 flex-col">
                                        <div class="flex-6 good">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half-empty"></i>
                                            <span>4.7分</span>
                                        </div>
                                        <div class="flex-6 buyed">300人已点评</div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="floor">
                            <div class="flex-row">
                                <div class="flex-3">
                                    <img src="./images/travel/xc-1-01.jpg" alt=""/>
                                </div>
                                <div class="flex-6 flex-col second">
                                    <div class="flex-6">
                                        <strong class="message"><a
                                                href="http://vacations.ctrip.com/grouptravel/p1711738s2.html">西安兵马俑+华清池4日3晚半自助游·索菲特立减-1000元/单+9元换购市内游</a></strong>
                                    </div>
                                    <div class="flex-6 flex-row">
                                        <span class="url flex-4">来自:途牛网</span>
                                        <span class="day flex-8">行程:7天</span>
                                    </div>

                                </div>
                                <div class="flex-3 flex-col">
                                    <div class="price flex-6">￥2965<span class="price-1">起</span></div>
                                    <div class="flex-6">
                                        <button type="button" class="btn btn-warning">前往</button>
                                    </div>
                                    <div class="flex-6 flex-col">
                                        <div class="flex-6 good">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half-empty"></i>
                                            <span>4.7分</span>
                                        </div>
                                        <div class="flex-6 buyed">300人已点评</div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <nav id="page">
                            <ul class="pagination">
                                <li>
                                    <a href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">...</a></li>
                                <li>
                                    <a href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>

                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>

    <!--==============================
                      footer
        =================================-->
        <div id="footer">
            <div class="container_12">
                <div class="grid_12">
                    <div class="copyright">Copyright &copy; 2015.Company name All rights reserved.<!--<a target="_blank"
                                                                                             href="http://sc.chinaz.com/moban/">
                &#x7F51;&#x9875;&#x6A21;&#x677F;</a>--></div>
                </div>
            </div>
            <div class="clear"></div>
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