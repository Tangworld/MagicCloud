<%--
  Created by IntelliJ IDEA.
  User: hadoop
  Date: 16-2-23
  Time: 下午7:24
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
<h1>添加新的待爬站点</h1>
<table>
  <form id="adminadd" name="adminadd" action="${pageContext.request.contextPath}/add/redisadminaddaction"
        class="action.RedisAdminAddAction" method="post">
    网站名称：<input id="adminaddname" name="name" type="text" /> *<br>
    网&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：<input id="adminaddurl" name="url" type="text" /> *<br>
    <input id="add" name="add" type="submit" value="确认提交">
  </form>
</table>
</body>
</html>
