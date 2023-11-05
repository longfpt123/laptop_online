<%-- 
    Document   : Detail
    Created on : Nov 1, 2023, 9:00:02 PM
    Author     : asus
--%>

<%@page import="dal.UserDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>How To Create A Basic Bootstrap Ecommerce Website - Free Time Learning</title>
        <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=yes">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
        <meta name="description" content="How To Create A Basic Bootstrap Ecommerce Website, Basic Ecommerce Website, bootstrap websites, free bootstrap ecommerce websites, sample bootstrap websites." />
        <meta name="keywords" content="bootstrap ecommerce websites, free bootstrap websites, free bootstrap ecommerce websites, free responsive websites, basic bootstrap ecommerce website, how to create a bootstrap website, top bootstrap websites, basic bootstrap website teplates, bootstrap, bootstrap referene websites, practice bootstrap websites, how to create a website, how to create static website, how to create bootstrap websites, how to create bootstrap 4 website, how to create a material design website, best websites, how to create a bootstrap 3 website. " />
        <link rel="canonical" href="http://www.freetimelearning.com/references/bootstrap-websites/bootstrap-ecommerce-website/index.html">
        <link rel="alternate" hreflang="en-gb" href="http://www.freetimelearning.com/references/bootstrap-websites/bootstrap-ecommerce-website/index.html">
        <link rel="alternate" hreflang="en" href="http://www.freetimelearning.com/references/bootstrap-websites/bootstrap-ecommerce-website/index.html">
        <meta property="og:locale" content="en_US" />
        <meta property="og:title" content="How To Create A Basic Bootstrap Ecommerce Website - Free Time Learning" />
        <meta property="og:type" content="Free Time Learning | Free Time Learn" />
        <meta property="og:site_name" content="http://www.freetimelearning.com/references/bootstrap-websites/bootstrap-ecommerce-website/index.html" />
        <meta property="article:author" content="Free Time Learning" />
        <meta property="article:section" content="How To Create A Basic Bootstrap Ecommerce Website - Free Time Learning" />
        <meta property="og:url" content="http://www.freetimelearning.com/references/bootstrap-websites/bootstrap-ecommerce-website/index.html" />
        <style>
            .pagination {
                display: inline-block;
            }
            .pagination a {
                color: black;
                font-size: 22px;
                float: left;
                padding: 8px 16px;
                text-decoration: none;
            }
            .pagination a.active {
                background-color: #4CAF50;
                color: white;
            }
            .pagination a:hover:not(.active) {
                background-color: chocolate;
            }
            .col-md-5{
                margin-top: 20px;
               margin:0 auto;
                
            }
            p{
                font-size: 20px;
            }
            .categories-right{
                text-align: center;
            }
        </style>
        <script type="text/javascript">
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
            ga('create', 'UA-100094943-1', 'auto');
            ga('send', 'pageview');
        </script>
    </head>
    <body>
       
        <div class="container-fluid">
            <div class="main_shadow">
                <!-- Start Header -->
                <div class="row main_header">
                    <div class="col-md-3 col-sm-3 col-xs-12 logo" align="center">
                        <a href="http://www.freetimelearning.com/" target="_blank"><img src="images/logo.png" class="img-responsive" alt="Logo"></a></div>
                    <div class="col-md-9 col-sm-9 col-xs-12">

                        <div class="row">
                            <!--<form action="search" method="post">-->
                            <div class="col-md-5 col-sm-5 col-xs-12 form-top hidden-xs" style="margin-top: 50px" align="center">
                                <form action="search" method="post">
                                    <div class="input-group">

                                        <input name="txt" type="text" class="form-control" placeholder="Search Here"  >
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn_search">
                                                <i class="fa fa-search"></i></button>
                                        </span>
                                    </div>
                                </form>

                            </div>
                            <!--</form>-->
                            <div class="col-md-7 col-sm-7 col-xs-12" align="right">
                                <div class="row hidden-xs">
                                    <div class="row">
                                        <div class="header-top pull-right">
                                         
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix" style="margin:2px 0px;"></div>
                                <div class="row" align="center">
                                    <div class="col-md-7 col-sm-7 col-xs-12">

                                        <div class="header-right-bottom">
                                            <ul>
                                                <c:if test="${sessionScope.acc==null}">
                                                    <li><a href="Login.jsp">Log In</a></li>
                                                    <li><a href="Register.jsp">Register</a></li> 
                                                    </c:if>
                                                    <c:if test="${sessionScope.acc!=null}">
                                                    <li style="border-right:none;">

                                                        <a href="logout">
                                                            Log Out
                                                        </a></li>
                                                        <li style="border-right:none;">

                                                        <a href="Profile.jsp">
                                                            Profile
                                                        </a></li>
                                                    </c:if>


                                            </ul>
                                        </div>

                                    </div>
                                    <c:set var="size" value="${sessionScope.size}"/>
                                    <div class="col-md-5 col-sm-5 col-xs-12">
                                        <div class="header-right-bottom">
                                            <i class="fa fa-cart-plus cart_size"><a href="Cart.jsp"> 
                                                    Bag(${size})

                                                </a></i> &nbsp; 
                                            <!--<i class="fa fa-inr inr_size"></i> <span class="amount">1569 /-</span>-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- End Header -->

                <!-- Start Menu bar -->
                <nav class="navbar navbar-default">
                    <div class="navbar-header">
                        <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <!-- <a href="#!" class="navbar-brand">Logo</a>-->
                    </div>
                    <div id="navbarCollapse" class="collapse navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li> <a   href="home">Home</a></li>
                            <li> <a   href="">Product</a></li>    
                            <c:forEach items="${listC}" var="o">
                                <li class="  ${tag == o.id ? "active" : ""}"><a href="category?cid=${o.id}">${o.name}</a></li>
                                </c:forEach>

                           


                            <c:if test="${sessionScope.acc.role==2}">

                                <li><a href="manageProduct">Manager Product</a></li>
                                <li><a href="order">Manager Order</a></li>
                                </c:if>

                            <c:if test="${sessionScope.acc.role==1}">


                                <li><a href="manageProduct">Manage Product</a></li>
                                <li><a href="admin">Manage User</a></li>
                               <li><a href="order">Manage Order</a></li
                                </c:if>

                         
                        </ul>
                    </div>
                </nav>
                <div class="row">
                    <div class="slider">
                        <div class="slider-padding">
                            <div style="padding-top:30px;"><a href="#" class="btn">Click Here!</a></div>
                        </div>
                    </div>
                </div>




                <!-- End menu bar -->


                <!----- Start Slider (or) Banner ------>

                <!----- End Slider (or) Banner ------>

                <!----- Start Content ------>
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">

                       <jsp:include page="Category.jsp"></jsp:include>

                        </div>

                        <div class="col-lg-9 col-md-9 col-sm-8 col-xs-12">
                            <div class="categories-right" style="color:green" >Detail</div>
                             
                            <div class="row" align="center" >


                                  <form name="f" action="" method="post">
                                <div class="content-right">
                                      
                                    <div class="col-md-10 col-sm-6 col-xs-12">
                                        <div class="row">
                                           
                                            <div class="col-md-5" style="margin-top: 10px">
                                                
                                                <img src="${dt.images}"  width=" 370px" height="400px" >
                                             <div class="cart" align="center">
                            
                                                 <div  > Enter the number of items :
            <input style="text-align: center" type="number" name="num" value="1"/></div>
            <br>
                                  <a onclick="buy('${dt.id}','${dt.quantity}')" class="btn" >
                                   Add to Cart</a>
                             
                              
                         </div>
                                            </div>
                                            <div class="col-md-7">
                                                <h1 style="color:blueviolet">${dt.name}</h1>
                                                <p>${dt.infor}</p>
                                                <div class="content-right-product-amount"><i class="fa fa-inr" style="color:#df001a;"></i>Price: ${dt.price} $</div>
                                                <p>Quantity: ${dt.quantity}</p>
                                                <p>Supplier: ${dt.supplier}</p>
                                            </div>
                                             
                                        </div>

                                    </div>


                                </div>
                           
                         </form>
                        </div>


                    </div>
                                          
                </div>
                
                <!------ End Content -----
