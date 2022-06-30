<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: lijiabo
  Date: 2022/6/29
  Time: 19:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发单</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String orderName = request.getParameter("order-name");
        String orderClass = request.getParameter("order-class");
        String price = request.getParameter("price");
        String endTime = request.getParameter("end-time");
//        String picture = request.getParameter("picture");

        // Get Cookie
        String userName = "";
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equalsIgnoreCase("username")) {
                    userName = cookie.getValue();
                }
            }
        }

        try {
            Class.forName("oracle.jdbc.OracleDriver");
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//192.168.0.104:1521/orcl", "c##lijiabo", "123456");
            Statement stmt = conn.createStatement();
            // Get User ID
            ResultSet rs = stmt.executeQuery("SELECT ID FROM JIYUANUSER WHERE username = '" + userName + "'");
            int userID = 0;
            if (rs.next()) {
                userID = rs.getInt("ID");
            }
            // Insert Order
            stmt.executeUpdate("insert into JIYUANORDER (ENDTIME, ORDERCLASS, ORDERNAME, PICTURE, POSTUID, PRICE, STATUS) values ('" + endTime + "', '" + orderClass + "', '" + orderName + "', '" + "empty" + "', '" + userID + "', '" + price + "', '" + "WAITING" + "')");
            // update user's numpost
            stmt.executeUpdate("update JIYUANUSER set numpost = numpost + 1 where id = '" + userID + "'");
            stmt.close();
            conn.close();
            out.println("<h1>发单成功</h1><br/><p>3秒后将跳转到主页</p>");
            response.setHeader("refresh", "3;url=index.html");
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</body>
</html>
