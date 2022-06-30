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
    <link href="<%=request.getContextPath()%>/css/bootstrap3.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <!--theme-style-->
    <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Sport Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript">
    addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!--fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
    <!--//fonts-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/etalage.css">
    <script src="<%=request.getContextPath()%>/js/jquery.etalage.min.js"></script>
    <script>
        jQuery(document).ready(function ($) {

            $('#etalage').etalage({
                thumb_image_width: 300,
                thumb_image_height: 400,
                source_image_width: 900,
                source_image_height: 1200,
                show_hint: true,
                click_callback: function (image_anchor, instance_id) {
                    alert('Callback example:\nYou clicked on an image with the anchor: "' + image_anchor + '"\n(in Etalage instance: "' + instance_id + '")');
                }
            });

        });
    </script>

</head>
<body>
<%
    String orderID = request.getParameter("orderID");
    if (orderID == null) {
        response.sendRedirect("/notexist.html");
    }
    // Get order information
    Integer id = 0;
    String endTime = "";
    String orderClass = "";
    String orderName = "";
    String picture = "";
    Integer postUid = 0;
    Integer price = 0;
    Integer receiveUid = 0;
    String status = "";
    try {
        Class.forName("oracle.jdbc.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//192.168.0.104:1521/orcl", "c##lijiabo", "123456");
        Statement stmt = conn.createStatement();
        // Get User ID
        ResultSet rs = stmt.executeQuery("select * from JIYUANORDER where id = " + orderID);
        if(rs.next()) {
            id = rs.getInt("ID");
            endTime = rs.getString("ENDTIME");
            orderClass = rs.getString("ORDERCLASS");
            orderName = rs.getString("ORDERNAME");
            picture = rs.getString("PICTURE");
            postUid = rs.getInt("POSTUID");
            price = rs.getInt("PRICE");
            receiveUid = rs.getInt("RECEIVEUID");
            status = rs.getString("STATUS");
        }

        rs.close();
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
            <script src="<%=request.getContextPath()%>/js/classie.js"></script>
            <script src="<%=request.getContextPath()%>/js/uisearch.js"></script>
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
                <script type="text/javascript" src="<%=request.getContextPath()%>/js/nav.js"></script>
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
<!---->
<div class="container">
    <div class="single">
        <div class="col-md-9 top-in-single">
            <div class="col-md-5 single-top">
                <ul id="etalage" style="max-height: 500px; overflow: hidden">
                    <li>
                        <a href="optionallink.html">
                            <img class="etalage_thumb_image img-responsive" src="images/si1.jpg" alt="">
                            <img class="etalage_source_image img-responsive" src="images/s2.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <img class="etalage_thumb_image img-responsive" src="images/si2.jpg" alt="">
                        <img class="etalage_source_image img-responsive" src="images/s3.jpg" alt="">
                    </li>
                    <li>
                        <img class="etalage_thumb_image img-responsive" src="images/si.jpg" alt="">
                        <img class="etalage_source_image img-responsive" src="images/s1.jpg" alt="">
                    </li>
                    <li>
                        <img class="etalage_thumb_image img-responsive" src="images/si3.jpg" alt="">
                        <img class="etalage_source_image img-responsive" src="images/s4.jpg" alt="">
                    </li>
                </ul>

            </div>
            <div class="col-md-7 single-top-in">
                <div class="single-para">
                    <h4><%=orderName%></h4>
                    <%--<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of
                        classical Latin literature from 45 BC, making it over 2000 years old.</p>--%>
                    <div class="star">
                        <ul>
                            <li><i> </i></li>
                            <li><i> </i></li>
                            <li><i> </i></li>
                            <li><i> </i></li>
                            <li><i> </i></li>
                        </ul>
                        <div class="review">
                            <a href="#"> 3 reviews </a>/
                            <a href="#"> Write a review</a>
                        </div>
                        <div class="clearfix"></div>
                    </div>

                    <label class="add-to"><%=price%></label>

                    <%--<div class="available">
                        <h6>Available Options :</h6>
                        <ul>

                            <li>Size:<select>
                                <option>Large</option>
                                <option>Medium</option>
                                <option>small</option>
                                <option>Large</option>
                                <option>small</option>
                            </select></li>
                            <li>Cost:
                                <select>
                                    <option>U.S.Dollar</option>
                                    <option>Euro</option>
                                </select></li>
                        </ul>
                    </div>--%>

                    <a href="receiveOrder.jsp<%="?id="+id%>" class="cart">接单</a>

                </div>
            </div>
            <div class="clearfix"></div>
            <div class="product-top">
                <div class="col-md-4 grid-product-in">
                    <div class=" product-grid">
                        <a href="receive.html"><img class="img-responsive " src="images/sh2.png" alt=""></a>
                        <div class="shoe-in">
                            <h6><a href="receive.html">Lorem Ipsum is simply</a></h6>
                            <label>$67.99</label>
                            <a href="receive.html" class="store">FIND A STORE</a>
                        </div>

                        <b class="plus-on">+</b>
                    </div>
                </div>
                <div class="col-md-4 grid-product-in">
                    <div class=" product-grid">
                        <a href="receive.html"><img class="img-responsive " src="images/pr1.png" alt=""></a>
                        <div class="shoe-in">
                            <h6><a href="receive.html">Lorem Ipsum is simply</a></h6>
                            <label>$67.99</label>
                            <a href="receive.html" class="store">FIND A STORE</a>
                        </div>

                        <b class="plus-on">+</b>
                    </div>
                </div>
                <div class="col-md-4 grid-product-in">
                    <div class=" product-grid">
                        <a href="receive.html"><img class="img-responsive " src="images/pr.png" alt=""></a>
                        <div class="shoe-in">
                            <h6><a href="receive.html">Lorem Ipsum is simply </a></h6>
                            <label>$67.99</label>
                            <a href="receive.html" class="store">FIND A STORE</a>
                        </div>

                        <b class="plus-on">+</b>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="single-bottom">
                <h4>Brands</h4>
                <ul>
                    <li>
                        <input type="checkbox" id="brand" value="">
                        <label for="brand"><span></span> Contrary belief</label>
                    </li>
                    <li>
                        <input type="checkbox" id="brand1" value="">
                        <label for="brand1"><span></span> Lorem Ipsum</label>
                    </li>
                    <li>
                        <input type="checkbox" id="brand2" value="">
                        <label for="brand2"><span></span> Fusce feugiat</label>
                    </li>
                    <li>
                        <input type="checkbox" id="brand3" value="">
                        <label for="brand3"><span></span> Contrary belief</label>
                    </li>
                    <li>
                        <input type="checkbox" id="brand4" value="">
                        <label for="brand4"><span></span>Injected humour</label>
                    </li>
                </ul>
            </div>
            <div class="single-bottom">
                <h4>Colors</h4>
                <ul>
                    <li>
                        <input type="checkbox" id="color" value="">
                        <label for="color"><span></span> Red</label>
                    </li>
                    <li>
                        <input type="checkbox" id="color1" value="">
                        <label for="color1"><span></span> Blue</label>
                    </li>
                    <li>
                        <input type="checkbox" id="color2" value="">
                        <label for="color2"><span></span> Black</label>
                    </li>
                    <li>
                        <input type="checkbox" id="color3" value="">
                        <label for="color3"><span></span> White</label>
                    </li>
                    <li>
                        <input type="checkbox" id="color4" value="">
                        <label for="color4"><span></span>Green</label>
                    </li>
                </ul>
            </div>
            <div class="single-bottom">
                <h4>Product Categories</h4>
                <div class="product-go">
                    <img class="img-responsive fashion" src="images/sh.png" alt="">
                    <div class="grid-product">
                        <a href="#" class="elit">Consectetuer adipiscing elit</a>
                        <span class=" price-in"><small>$500.00</small> $400.00</span>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="product-go">
                    <img class="img-responsive fashion" src="images/sh1.png" alt="">
                    <div class="grid-product">
                        <a href="#" class="elit">Consectetuer adipiscing elit</a>
                        <span class=" price-in"><small>$500.00</small> $400.00</span>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="product-go">
                    <img class="img-responsive fashion" src="images/sh2.png" alt="">
                    <div class="grid-product">
                        <a href="#" class="elit">Consectetuer adipiscing elit</a>
                        <span class=" price-in"><small>$500.00</small> $400.00</span>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
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
                <li><a href="receive.html">吉园介绍</a></li>
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