-->               
              
               
<jsp:include page="Footer.jsp"></jsp:include> 
                
               
                <!------ End Footer -----
-->            
 </div> 
 </div> 
        
        <script type="text/javascript" src="http://www.freetimelearning.com/js/jquery-1.11.3.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript">
    function buy(id,quantity){
        var m=document.f.num.value;
        if(m>quantity){
            alert("Khong du hang");
            return ;
        }else{
          document.f.action="cart?id="+id;
          document.f.submit();
      }
    }
</script> 
        <script type="text/javascript">
            $(function () {
                $(".dropdown").hover(
                        function () {
                            $('.dropdown-menu', this).stop(true, true).fadeIn("fast");
                            $(this).toggleClass('open');
                            $('b', this).toggleClass("caret caret-up");
                        },
                        function () {
                            $('.dropdown-menu', this).stop(true, true).fadeOut("fast");
                            $(this).toggleClass('open');
                            $('b', this).toggleClass("caret caret-up");
                        });
            });

        </script><!--

        <!-- Start Content Left Categories -->
        <script type="text/javascript">
            $(document).ready(function () {
                $(document).ready(function () {

                    $('#content_left_menu> ul > li ul').each(function (index, e) {
                        var count = $(e).find('li').length;
                        var content = '<span class="cnt">' + count + '</span>';
                        $(e).closest('li').children('a').append(content);
                    });
                    $('#content_left_menuul ul li:odd').addClass('odd');
                    $('#content_left_menuul ul li:even').addClass('even');
                    $('#content_left_menu> ul > li > a').click(function () {
                        $('#content_left_menuli').removeClass('active');
                        $(this).closest('li').addClass('active');
                        var checkElement = $(this).next();
                        if ((checkElement.is('ul')) && (checkElement.is(':visible'))) {
                            $(this).closest('li').removeClass('active');
                            checkElement.slideUp('normal');
                        }
                        if ((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
                            $('#content_left_menuul ul:visible').slideUp('normal');
                            checkElement.slideDown('normal');
                        }
                        if ($(this).closest('li').find('ul').children().length == 0) {
                            return true;
                        } else {
                            return false;
                        }
                    });
                });
            });
        </script>
        <!-- End Content Left Categories -->
    </body>
</html>
