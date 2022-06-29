<%--
  Created by IntelliJ IDEA.
  User: lijiabo
  Date: 2022/6/29
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>接单处理</title>
</head>
<body>
    <%
        String id = request.getParameter("id");

        try {
            Class.forName("oracle.jdbc.OracleDriver");
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//192.168.0.104:1521/orcl", "c##lijiabo", "123456");
            Statement stmt = conn.createStatement();
            // Get username from Cookie
            Cookie[] cookies = request.getCookies();
            String username = "";
            for (Cookie cookie : cookies) {
                if (cookie.getName().equalsIgnoreCase("username")) {
                    username = cookie.getValue();
                }
            }
            // Get uid from username
            String sql = "select id from JIYUANUSER where username = '" + username + "'";
            ResultSet rs = stmt.executeQuery(sql);
            int uid = 0;
            if (rs.next()) {
                uid = rs.getInt("id");
            }
            // Get order RECEIVEUID
            sql = "select RECEIVEUID from JIYUANORDER where id = " + id;
            rs = stmt.executeQuery(sql);
            int receiveuid = 0;
            if (rs.next()) {
                receiveuid = rs.getInt("RECEIVEUID");
            }
            if(receiveuid!=0) {
                stmt.close();
                conn.close();
                out.println("<h1>此订单已被接单</h1><br/><p>3秒后将跳转到主页</p>");
                response.setHeader("refresh", "3;url=index.html");
            }
            else {
                // Update order RECEIVEUID to uid
                sql = "update JIYUANORDER set RECEIVEUID = " + uid + " where id = " + id;
                stmt.executeUpdate(sql);
                stmt.close();
                conn.close();
                out.println("<h1>接单成功</h1><br/><p>3秒后将跳转到主页</p>");
                response.setHeader("refresh", "3;url=index.html");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</body>
</html>
