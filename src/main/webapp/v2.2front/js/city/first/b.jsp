    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
            <%
        //接收参数
        String code = request.getParameter("code");
        String name = request.getParameter("name");
        //控制台输出表单数据看看
        System.out.println("code=" + code + ",name=" + name);
        //检查code的合法性
        if (code == null || code.trim().length() == 0) {
                out.println("code can't be null or empty");
        } else if (code != null && code.equals("admin")) {
                out.println("code can't be admin");
        } else {
                out.println("OK");
        }
%>