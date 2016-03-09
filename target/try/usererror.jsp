<%--
  Created by IntelliJ IDEA.
  User: hadoop
  Date: 15-12-20
  Time: 下午8:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page isELIgnored="false" %>
<html>
<meta http-equiv="refresh" content="3;URL=${pageContext.request.contextPath}/v2.2front/login.jsp">
<head>
    <title></title>
</head>
<body>

<h1 align="center"><s:property value="#session.nouser"/></h1>
<h1 align="center"><s:property value="#session.usererror"/></h1>
<h1 align="center"><s:property value="#session.nul"/></h1>
<h2 align="center">3秒后自动返回登录页面！</h2>
</body>
</html>
