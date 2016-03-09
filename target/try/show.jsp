<%--
  Created by IntelliJ IDEA.
  User: hadoop
  Date: 15-12-18
  Time: 下午6:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>搜索结果</title>
</head>
<body >

<table border="1" align="center">
    <th><h1>搜索结果</h1></th>
    <tr><td><s:property value="#request.city"/></td></tr><br>
    <tr><td><s:iterator value="#request.hello">
                <s:property/><br>
            </s:iterator>
    </td></tr>
</table>
</body>
</html>
