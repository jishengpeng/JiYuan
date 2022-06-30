<%--
  Created by IntelliJ IDEA.
  User: lijiabo
  Date: 2022/6/30
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>搜索结果</title>
</head>
<body>
<%
    String search = request.getParameter("search");

  try {
    Class.forName("oracle.jdbc.OracleDriver");
    Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//192.168.0.104:1521/orcl", "c##lijiabo", "123456");
    Statement stmt = conn.createStatement();
    ArrayList<String> userResult = new ArrayList<String>();
    ArrayList<String> orderResult = new ArrayList<String>();
    ResultSet rsUser = stmt.executeQuery("select * from JIYUANUSER where username like '%" + search + "%'");
    while (rsUser.next()) {
      userResult.add(rsUser.getString("username"));
    }
    ResultSet rsOrder = stmt.executeQuery("select * from JIYUANORDER where id like '%" + search + "%'");
    while (rsOrder.next()) {
      orderResult.add(rsOrder.getString("ordername"));
    }
    // display
    out.println("<h1>搜索结果</h1>");
    out.println("<h2>用户</h2>");
    for (String user : userResult) {
      out.println(user + "<br>");
    }
    out.println("<h2>订单</h2>");
    for (String order : orderResult) {
      out.println(order + "<br>");
    }
    out.println("<a href=\"index.html\">返回</a>");
    stmt.close();
    conn.close();
  } catch (Exception e) {
    e.printStackTrace();
  }
%>
</body>
</html>
