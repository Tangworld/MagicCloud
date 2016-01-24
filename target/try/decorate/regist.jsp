<%--
  Created by IntelliJ IDEA.
  User: hadoop
  Date: 15-12-21
  Time: 下午5:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>注册</title>
</head>
<body>
  <table>
    <form id="regist" name="regist" action="${pageContext.request.contextPath}/regist/registaction" class="action.RegistAction" method="post">
      用户名：<input id="registusername" name="registusername" type="text" value=<s:property value="#session.registusername"/> >*<br>
      密  码：<input id="registpassword" name="registpassword" type="password" value=<s:property value="#session.registpassword"/> >*<br>
      确认密码：<input id="registsecondpassword" name="registsecondpassword" type="password" value=<s:property value="#session.registsecondpassword"/> >* <br>
      邮  箱：<input id="mail" name="mail" type="text" value=<s:property value="#session.mail"/> >*
             <input id="submit" name="submit" type="submit" value="提交">
    </form>
  </table>

</body>
</html>
