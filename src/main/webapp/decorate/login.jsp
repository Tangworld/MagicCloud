<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: hadoop
  Date: 15-12-19
  Time: 下午5:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
  <table align="center" >

    <form id="login" action="${pageContext.request.contextPath}/login/loginaction" class="action.LoginAction" method="post">
      <tr>username:<input id="username" type="text" name="username" value="username"> </tr><br>
      <tr>password:<input id="password" type="password" name="password" value="password"> </tr><br>
      <tr><input id="submit" type="submit" value="登录"> </tr><br>
    </form>
    <tr>还没有账号？<a href="${pageContext.request.contextPath}/decorate/regist.jspegist.jsp">注册</a></tr>
  </table>

</body>
</html>
