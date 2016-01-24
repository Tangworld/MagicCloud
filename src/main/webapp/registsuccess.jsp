<%--
  Created by IntelliJ IDEA.
  User: hadoop
  Date: 15-12-21
  Time: 下午7:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title></title>
</head>
<body>
<meta http-equiv="refresh" content="3;URL=${pageContext.request.contextPath}/v2.2front/index.jsp">
<h1 align="center">恭喜你，<s:property value="#session.regist"/>,注册成功！<br></h1>
<h3 align="center">3秒后回到主页</h3>
</body>
</html>
