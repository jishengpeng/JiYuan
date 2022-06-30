<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: lijiabo
  Date: 2022/6/29
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            Class.forName("oracle.jdbc.OracleDriver");
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//192.168.0.104:1521/orcl", "c##lijiabo", "123456");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT PASSWD FROM JIYUANUSER WHERE USERNAME='" + username + "'");
            if (rs.next()) {
                if (password.equals(rs.getString("PASSWD"))) {
                    rs.close();
                    // Search User Role
                    rs = stmt.executeQuery("SELECT ROLE FROM JIYUANUSER WHERE USERNAME='" + username + "'");
                    if (rs.next()) {
                        String role = rs.getString("ROLE");
                        // Set Cookie
                        Cookie cookie = new Cookie("username", username);
                        Cookie cookie2 = new Cookie("role", role);
                        cookie.setMaxAge(60 * 60 * 24 * 7);
                        response.addCookie(cookie);
                        response.addCookie(cookie2);
                        // 跳转
                        if (role.equalsIgnoreCase("admin")) {
                            response.sendRedirect("admin.jsp");
                        } else if (role.equalsIgnoreCase("user")) {
                            response.sendRedirect("index.html");
                        }
                    }
                } else {
                    out.println("<h1>密码错误</h1><br/><p>3秒后将跳转到登录页面</p>");
                    rs.close();
                    stmt.close();
                    conn.close();
                    response.setHeader("refresh", "3;url=login.jsp");
                }
            } else {
                out.println("<h1>用户名不存在</h1><br/><p>3秒后将跳转到登录页面</p>");
                rs.close();
                stmt.close();
                conn.close();
                response.setHeader("refresh", "3;url=login.jsp");
            }
            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</body>
</html>
