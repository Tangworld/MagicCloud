    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
            <%
        //���ղ���
        String code = request.getParameter("code");
        String name = request.getParameter("name");
        //����̨��������ݿ���
        System.out.println("code=" + code + ",name=" + name);
        //���code�ĺϷ���
        if (code == null || code.trim().length() == 0) {
                out.println("code can't be null or empty");
        } else if (code != null && code.equals("admin")) {
                out.println("code can't be admin");
        } else {
                out.println("OK");
        }
%>