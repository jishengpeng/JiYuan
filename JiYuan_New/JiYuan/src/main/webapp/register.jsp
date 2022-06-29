<%@ page import="javax.persistence.EntityManager" %>
<%@ page import="javax.persistence.EntityManagerFactory" %>
<%@ page import="javax.persistence.Persistence" %>
<%@ page import="top.lijiabo.jiyuan.User" %>
<%@ page import="javax.persistence.EntityTransaction" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %><%--
  Created by IntelliJ IDEA.
  User: lijiabo
  Date: 2022/6/29
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>注册处理</title>
</head>
<body>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String mobile = request.getParameter("mobile");

        try {
            Class.forName("oracle.jdbc.OracleDriver");
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//192.168.0.104:1521/orcl", "c##lijiabo", "123456");
            Statement stmt = conn.createStatement();
            stmt.executeUpdate("insert into JIYUANUSER(username,passwd,mobile,role) values('" + username + "','" + password + "','" + mobile + "','" + "user" + "')");
            stmt.close();
            conn.close();
            out.println("<h1>注册成功</h1><br/><p>3秒后将跳转到主页</p>");
            response.setHeader("refresh", "3;url=index.html");
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</body>
</html>
