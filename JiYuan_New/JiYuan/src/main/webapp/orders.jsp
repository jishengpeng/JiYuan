<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sport A Ecommerce Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
    <link href="css/bootstrap3.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <!--theme-style-->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Sport Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!--fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
    <!--//fonts-->

</head>
<body>
<!--header-->
<div class="line">

</div>
<div class="header">
    <div class="logo">
        <a href="index.html"><img src="images/main-logo.jpg" alt=""></a>
        <!--			<a href="index.html"><h1>吉园</h1></a>-->
    </div>
    <div class="header-top">
        <div class="header-grid">
            <ul class="header-in">
                <li><a href="account.jsp">个人信息</a></li>
                <!--						<li>	-->
                <!--							<select class="in-drop">-->
                <!--							  <option value="Dollars" class="in-of">Dollars</option>-->
                <!--							  <option value="Euro" class="in-of">Euro</option>-->
                <!--							  <option value="Yen" class="in-of">Yen</option>-->
                <!--							</select>-->
                <!--						</li>					-->
            </ul>
            <div class="search-box">
                <div id="sb-search" class="sb-search">
                    <form>
                        <input class="sb-search-input" placeholder="Enter your search term..." type="search"
                               name="search" id="search">
                        <input class="sb-search-submit" type="submit" value="">
                        <span class="sb-icon-search"> </span>
                    </form>
                </div>
            </div>
            <!-- search-scripts -->
            <script src="js/classie.js"></script>
            <script src="js/uisearch.js"></script>
            <script>
                new UISearch(document.getElementById('sb-search'));
            </script>
            <!-- //search-scripts -->
            <div class="online">
                <a href="post.html">我要发单</a>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="header-bottom">
            <div class="h_menu4"><!-- start h_menu4 -->
                <a class="toggleMenu" href="#">Menu</a>
                <ul class="nav">
                    <li class="active"><a href="orders.jsp">广场区</a></li>
                    <li><a href="orders.jsp">替课区</a></li>
                    <li><a href="orders.jsp">作业区</a>
                    </li>
                    <li><a href="orders.jsp">跑腿区</a></li>
                    <li><a href="orders.jsp">其他区</a></li>
                    <li><a href="orders.jsp">更多功能<i> </i></a>
                        <ul>
                            <li><a href="contact.html">联系客服</a></li>
                            <li><a href="account.jsp">个人信息</a></li>
                            <li><a href="order-status.jsp">订单状态</a></li>
                        </ul>
                    </li>
                </ul>
                <script type="text/javascript" src="js/nav.js"></script>
            </div><!-- end h_menu4 -->
            <ul class="header-bottom-in">
                <!--						<li ><select class="drop">-->
                <!--							  <option value="Dollars" class="in-of">Get Active</option>-->
                <!--							  <option value="Euro" class="in-of">Get Active1</option>-->
                <!--							  <option value="Yen" class="in-of">Get Active2</option>-->
                <!--							</select> </li>-->
                <li><select class="drop">
                    <option value="Dollars" class="in-of">当前所在社区：吉林大学</option>
                    <option value="Euro" class="in-of">哈尔滨工业大学社区</option>
                    <option value="Yen" class="in-of">大连理工社区</option>
                </select></li>
            </ul>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="clearfix"></div>
</div>

