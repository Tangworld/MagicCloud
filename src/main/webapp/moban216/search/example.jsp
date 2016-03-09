<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page isELIgnored="false" %>
<html>
 <head>
  <title> 爬取参数设置</title>
     <h1>爬取参数设置</h1>

 </head>
 <body>

  <form>
      <h3>爬取频率：</h3>
      <select name="rate" id="selectrate">
          <option value="1">1天</option>
          <option value="2">2天</option>
          <option value="3">3天</option>
          <option value="4">4天</option>
          <option value="5">5天</option>
          <option value="6">6天</option>
          <option value="7">7天</option>
      </select>
      <h3>/次</h3>
      <input type="submit" value="确认提交">
  </form>

</body>
</html>
