<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>管理界面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.min.css" rel="stylesheet">
<!--    <link href="style.css" rel="stylesheet" type="text/css">-->
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">吉园</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">主页</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="hall.html">广场</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            更多
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="login.html">登录</a></li>
                            <li><a class="dropdown-item" href="register.html">注册</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="#">关于我们</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled">我的</a>
                    </li>
                </ul>
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="输入搜索内容" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="row">
            <div class="col-md">
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>UID</th>
                                <th>用户名</th>
                                <th>角色</th>
                                <th>上次登录</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>000001</td>
                                <td>李嘉博</td>
                                <td>管理员</td>
                                <td></td>
                                <td><a href="#">删除</a></td>
                            </tr>
                            <tr>
                                <td>000002</td>
                                <td>李嘉博</td>
                                <td>管理员</td>
                                <td></td>
                                <td><a href="#">删除</a></td>
                            </tr>
                            <tr>
                                <td>000003</td>
                                <td>李嘉博</td>
                                <td>管理员</td>
                                <td></td>
                                <td><a href="#">删除</a></td>
                            </tr>
                            <tr>
                                <td>000004</td>
                                <td>李嘉博</td>
                                <td>管理员</td>
                                <td></td>
                                <td><a href="#">删除</a></td>
                            </tr>
                            <tr>
                                <td>000005</td>
                                <td>李嘉博</td>
                                <td>管理员</td>
                                <td></td>
                                <td><a href="#">删除</a></td>
                            </tr>
                            <tr>
                                <td>000006</td>
                                <td>李嘉博</td>
                                <td>管理员</td>
                                <td></td>
                                <td><a href="#">删除</a></td>
                            </tr>
                            <tr>
                                <td>000007</td>
                                <td>李嘉博</td>
                                <td>管理员</td>
                                <td></td>
                                <td><a href="#">删除</a></td>
                            </tr>
                            <tr>
                                <td>000008</td>
                                <td>李嘉博</td>
                                <td>管理员</td>
                                <td></td>
                                <td><a href="#">删除</a></td>
                            </tr>
                            <tr>
                                <td>000009</td>
                                <td>李嘉博</td>
                                <td>管理员</td>
                                <td></td>
                                <td><a href="#">删除</a></td>
                            </tr>
                            <tr>
                                <td>000010</td>
                                <td>李嘉博</td>
                                <td>管理员</td>
                                <td></td>
                                <td><a href="#">删除</a></td>
                            </tr>
                            <tr>
                                <td>000011</td>
                                <td>李嘉博</td>
                                <td>管理员</td>
                                <td></td>
                                <td><a href="#">删除</a></td>
                            </tr>
                            <tr>
                                <td>000012</td>
                                <td>李嘉博</td>
                                <td>管理员</td>
                                <td></td>
                                <td><a href="#">删除</a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md">
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>订单名</th>
                            <th>订单类别</th>
                            <th>截止日期</th>
                            <th>图片</th>
                            <th>发布者UID</th>
                            <th>接收者UID</th>
                            <th>订单价格</th>
                            <th>订单状态</th>
                        </tr>
                        </thead>
                        <tbody>
                        <!--<tr>
                            <td>000001</td>
                            <td>李嘉博</td>
                            <td>管理员</td>
                            <td></td>
                            <td><a href="#">删除</a></td>
                        </tr>-->
                        <%
                            try {
                                Class.forName("oracle.jdbc.OracleDriver");
                                Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//192.168.0.104:1521/orcl", "c##lijiabo", "123456");
                                Statement stmt = conn.createStatement();
                                ResultSet rs = stmt.executeQuery("select * from JIYUANORDER");
                                while (rs.next()) {
                                    String id = rs.getString("ID");
                                    String orderName = rs.getString("ORDERNAME");
                                    String orderClass = rs.getString("ORDERCLASS");
                                    String price = rs.getString("PRICE");
                                    String endTime = rs.getString("ENDTIME");
                                    String picture = rs.getString("PICTURE");
                                    Integer postUid = rs.getInt("POSTUID");
                                    Integer receiveUid = rs.getInt("RECEIVEUID");
                                    String status = rs.getString("STATUS");
                                    out.println("<tr>");
                                    out.println("<td>" + id + "</td>");
                                    out.println("<td>" + orderName + "</td>");
                                    out.println("<td>" + orderClass + "</td>");
                                    out.println("<td>" + price + "</td>");
                                    out.println("<td>" + endTime + "</td>");
                                    out.println("<td>" + picture + "</td>");
                                    out.println("<td>" + postUid + "</td>");
                                    out.println("<td>" + receiveUid + "</td>");
                                    out.println("<td>" + status + "</td>");
                                    out.println("</tr>");
                                }
                                stmt.close();
                                conn.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <nav class="navbar fixed-bottom navbar-light bg-light">
        <div class="container-fluid">
            <span class="navbar-text">LASTRDO All Rights Reserved</span>
        </div>
    </nav>
    <script>
        /*function getDateTime() {
            const date = new Date();
            let sec = date.getSeconds();
            if (sec < 10) {
                sec = "0"+sec;
            }
            return date.getFullYear()+"年"+(date.getMonth()+1)+"月"+date.getDate()+"日 "+date.getHours()+":"+date.getMinutes()+":"+sec
        }
        for (let i=0; i<12; i++) {
            let elmt = $('body > table > tbody > tr:nth-child('+(i+1)+') > td:nth-child(4)');
            elmt.innerHTML = getDateTime();
        }*/ // 为什么没用？？？
    </script>
    <script src="https://code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>