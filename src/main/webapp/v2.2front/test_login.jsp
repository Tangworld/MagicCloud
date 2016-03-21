<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page isELIgnored="false" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <script src="js/jquery.js"></script>
    <!--bootstrap与登录框部分部分-->
    <link rel="stylesheet" href="./css/bootstrap.css"/>
    <!--这里有些奇怪？min与大的区别只有数据量的区别-->
    <link rel="stylesheet" href="./css/loging.css"/>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <!-- bootstrap end-->
</head>
<body>


<!--<div id=win-->
     <!--style="display:none; POSITION:absolute; left:50%; top:50%; width:600px; height:400px; margin-left:-300px; margin-top:-200px; border:1px solid #888; background-color:#edf; text-align:center">-->
    <!--这是DIV登录框示例<br><a href="javascript:closeLogin();">关闭登录框</a></div>-->
<!--<script>-->
    <!--function openLogin() {-->
        <!--document.getElementById("win").style.display = "";-->
    <!--}-->
    <!--function closeLogin() {-->
        <!--document.getElementById("win").style.display = "none";-->
    <!--}-->
<!--</script>-->


    <div class="modal-dialog" id="login">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" onclick="closeLogin()">x</button>
                <h1 class="text-center text-primary">登录</h1>
            </div>
            <div class="modal-body">
                <form action="" class="form col-md-12 center-block">
                    <div class="form-group">
                        <input type="text" class="form-control input-lg" placeholder="电子邮件">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control input-lg" placeholder="登录密码">
                    </div>
                    <div class="form-group">
                        <button class="btn btn-primary btn-lg btn-block">立刻登录</button>
                        <span><a href="#">找回密码</a></span>
                        <span><a href="#" class="pull-right">注册</a></span>
                    </div>
                </form>
            </div>
            <div class="modal-footer">

            </div>
        </div>
    </div>


<script>
    function closeLogin(){
        document.getElementById('login1').style.display="none";
    }
</script>




<!--<a href="javascript:openLogin();">打开登录框</a>-->


</body>
</html>

