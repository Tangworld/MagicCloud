<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page isELIgnored="false" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
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


    <!-- <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.js"></script> -->
    <!-- <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script> -->
    <script type="text/javascript" src="./js/area.js"></script>
    <link rel="stylesheet" href="./css/area.css" type="text/css"/>
    <!-- <link rel="stylesheet" href="./css/reset.css" type="text/css" /> -->
    <!--<![endif]-->
</head>
<body>
<div class="container_12">
    <div class="grid_12">
        <h2>注&nbsp;&nbsp;&nbsp;册</h2>
    </div>
    <div class="grid_6">
        <div class="test" style="align-self: center">
            <form id="contact-form">
                <div class="contact-form-loader"></div>
                <fieldset>
                    <label class="name">
                        <!--<label class="form-group"  >-->
                        <input type="text" name="name" placeholder="Name*:" value=""
                               data-constraints="@Required @JustLetters"/>
                        <span class="empty-message">*名字不能为空</span>
                        <span class="error-message">*名字格式不正确</span>
                    </label><br><br><br>
                    <label class="email">
                        <input type="text" name="email" placeholder="E-mail*:" value=""
                               data-constraints="@Required @Email"/>
                        <span class="empty-message">*邮箱不能为空</span>
                        <span class="error-message">*邮箱格式不正确</span>
                    </label><br><br><br>
                    <label class="phone">
                        <input type="text" name="phone" placeholder="Telephone*:" value=""
                               data-constraints="@Required @JustNumbers"/>
                        <span class="empty-message">*联系方式不能为空</span>
                        <span class="error-message">*联系方式格式不正确</span>
                    </label><br><br><br>
                    <label class="password" >
                        <!--<label >-->
                        <input type="password"  name="password" placeholder="Password*:" value=""
                               data-constraints="@Required @JustNumbers" style ="width:300px;"/>
                        <span class="empty-message">*密码不能为空</span>
                        <span class="error-message">*</span>
                    </label><br><br><br>
                    <label class="password2">
                        <input type="password" name="password2" placeholder="Password2*:" value=""
                               data-constraints="@Required @JustNumbers" style ="width:300px;"/>
                        <span class="empty-message">*确认密码不能为空</span>
                        <span class="error-message">*</span>
                    </label><br><br><br>
                    <!--<label class="message">-->
                    <!--<textarea name="message" placeholder="Message*:"-->
                    <!--data-constraints='@Required @Length(min=20,max=999999)'></textarea>-->
                    <!--<span class="empty-message">*This field is required.</span>-->
                    <!--<span class="error-message">*The message is too short.</span>-->
                    <!--</label>-->

                    <div align="center">
                        <!--<a href="#" class="btn" data-type="submit">提交 </a>-->
                        <input type="submit" class="btn btn-primary btn-lg" value="提交"/>
                        <!--<button type="button" type="submit" class="btn btn-primary btn-lg">提交</button>-->
                    </div>
                </fieldset>
                <div class="modal fade response-message">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"
                                        aria-hidden="true">&times;</button>
                                <h4 class="modal-title">Modal title</h4>
                            </div>
                            <div class="modal-body">
                                You message has been sent! We will be in touch soon.
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <!--<div class="grid_6">-->
        <!--<p>24/7 support is on for all <a href="#" rel="nofollow" class="color1">premium templates</a>.</p>-->

        <!--<p><a href="#" rel="nofollow" class="color1">TemplateTuning</a> will help you with customization of-->
        <!--the chosen <br> theme.</p>-->
        <!--The Company Name Inc. <br>-->
        <!--9870 St Vincent Place,<br>-->
        <!--Glasgow, DC 45 Fr 45.<br>-->
        <!--Telephone: +1 800 603 6035<br>-->
        <!--FAX: +1 800 889 9898<br>-->
        <!--E-mail: <a href="mailto:mail@demolink.org">mail@demolink.org</a>-->
        <!--</div>-->
    </div>
    <div class="clear"></div>

</div>
<div class="container_12">
    <div class="grid_12">
        <div class="social-icons">
            <a href="#" class="fa fa-twitter"></a>
            <a href="#" class="fa fa-facebook"></a>
            <a href="#" class="fa fa-google-plus"></a>
            <a href="#" class="fa fa-pinterest"></a>
        </div>
    </div>
    <div class="clear"></div>
</div>
</body>
</html>