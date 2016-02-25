<<<<<<< HEAD
<%--
  Created by IntelliJ IDEA.
  User: hadoop
  Date: 15-12-23
  Time: 下午4:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page isELIgnored="false" %>
=======
<!DOCTYPE HTML>
<html>
<head>
<title>error page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="./css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
	<!-----start-wrap--------->
	<div class="wrap">
		<h1 align="center"></h1>
		<!-----start-content--------->
		<div class="content">
			<!-----start-logo--------->
			<div class="logo">
				<h1><a href="#"><img src="./images/logo.png"/></a></h1>
				<span><img src="./images/signal.png"/>网页貌似走丢了，快去联系程序员哥哥吧～～</span>
			</div>
			<!-----end-logo--------->
			<!-----start-search-bar-section--------->
			<div class="buttom">
				<div class="seach_bar">
					<p>you can go to <span><a href="/decorate/index.jsp">home</a></span> page or search here</p>
					<!-----start-sear-box--------->
					<div class="search_box">
					<form>
					   <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}"><input type="submit" value="">
				    </form>
					 </div>
				</div>
			</div>
			<!-----end-sear-bar--------->
		</div>
		<!----copy-right-------------->
	<p class="copy_right">&#169; 2015 Template by<a href="http://www.baidu.com" target="_blank">&nbsp;MagicCloud</a> </p>
	</div>
	
	<!---------end-wrap---------->
</body>
</html>
