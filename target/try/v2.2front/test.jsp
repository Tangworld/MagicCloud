<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page isELIgnored="false" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <!--bootstrap与登录框部分部分-->
    <link rel="stylesheet" href="./css/bootstrap.css"/>
    <!--这里有些奇怪？min与大的区别只有数据量的区别-->
    <link rel="stylesheet" href="./css/loging.css"/>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <!-- bootstrap end-->
</head>
<body>
<div>
    <form class="form-inline">
        <div class="form-group">
            <label for="exampleInputName2">Name</label>
            <input type="text" class="form-control" id="exampleInputName2" placeholder="Jane Doe">
        </div>
        <div class="form-group">
            <label for="exampleInputEmail2">Email</label>
            <input type="email" class="form-control" id="exampleInputEmail2" placeholder="jane.doe@example.com">
        </div>
        <button type="submit" class="btn btn-default">Send invitation</button>
    </form>
</div>
</body>
</html>