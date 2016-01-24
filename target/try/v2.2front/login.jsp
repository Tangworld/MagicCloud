<!--做一个简单的登录框吧-->
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page isELIgnored="false" %>
<html lang="en" xmlns:display="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="./css/bootstrap.css"/>
    <style>
        html,body {
            height: 98%;
        }
        .box{
            filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#6699FF', endColorstr='#6699FF'); /*  IE */
            /*            background-image:linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
                        background-image:-o-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
                        background-image:-moz-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
                        background-image:-webkit-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
                        background-image:-ms-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);*/

            margin: 0 auto;
            position: relative;
            width: 100%;
            height: 100%;

            /*background-color: #080808;*/

        }
        .login-box {                      /*定义盒子的位置*/
            width: 100%;
            max-width:500px;
            height: 400px;
            position: absolute;
            top: 50%;
            margin-top: -170px;
            /*margin-left: auto;*/
            /*设置负值，为要定位子盒子的一半高度*/
            /*background-color: #18ffc0;*/
            border: 2px solid #c9b9c7;
            border-radius: 10px;

        }
        @media screen and (min-width:500px){
            .login-box {
                left: 50%;
                /*设置负值，为要定位子盒子的一半宽度*/
                margin-left: -250px;
            }
        }
        .form {
            width: 100%;
            max-width:500px;
            height: 275px;
            margin: 25px auto 0px auto;
            padding-top: 25px;
            /*background-color: #080808;*/
        }
        .login-content {
            height: 300px;
            width: 100%;
            max-width:500px;
            background-color: #2aabd2/* rgba(255, 250, 2550, .6);*/
            /*border-radius: 20px;*/
        float: left;
        }
        .input-group {
            margin-bottom: 30px!important;   /*优先级最高！！！！！！*/
        }
        .form-control,
        .input-group {
            height: 40px;
        }

        .form-group {
            margin-bottom: 50px !important;
        }
        .login-title {
            padding: 20px 10px;           /*10px失去效果*/
            background-color: #2cccff;
            border-top-right-radius: inherit;
            border-top-left-radius: inherit;
        }
        .login-title h1 {
            margin-top: 10px !important;  /* 字体距离上边框距离*/
        }
        .login-title small {
            color: #ffffff;
        }
        .link p {
            line-height: 20px;
            margin-top: 30px;
        }
        .btn-sm {
            padding: 8px 24px !important;
            font-size: 16px !important;
        }

        .modal{
            position: relative;
            top: -60%;

        }
    </style>
</head>
<body>
<div class="box">
    <div class="login-box">
        <div class="login-title text-center">
            <h1><small>登录</small></h1>
        </div>                       <!--登陆框正中间-->

        <div class="login-content">
            <div class="form">
                <form rol="form" style="align-content: center" action="${pageContext.request.contextPath}/login/loginaction" class="${pageContext.request.contextPath}.action.LoginAction" method="post">
                    <div class="form-group">
                        <div class="col-xs-12">
                            <div class="input-group">
                                <!--<label for="examInputEmail1">邮箱:</label>-->
                                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                                <input type="email" class="form-control input-lg" id="examInputEmail1" placeholder="请输入您的用户名"/>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-12">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                <input type="password" class="form-control input-lg" id="examInputPassword1" placeholder="请输入您的密码"/>
                            </div>
                        </div>
                        <!--<label for="examInputPassword1">密码:</label>-->
                    </div>

                    <div class="form-group form-actions">
                        <div class="row">
                            <%--< class="col-md-4 col-xs-offset-2 " >--%>
                                <input type="submit" class=" btn btn-lg btn-info" value="登录">
                                <%--<button type="button" class=" btn btn-lg btn-info"><span class="glyphicon glyphicon-off"></span> 登录</button>--%>
                            </div>
                            <!--kdjfkdfjdf-->
                            <!--<div class="col-md-4 col-xs-offset-5" >-->
                                <!--<div class="btn-group" role="group" aria-label="...">-->
                                <a href="regist.jsp"><button type="button" class="btn btn-lg btn-default">没有账号？</button></a>
                                <!--</div>-->
                            <!--</div>-->
                        </div>
                        <!--<button class="btn btn-primary" type="button">点击我</button>-->
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!--<div class="progress progress-striped">-->
<!--<div class="progress-bar progress-bar-danger" style="width: 30%"></div>-->
<!--</div>-->

<div class="modal" id="mymodal">                <!--整体弹出框-->
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title">消息</h4>
            </div>
            <div class="modal-body">
                <p>登录成功</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
                <!--<button type="button" class="btn btn-primary">保存</button>-->
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<div style="text-align:center;">
    <p>Development By<a href="http://www.mycodes.net/" target="_blank"> MR.zheng</a></p>
</div>




<script src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<!--<script>-->
    <!--$(function(){-->
        <!--$(".btn").click(function(){-->
            <!--$("#mymodal").modal("toggle");    /*元素隐藏切换*/-->
        <!--});-->
    <!--});-->
<!--</script>-->
</body>
</html>