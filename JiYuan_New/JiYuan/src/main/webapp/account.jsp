<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sport A Ecommerce Category Flat Bootstarp Resposive Website Template | Home :: w3layouts</title>
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
<%
	// Get username from cookie
	String username = "";
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (Cookie cookie : cookies) {
			if (cookie.getName().equalsIgnoreCase("username")) {
				username = cookie.getValue();
			}
		}
	}
	String role = "";
	int numReceive = 0;
	int numPost = 0;
	String mobile = "";
	int credit = 0;
	String community = "";
	// Get uid from username in database
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//192.168.0.104:1521/orcl", "c##lijiabo", "123456");
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select id from JIYUANUSER where username = '" + username + "'");
		int uid = 0;
		if (rs.next()) {
			uid = rs.getInt("id");
		}
		// Get user info
		rs = stmt.executeQuery("select * from JIYUANUSER where id = " + uid);
		if (rs.next()) {
			role = rs.getString("ROLE");
			numReceive = rs.getInt("NUMRECEIVE");
			numPost = rs.getInt("NUMPOST");
			mobile = rs.getString("MOBILE");
			credit = rs.getInt("CREDIT");
			community = rs.getString("COMMUNITY");
		}
		stmt.close();
		conn.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<!--header-->
<div class="line">

</div>
<div class="header">
    <div class="logo">
        <a href="index.html"><img src="images/main-logo.jpg" alt=""></a>
        <!--			<a href="index.html"><h1>??????</h1></a>-->
    </div>
    <div class="header-top">
        <div class="header-grid">
            <ul class="header-in">
                <li><a href="account.jsp">????????????</a></li>
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
                <a href="post.html">????????????</a>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="header-bottom">
            <div class="h_menu4"><!-- start h_menu4 -->
                <a class="toggleMenu" href="#">Menu</a>
                <ul class="nav">
                    <li class="active"><a href="orders.jsp">?????????</a></li>
                    <li><a href="orders.jsp">?????????</a></li>
                    <li><a href="orders.jsp">?????????</a>
                    </li>
                    <li><a href="orders.jsp">?????????</a></li>
                    <li><a href="orders.jsp">?????????</a></li>
                    <li><a href="orders.jsp">????????????<i> </i></a>
                        <ul>
                            <li><a href="contact.html">????????????</a></li>
                            <li><a href="account.jsp">????????????</a></li>
                            <li><a href="order-status.jsp">????????????</a></li>
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
                    <option value="Dollars" class="in-of">?????????????????????????????????</option>
                    <option value="Euro" class="in-of">???????????????????????????</option>
                    <option value="Yen" class="in-of">??????????????????</option>
                </select></li>
            </ul>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="clearfix"></div>
</div>
<!---->
<div class="container">
    <div class="account">
        <h2>??????????????????</h2>
        <div class="account-pass">
            <div class="col-md-7 account-top">
                <form>
                    <span><span style="color: red; ">????????????:</span></span>
                    <span><%=username%></span>
					<span><span style="color: red; ">??????:</span></span>
					<span><%=role%></span>
					<%--<span><span style="color: red; ">????????????:</span></span>
					<span><%=community%></span>--%>
                    <span><span style="color: red; ">????????????:</span></span>
                    <span><%=mobile%></span>
                    <span>????????????:<%=numReceive%></span>
                    <span>????????????:<%=numPost%></span>
                    <span>?????????????????????????????????????????????????????????:</span>
                    <input type="password">
                    <input type="button" value="????????????">
                    <br><input type="submit" value="????????????">
                </form>
            </div>
            <div class="col-md-5 left-account ">
                <a href="receive.jsp"><img class="img-responsive " src="images/????????????.png" alt=""></a>
                <div class="five">
                    <h1><%=credit%>???</h1><span>????????????</span>
                </div>
                <a href="#" class="create">??????????????????90??????,??????????????????!!!</a>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

</div>

<!--footer-->
<div class="footer">
    <div class="col-md-3 footer-left">
        <h4>????????????</h4>
        <div class="run-top">
            <ul class="run-grid">
                <li><a href="orders.jsp">??????</a></li>
                <li><a href="orders.jsp">?????????</a></li>
                <li><a href="orders.jsp">?????????</a></li>
                <li><a href="orders.jsp">?????????</a></li>
                <li><a href="orders.jsp">?????????</a></li>
                <li><a href="orders.jsp">?????????</a></li>
            </ul>
            <ul class="run-grid">
                <li><a href="orders.jsp">????????????</a></li>
                <li><a href="orders.jsp">????????????</a></li>
                <li><a href="orders.jsp">????????????</a></li>
            </ul>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="col-md-3 footer-left left-footer">
        <h4>????????????</h4>
        <div class="run-top top-run">
            <ul class="run-grid">
                <li><a href="#">????????????</a></li>
                <li><a href="#">???????????????</a></li>
                <li><a href="#">??????????????????</a></li>
                <li><a href="receive.jsp">????????????</a></li>
                <li><a href="#">???????????????</a></li>
                <li><a href="#">????????????</a></li>
            </ul>
            <ul class="run-grid">
                <li><a href="#">??????????????????</a></li>
                <li><a href="contact.html">????????????????????????</a></li>
                <li><a href="#">??????Github</a></li>
            </ul>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="col-md-2 footer-left left-footer">
        <h4>????????????</h4>
        <ul class="run-grid-in">
            <li><a href="account.jsp">??????</a></li>
            <li><a href="#">????????????</a></li>
            <li><a href="#">????????????</a></li>
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
            <h5>????????????</h5>
            <span>JIYUAN</span>
            <h6>??????????????????????????????????????????</h6>
            <a href="order-status.jsp" class="sign">?????????????????????????????????</a>
            <p class="footer-class"> ?? 2022 JiYuan All Rights Reserved | ?????????????????????????????????</p>
        </div>

    </div>
    <div class="clearfix"></div>
</div>
</body>
</html>