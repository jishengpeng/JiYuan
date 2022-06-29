<%--
  Created by IntelliJ IDEA.
  User: lijiabo
  Date: 2022/6/29
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>检查</title>
</head>
<body>
    <%
        // Get Cookie
        Cookie[] cookies = request.getCookies();
        String username = "";
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("username")) {
                    username = cookie.getValue();
                }
            }
        }
        if (username.equals("")) {
            response.sendRedirect("login.html");
        } else {
            response.sendRedirect("account.html");
        }
    %>
</body>
</html>
