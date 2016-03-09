<%--
  Created by IntelliJ IDEA.
  User: hadoop
  Date: 15-12-21
  Time: 下午7:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title></title>
</head>
<body>
<meta http-equiv="refresh" content="3;URL=${pageContext.request.contextPath}/regist.jsp">
  <s:property value="#session.registnul"/>
  <s:property value="#session.registwrongpassword"/>
  <s:property value="#session.registmail"/>
<h1 align="center">3秒后返回注册页面继续完成注册</h1>


</body>
</html>