<div class="product-grids">
    <div class="container">
        <%--<div class="product-top">
            <div class="col-md-4 grid-product-in">
                <div class=" product-grid">
                    <a href="receive.jsp"><img class="img-responsive " src="images/pr.png" alt=""></a>
                    <div class="shoe-in">
                        <h6><a href="receive.jsp">Lorem Ipsum is simply dummy </a></h6>
                        <label>$67.99</label>
                        <a href="receive.jsp" class="store">FIND A STORE</a>
                    </div>

                    <b class="plus-on">+</b>
                </div>
            </div>
            <div class="col-md-4 grid-product-in">
                <div class=" product-grid">
                    <a href="receive.jsp"><img class="img-responsive " src="images/pr1.png" alt=""></a>
                    <div class="shoe-in">
                        <h6><a href="receive.jsp">Lorem Ipsum is simply dummy </a></h6>
                        <label>$67.99</label>
                        <a href="receive.jsp" class="store">FIND A STORE</a>
                    </div>

                    <b class="plus-on">+</b>
                </div>
            </div>
            <div class="col-md-4 grid-product-in">
                <div class=" product-grid">
                    <a href="receive.jsp"><img class="img-responsive " src="images/pr2.png" alt=""></a>
                    <div class="shoe-in">
                        <h6><a href="receive.jsp">Lorem Ipsum is simply dummy </a></h6>
                        <label>$67.99</label>
                        <a href="receive.jsp" class="store">FIND A STORE</a>
                    </div>

                    <b class="plus-on">+</b>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>--%>
        <%
            try {
                Class.forName("oracle.jdbc.OracleDriver");
                Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//192.168.0.104:1521/orcl", "c##lijiabo", "123456");
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("select * from JIYUANORDER");
                int i = 0;
                while (rs.next()) {
                    Integer id = rs.getInt("ID");
                    String orderName = rs.getString("ORDERNAME");
                    String orderClass = rs.getString("ORDERCLASS");
                    Integer price = rs.getInt("PRICE");
                    String endTime = rs.getString("ENDTIME");
                    String picture = rs.getString("PICTURE");
                    Integer postUid = rs.getInt("POSTUID");
                    Integer receiveUid = rs.getInt("RECEIVEUID");
                    String status = rs.getString("STATUS");

                    if(i%3==0) {
                        out.println("<div class=\"product-top\">");
                    }
                    out.println("<div class=\"col-md-4 grid-product-in\">");
                    out.println("<div class=\" product-grid\">");
                    out.println("<a href=\"receive.jsp?orderID="+id+"\"><img class=\"img-responsive \" src=\"images/pr.png\" alt=\"\"></a>");
                    out.println("<div class=\"shoe-in\">");
                    out.println("<h6><a href=\"receive.jsp?orderID="+id+"\">"+orderName+"</a></h6>");
                    out.println("<label>"+price+"</label>");
                    out.println("<a href=\"receive.jsp?orderID="+id+"\" class=\"store\">FIND A STORE</a>");
                    out.println("</div>");
                    out.println("<b class=\"plus-on\">+</b>");
                    out.println("</div>");
                    out.println("</div>");
                    if(i%3==2) {
                        out.println("<div class=\"clearfix\"></div>");
                        out.println("</div>");
                    }

                    i++;
                }
                stmt.close();
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </div>
</div>

<!--footer-->
<div class="footer">
    <div class="col-md-3 footer-left">
        <h4>主要功能</h4>
        <div class="run-top">
            <ul class="run-grid">
                <li><a href="orders.jsp">主页</a></li>
                <li><a href="orders.jsp">广场区</a></li>
                <li><a href="orders.jsp">替课区</a></li>
                <li><a href="orders.jsp">作业区</a></li>
                <li><a href="orders.jsp">跑腿区</a></li>
                <li><a href="orders.jsp">其他区</a></li>
            </ul>
            <ul class="run-grid">
                <li><a href="orders.jsp">我要接单</a></li>
                <li><a href="orders.jsp">我要发单</a></li>
                <li><a href="orders.jsp">支付系统</a></li>
            </ul>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="col-md-3 footer-left left-footer">
        <h4>吉园进展</h4>
        <div class="run-top top-run">
            <ul class="run-grid">
                <li><a href="#">重要新闻</a></li>
                <li><a href="#">开放型社区</a></li>
                <li><a href="#">版本更新日志</a></li>
                <li><a href="receive.jsp">吉园介绍</a></li>
                <li><a href="#">多功能社区</a></li>
                <li><a href="#">更多信息</a></li>
            </ul>
            <ul class="run-grid">
                <li><a href="#">吉林大学官网</a></li>
                <li><a href="contact.html">吉林大学软件学院</a></li>
                <li><a href="#">项目Github</a></li>
            </ul>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="col-md-2 footer-left left-footer">
        <h4>个人信息</h4>
        <ul class="run-grid-in">
            <li><a href="account.jsp">主页</a></li>
            <li><a href="#">信誉系统</a></li>
            <li><a href="#">订单状态</a></li>
        </ul>
    </div>
    <div class="col-md-4 footer-left left-footer">
        <ul class="social-in">
            <li><a href="#"><i> </i></a></li>
            <li><a href="#"><i class="youtube"> </i></a></li>
            <li><a href="#"><i class="facebook"> </i></a></li>
            <li><a href="#"><i class="twitter"> </i></a></li>
        </ul>
        <div class="letter">
            <h5>网站系统</h5>
            <span>JIYUAN</span>
            <h6>吉林大学软件系统综合实践课设</h6>
            <a href="order-status.jsp" class="sign">进行登录来获取更多信息</a>
            <p class="footer-class"> © 2022 JiYuan All Rights Reserved | 开发者：季圣鹏，李嘉博</p>
        </div>

    </div>
    <div class="clearfix"></div>
</div>
</body>
</html>