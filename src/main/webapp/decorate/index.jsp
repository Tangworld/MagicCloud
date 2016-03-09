<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page isELIgnored="false" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>first</title>
    </head>
    <body>
        <h1 align="center">欢迎进入旅游比价系统！</h1> <br>
        <%--<s:iterator value="#request.hello">--%>
            <%--<s:property /><br>--%>
        <%--</s:iterator>--%>
        <%--<s:property value="#request.hello"/>--%>
        <s:property value="#session.login"/><br>
        <s:property value="#session.regist"/><br>
    <table align="center">
        <form action="${pageContext.request.contextPath}/first/show" id="test" method="post">
            出发地：<input id="scity" type="text" name="scity" value="南京"><br>
            目的地：<input id="dcity" type="text" name="dcity" value="北京"><br>
            <button id="try">提交！</button>
            <%--<s:property value="message" />--%>
        </form>
    </table>
    <s:debug></s:debug>
    </body>
</html>


