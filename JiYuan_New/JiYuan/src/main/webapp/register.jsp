<%@ page import="javax.persistence.EntityManager" %>
<%@ page import="javax.persistence.EntityManagerFactory" %>
<%@ page import="javax.persistence.Persistence" %>
<%@ page import="top.lijiabo.jiyuan.User" %>
<%@ page import="javax.persistence.EntityTransaction" %><%--
  Created by IntelliJ IDEA.
  User: lijiabo
  Date: 2022/6/29
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册处理</title>
</head>
<body>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String mobile = request.getParameter("mobile");

        EntityManagerFactory emf = Persistence.createEntityManagerFactory("oracle", null);
        EntityManager em = emf.createEntityManager();
        try {
            User user = new User();
            user.setUsername(username);
            user.setPasswd(password);
            user.setMobile(mobile);
            user.setRole(User.Role.USER);

            EntityTransaction tx = em.getTransaction();
            tx.begin();
            em.persist(user);
            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            em.close();
            emf.close();
        }
    %>
</body>
</html>
