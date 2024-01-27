<%@ page import="model.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Cart" %>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--<% page contentType="text/html;charset=UTF-8"language ="java"%>--%>
<%@ page import="model.User" %>
<%
    User user = (User) session.getAttribute("auth");
%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>FreshShop</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <script src="js/Shopfunction.js"></script>
    <![endif]-->


    <style>


        element.style {
            height: 300px;
            width: 900%;
            display: block;
        }

    </style>
<!--    <style>-->
<!--        #productList {-->
<!--            list-style-type: none;-->
<!--            padding: 0;-->
<!--        }-->

<!--        #product-list div {-->
<!--            margin-bottom: 5px;-->
<!--        }-->

<!--        #pagination {-->
<!--            display: flex;-->
<!--            justify-content: center;-->
<!--            list-style-type: none;-->
<!--            padding: 0;-->
<!--            margin-top: 10px;-->
<!--        }-->

<!--        #pagination a {-->
<!--            margin: 0 5px;-->
<!--        }-->

<!--        #pagination a.active {-->
<!--            font-weight: bold;-->
<!--        }-->
<!--    </style>-->
    <link rel="stylesheet" href="css/fontawesome-free-6.4.2-web/css/all.css">
</head>

<body>
<!-- Start Main Top -->
<div class="main-top">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="custom-select-box">
                    <!--                        <select id="basic" class="selectpicker show-tick form-control" data-placeholder="$ USD">-->
                    <!--                            <option>¥ JPY</option>-->
                    <!--                            <option>$ USD</option>-->
                    <!--                            <option>€ EUR</option>-->
                    <!--                        </select>-->
                </div>
                <!--                    <div class="right-phone-box">-->
                <!--                        <p>Call US :- <a href="#"> +11 900 800 100</a></p>-->
                <!--                    </div>-->
                <div class="our-link">

                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">

                <div class="text-slid-box">
                    <div id=" offer-box" class="carouselTicker">
                        <ul class="offer-box">
                            <li>
                                <i class="fab fa-opencart"></i> Giảm 20% mọi mặt hàng từ 20-30 tháng 11
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i>Giảm 50% - 80% cho sản phẩm táo
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i> Giảm 10%! Cho sản phẩm từ Nhật
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i> Gia 50%! nếu đến mua trực tiếp
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Main Top -->


<header class="main-header">
    <!-- Start Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
        <div class="container">
            <!-- Start Header Navigation -->
            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu"
                        aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="index.jsp"><img src="images/logo.png" class="logo" alt=""></a>
            </div>
            <!-- End Header Navigation -->


            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="navbar-menu">
                <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                    <li class="nav-item"><a class="nav-link" href="index.jsp">Trang chủ</a></li>
                    <!--                        <li class="nav-item"><a class="nav-link" href="about.html">Về Tr</a></li>-->
                    <li class="dropdown active">
                        <a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">Sản phẩm</a>
                        <ul class="dropdown-menu">
                            <li><a href="shop.jsp">Sản phẩm</a></li>
                            <li><a href="shop-detail.jsp">Shop Detail</a></li>
                            <li><a href="cart.jsp">Cart</a></li>
                            <!--                            <li><a href="checkout.html">Checkout</a></li>-->
                            <!--                                <li><a href="my-account.html">My Account</a></li>-->
                            <!--                                <li><a href="wishlist.html">Wishlist</a></li>-->
                        </ul>
                    </li>
                    <!--                        <li class="nav-item"><a class="nav-link" href="gallery.html">Gallery</a></li>-->
                    <li class="nav-item"><a class="nav-link" href="./template/html/contact-us.html">Liên hệ với chúng tôi</a></li>
                </ul>

            </div>
            <!-- /.navbar-collapse -->

            <!-- Start Atribute Navigation -->
            <div class="attr-nav">
                <% Cart cart = (Cart) session.getAttribute("cart");
                    if (cart ==null) cart=new Cart();
                %>
                <ul>
                    <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
                    <li class="side-menu"><a href="#">
                        <i class="fa fa-shopping-bag"></i>
                        <span class="badge"><%=cart.getTolal()%> </span>
                        <p>Giỏ hàng của tôi</p>
                    </a></li>
                </ul>
            </div>
            <%--            login--%>
            <div class="login-box" style="font-weight: 700; font-size: 16px; text-transform: uppercase;">
                <div id=" basic" class="selectpicker show-tick form-control" data-placeholder="Sign In">
                    <%if (user == null) {%>

                    <a href="./login.jsp">Đăng nhập</a>
                    <% } else { %>
                    <div> <%= user.getUsername()%></div>
                    <div style="font-weight: normal; font-size: small"><a href="logout">Đăng xuất</a></div>
                    <% } %>
                </div>
            </div>

            <!-- End Atribute Navigation -->
        </div>
        <!-- Start Side Menu -->
        <!-- End Side Menu -->
    </nav>
    <!-- End Navigation -->
</header>
<!-- Start Top Search -->
<div class="top-search">
    <div class="container">
        <div class="input-group">
            <span class="input-group-addon"><i class="fa fa-search"></i></span>
            <input type="text" class="form-control" placeholder="Search">
            <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
        </div>
    </div>
</div>
<!-- End Top Search -->

<!-- Start All Title Box -->
<div class="all-title-box">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2>Sản phẩm</h2>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Sản phẩm</a></li>
                    <li class="breadcrumb-item active">Sản phẩm</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End All Title Box -->

<!-- Start Cart  -->
<div class="shop-box-inner">
    <div class="container">
        <div class="row">
            <div class="col-xl-9 col-lg-9 col-sm-12 col-xs-12 shop-content-right">
                <div class="right-product-box">
                    <div class="product-item-filter row">
                        <div class="col-12 col-sm-8 text-center text-sm-left">
                            <div class="toolbar-sorter-right">
                                <span>Sắp xếp </span>
                                <select id="basic" class="selectpicker show-tick form-control" data-placeholder="$ USD">
                                    <option data-display="Select">Lọc</option>
                                    <option value="1">Phổ biến</option>
                                    <option value="2">Giá cao → Giá thấp</option>
                                    <option value="3">Giá thấp → Giá cao</option>
                                    <option value="4">Bán chạy</option>
                                </select>
                            </div>
                            <p></p>
                        </div>
                        <div class="col-12 col-sm-4 text-center text-sm-right">
                            <ul class="nav nav-tabs ml-auto">
                                <li>
                                    <a class="nav-link active" href="#grid-view" data-toggle="tab"> <i class="fa fa-th"></i> </a>
                                </li>
                                <li>
                                    <a class="nav-link" href="#list-view" data-toggle="tab"> <i class="fa fa-list-ul"></i> </a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="product-categorie-box">
                        <div class="tab-content">

                            <div role="tabpanel" class="tab-pane fade show active" id="grid-view">
                                <div id="productList">
<%--                                    <% List<Product> data = (List<Product>)  request.getAttribute("data");--%>
<%--                                        for (Product p:data){--%>
<%--                                    %>--%>
                                    <div
                                            class="row ">


<%--                                        <% List<Product> data = (List<Product>)  request.getAttribute("data");--%>
<%--                                        for (Product p:data){--%>
<%--                                        %>--%>

                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4" style="    display: -webkit-inline-box;">
                                            <% List<Product> data = (List<Product>)  request.getAttribute("data");
                                                for (Product p:data){
                                            %>
                                            <div class="products-single fix" style="    padding: 13px">
                                                <div class="box-img-hover">
                                                    <div class="type-lb">
                                                        <p class="sale">Giảm giá</p>
                                                    </div>
                                                    <br>
                                                    <img src="<%=p.getSupplierName()%>" class="img-fluid" alt="Image" >
                                                    
                                                    <div class="mask-icon">
                                                        <ul>
                                                            <li><a href="shop-detail.jsp" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->
                                                        </ul>
                                                        <a class="cart" href="add-cart?id=<%=p.getId()%>">Thêm vào giỏ hàng</a>
                                                    </div>
                                                </div>
                                                <div class="why-text">
                                                    <h4><%=p.getProductName()%></h4>
                                                    <h5> <%=p.getPrice()%></h5>
                                                </div>
                                            </div>
                                            <%}%>
                                        </div>

<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="images/kiwwi.jpg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>Kiwi <br> giá tốt</h4>--%>
<%--                                                    <h5> 200.000đ</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="images/nhomaudon.jpg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>Nho Nhật<br> giá tốt</h4>--%>
<%--                                                    <h5> 11.000.000đ</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>

<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="images/trai-cay-nhap-khau-2.jpg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>kiwi <br> giá tốt</h4>--%>
<%--                                                    <h5> $9.79</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="images/táo.jpg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>Táo <br> giá tốt</h4>--%>
<%--                                                    <h5> 100.000đ</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="images/cam.jpg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>Cam <br> giá tốt</h4>--%>
<%--                                                    <h5> 90.790đ</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="images/dau.jpg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>dâu <br> giá tốt</h4>--%>
<%--                                                    <h5> 190.790đ</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="images/nho-xanh-nhap-khau-uc.jpeg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>Nho Mĩ tươi <br> giá tốt</h4>--%>
<%--                                                    <h5> 90.790đ</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="../images/mustangking.jpg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>Sầu riêng <br> giá tốt</h4>--%>
<%--                                                    <h5> 190.790đ</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="../images/nho-xanh-nhap-khau-uc.jpeg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>Nho Mĩ tươi <br> giá tốt</h4>--%>
<%--                                                    <h5> $9.79</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="../images/dualuoi.jpg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>Dưa lưới <br> giá tốt</h4>--%>
<%--                                                    <h5> 99.790đ</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="../images/nho-xanh-nhap-khau-uc.jpeg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>Nho Mĩ tươi <br> giá tốt</h4>--%>
<%--                                                    <h5> $9.79</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="../images/nho-xanh-nhap-khau-uc.jpeg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>Nho Mĩ tươi <br> giá tốt</h4>--%>
<%--                                                    <h5> $9.79</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="../images/nho-xanh-nhap-khau-uc.jpeg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>Nho Mĩ tươi <br> giá tốt</h4>--%>
<%--                                                    <h5> $9.79</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="../images/nho-xanh-nhap-khau-uc.jpeg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>Nho Mĩ tươi <br> giá tốt</h4>--%>
<%--                                                    <h5> $9.79</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                        <div class="products-single fix" >--%>
<%--                                            <div class="box-img-hover">--%>
<%--                                                <div class="type-lb">--%>
<%--                                                    <p class="sale">Giảm giá</p>--%>
<%--                                                </div>--%>
<%--                                                <br>--%>
<%--                                                <img src="../images/nho-xanh-nhap-khau-uc.jpeg" class="img-fluid" alt="Image" >--%>
<%--                                                <div class="mask-icon">--%>
<%--                                                    <ul>--%>
<%--                                                        <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                        <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                        <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                    </ul>--%>
<%--                                                    <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="why-text">--%>
<%--                                                <h4>Nho Mĩ tươi <br> giá tốt</h4>--%>
<%--                                                <h5> $9.79</h5>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="../images/nho-xanh-nhap-khau-uc.jpeg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>Nho Mĩ tươi <br> giá tốt</h4>--%>
<%--                                                    <h5> $9.79</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="../images/nho-xanh-nhap-khau-uc.jpeg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>Nho Mĩ tươi <br> giá tốt</h4>--%>
<%--                                                    <h5> $9.79</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="../images/nho-xanh-nhap-khau-uc.jpeg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>Nho Mĩ tươi <br> giá tốt</h4>--%>
<%--                                                    <h5> $9.79</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="../images/mustangking.jpg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>Sầu riêng <br> giá tốt</h4>--%>
<%--                                                    <h5> 59.290đ</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="../images/dualuoi.jpg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>Dưa lưới <br> giá tốt</h4>--%>
<%--                                                    <h5> 119.790đ</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="../images/gallery-img-01.jpg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>Mướp <br> giá tốt</h4>--%>
<%--                                                    <h5> 9.790đ</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="../images/nho-xanh-nhap-khau-uc.jpeg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>Nho Mĩ tươi <br> giá tốt</h4>--%>
<%--                                                    <h5> $9.79</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="../images/nho-xanh-nhap-khau-uc.jpeg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>Nho Mĩ tươi <br> giá tốt</h4>--%>
<%--                                                    <h5> $9.79</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="../images/nhomaudon.jpg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>Nho Mĩ tươi <br> giá tốt</h4>--%>
<%--                                                    <h5> 200000đ</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="../images/img-pro-04.jpg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>Đu đủ <br> giá tốt</h4>--%>
<%--                                                    <h5> 29.790đ</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                            <div class="products-single fix" >--%>
<%--                                                <div class="box-img-hover">--%>
<%--                                                    <div class="type-lb">--%>
<%--                                                        <p class="sale">Giảm giá</p>--%>
<%--                                                    </div>--%>
<%--                                                    <br>--%>
<%--                                                    <img src="../images/nho-xanh-nhap-khau-uc.jpeg" class="img-fluid" alt="Image" >--%>
<%--                                                    <div class="mask-icon">--%>
<%--                                                        <ul>--%>
<%--                                                            <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                            <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                        </ul>--%>
<%--                                                        <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="why-text">--%>
<%--                                                    <h4>Nho Mĩ tươi <br> giá tốt</h4>--%>
<%--                                                    <h5> $9.79</h5>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                                        <div class="products-single fix" >--%>
<%--                                            <div class="box-img-hover">--%>
<%--                                                <div class="type-lb">--%>
<%--                                                    <p class="sale">Giảm giá</p>--%>
<%--                                                </div>--%>
<%--                                                <br>--%>
<%--                                                <img src="../images/nho-xanh-nhap-khau-uc.jpeg" class="img-fluid" alt="Image" >--%>
<%--                                                <div class="mask-icon">--%>
<%--                                                    <ul>--%>
<%--                                                        <li><a href="shop-detail.html" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                                        <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->--%>
<%--                                                        <!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->--%>
<%--                                                    </ul>--%>
<%--                                                    <a class="cart" href="cart.html">Thêm vào giỏ hàng</a>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="why-text">--%>
<%--                                                <h4>Nho Mĩ tươi <br> giá tốt</h4>--%>
<%--                                                <h5> $9.79</h5>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>





<!--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">-->
<!--                                            <div class="products-single fix">-->
<!--                                                <div class="box-img-hover">-->
<!--                                                    <div class="type-lb">-->
<!--                                                        <p class="new">New</p>-->
<!--                                                    </div>-->
<!--                                                    <img src="../images/img-pro-02.jpg" class="img-fluid" alt="Image">-->
<!--                                                    <div class="mask-icon">-->
<!--                                                        <ul>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->
<!--                                                        </ul>-->
<!--                                                        <a class="cart" href="#">Add to Cart</a>-->
<!--                                                    </div>-->
<!--                                                </div>-->
<!--                                                <div class="why-text">-->
<!--                                                    <h4>Lorem ipsum dolor sit amet</h4>-->
<!--                                                    <h5> $9.79</h5>-->
<!--                                                </div>-->
<!--                                            </div>-->
<!--                                        </div>-->
<!--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">-->
<!--                                            <div class="products-single fix">-->
<!--                                                <div class="box-img-hover">-->
<!--                                                    <div class="type-lb">-->
<!--                                                        <p class="sale">Sale</p>-->
<!--                                                    </div>-->
<!--                                                    <img src="../images/img-pro-03.jpg" class="img-fluid" alt="Image">-->
<!--                                                    <div class="mask-icon">-->
<!--                                                        <ul>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->
<!--                                                        </ul>-->
<!--                                                        <a class="cart" href="#">Add to Cart</a>-->
<!--                                                    </div>-->
<!--                                                </div>-->
<!--                                                <div class="why-text">-->
<!--                                                    <h4>Lorem ipsum dolor sit amet</h4>-->
<!--                                                    <h5> $9.79</h5>-->
<!--                                                </div>-->
<!--                                            </div>-->
<!--                                        </div>-->
<!--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">-->
<!--                                            <div class="products-single fix">-->
<!--                                                <div class="box-img-hover">-->
<!--                                                    <div class="type-lb">-->
<!--                                                        <p class="new">New</p>-->
<!--                                                    </div>-->
<!--                                                    <img src="../images/img-pro-04.jpg" class="img-fluid" alt="Image">-->
<!--                                                    <div class="mask-icon">-->
<!--                                                        <ul>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->
<!--                                                        </ul>-->
<!--                                                        <a class="cart" href="#">Add to Cart</a>-->
<!--                                                    </div>-->
<!--                                                </div>-->
<!--                                                <div class="why-text">-->
<!--                                                    <h4>Lorem ipsum dolor sit amet</h4>-->
<!--                                                    <h5> $9.79</h5>-->
<!--                                                </div>-->
<!--                                            </div>-->
<!--                                        </div>-->
<!--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">-->
<!--                                            <div class="products-single fix">-->
<!--                                                <div class="box-img-hover">-->
<!--                                                    <div class="type-lb">-->
<!--                                                        <p class="sale">Sale</p>-->
<!--                                                    </div>-->
<!--                                                    <img src="../images/instagram-img-07.jpg" class="img-fluid" alt="Image">-->
<!--                                                    <div class="mask-icon">-->
<!--                                                        <ul>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->
<!--                                                        </ul>-->
<!--                                                        <a class="cart" href="#">Add to Cart</a>-->
<!--                                                    </div>-->
<!--                                                </div>-->
<!--                                                <div class="why-text">-->
<!--                                                    <h4>Lorem ipsum dolor sit amet</h4>-->
<!--                                                    <h5> $9.79</h5>-->
<!--                                                </div>-->
<!--                                            </div>-->
<!--                                        </div>-->
<!--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">-->
<!--                                            <div class="products-single fix">-->
<!--                                                <div class="box-img-hover">-->
<!--                                                    <div class="type-lb">-->
<!--                                                        <p class="sale">Sale</p>-->
<!--                                                    </div>-->
<!--                                                    <img src="../images/img-pro-03.jpg" class="img-fluid" alt="Image">-->
<!--                                                    <div class="mask-icon">-->
<!--                                                        <ul>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->
<!--                                                        </ul>-->
<!--                                                        <a class="cart" href="#">Add to Cart</a>-->
<!--                                                    </div>-->
<!--                                                </div>-->
<!--                                                <div class="why-text">-->
<!--                                                    <h4>Lorem ipsum dolor sit amet</h4>-->
<!--                                                    <h5> $9.79</h5>-->
<!--                                                </div>-->
<!--                                            </div>-->
<!--                                        </div>-->
<!--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">-->
<!--                                            <div class="products-single fix">-->
<!--                                                <div class="box-img-hover">-->
<!--                                                    <div class="type-lb">-->
<!--                                                        <p class="sale">Sale</p>-->
<!--                                                    </div>-->
<!--                                                    <img src="../images/categories_img_01.jpg" class="img-fluid" alt="Image">-->
<!--                                                    <div class="mask-icon">-->
<!--                                                        <ul>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->
<!--                                                        </ul>-->
<!--                                                        <a class="cart" href="#">Add to Cart</a>-->
<!--                                                    </div>-->
<!--                                                </div>-->
<!--                                                <div class="why-text">-->
<!--                                                    <h4>Lorem ipsum dolor sit amet</h4>-->
<!--                                                    <h5> $9.79</h5>-->
<!--                                                </div>-->
<!--                                            </div>-->
<!--                                        </div>-->
<!--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">-->
<!--                                            <div class="products-single fix">-->
<!--                                                <div class="box-img-hover">-->
<!--                                                    <div class="type-lb">-->
<!--                                                        <p class="sale">Sale</p>-->
<!--                                                    </div>-->
<!--                                                    <img src="../images/img-pro-02.jpg" class="img-fluid" alt="Image">-->
<!--                                                    <div class="mask-icon">-->
<!--                                                        <ul>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->
<!--                                                        </ul>-->
<!--                                                        <a class="cart" href="#">Add to Cart</a>-->
<!--                                                    </div>-->
<!--                                                </div>-->
<!--                                                <div class="why-text">-->
<!--                                                    <h4>Lorem ipsum dolor sit amet</h4>-->
<!--                                                    <h5> $9.79</h5>-->
<!--                                                </div>-->
<!--                                            </div>-->
<!--                                        </div>-->
<!--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">-->
<!--                                            <div class="products-single fix">-->
<!--                                                <div class="box-img-hover">-->
<!--                                                    <div class="type-lb">-->
<!--                                                        <p class="new">New</p>-->
<!--                                                    </div>-->
<!--                                                    <img src="../images/img-pro-03.jpg" class="img-fluid" alt="Image">-->
<!--                                                    <div class="mask-icon">-->
<!--                                                        <ul>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->
<!--                                                        </ul>-->
<!--                                                        <a class="cart" href="#">Add to Cart</a>-->
<!--                                                    </div>-->
<!--                                                </div>-->
<!--                                                <div class="why-text">-->
<!--                                                    <h4>Lorem ipsum dolor sit amet</h4>-->
<!--                                                    <h5> $9.79</h5>-->
<!--                                                </div>-->
<!--                                            </div>-->
<!--                                        </div>-->
<!--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">-->
<!--                                            <div class="products-single fix">-->
<!--                                                <div class="box-img-hover">-->
<!--                                                    <div class="type-lb">-->
<!--                                                        <p class="sale">Sale</p>-->
<!--                                                    </div>-->
<!--                                                    <img src="../images/categories_img_01.jpg" class="img-fluid" alt="Image">-->
<!--                                                    <div class="mask-icon">-->
<!--                                                        <ul>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->
<!--                                                        </ul>-->
<!--                                                        <a class="cart" href="#">Add to Cart</a>-->
<!--                                                    </div>-->
<!--                                                </div>-->
<!--                                                <div class="why-text">-->
<!--                                                    <h4>Lorem ipsum dolor sit amet</h4>-->
<!--                                                    <h5> $9.79</h5>-->
<!--                                                </div>-->
<!--                                            </div>-->
<!--                                        </div>-->
<!--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">-->
<!--                                            <div class="products-single fix">-->
<!--                                                <div class="box-img-hover">-->
<!--                                                    <div class="type-lb">-->
<!--                                                        <p class="sale">Sale</p>-->
<!--                                                    </div>-->
<!--                                                    <img src="../images/img-pro-02.jpg" class="img-fluid" alt="Image">-->
<!--                                                    <div class="mask-icon">-->
<!--                                                        <ul>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->
<!--                                                        </ul>-->
<!--                                                        <a class="cart" href="#">Add to Cart</a>-->
<!--                                                    </div>-->
<!--                                                </div>-->
<!--                                                <div class="why-text">-->
<!--                                                    <h4>Lorem ipsum dolor sit amet</h4>-->
<!--                                                    <h5> $9.79</h5>-->
<!--                                                </div>-->
<!--                                            </div>-->
<!--                                        </div>-->
<!--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">-->
<!--                                            <div class="products-single fix">-->
<!--                                                <div class="box-img-hover">-->
<!--                                                    <div class="type-lb">-->
<!--                                                        <p class="new">New</p>-->
<!--                                                    </div>-->
<!--                                                    <img src="../images/img-pro-03.jpg" class="img-fluid" alt="Image">-->
<!--                                                    <div class="mask-icon">-->
<!--                                                        <ul>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->
<!--                                                        </ul>-->
<!--                                                        <a class="cart" href="#">Add to Cart</a>-->
<!--                                                    </div>-->
<!--                                                </div>-->
<!--                                                <div class="why-text">-->
<!--                                                    <h4>Lorem ipsum dolor sit amet</h4>-->
<!--                                                    <h5> $9.79</h5>-->
<!--                                                </div>-->
<!--                                            </div>-->
<!--                                        </div>-->
<!--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">-->
<!--                                            <div class="products-single fix">-->
<!--                                                <div class="box-img-hover">-->
<!--                                                    <div class="type-lb">-->
<!--                                                        <p class="sale">Sale</p>-->
<!--                                                    </div>-->
<!--                                                    <img src="../images/categories_img_01.jpg" class="img-fluid" alt="Image">-->
<!--                                                    <div class="mask-icon">-->
<!--                                                        <ul>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->
<!--                                                        </ul>-->
<!--                                                        <a class="cart" href="#">Add to Cart</a>-->
<!--                                                    </div>-->
<!--                                                </div>-->
<!--                                                <div class="why-text">-->
<!--                                                    <h4>Lorem ipsum dolor sit amet</h4>-->
<!--                                                    <h5> $9.79</h5>-->
<!--                                                </div>-->
<!--                                            </div>-->
<!--                                        </div>-->
<!--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">-->
<!--                                            <div class="products-single fix">-->
<!--                                                <div class="box-img-hover">-->
<!--                                                    <div class="type-lb">-->
<!--                                                        <p class="sale">Sale</p>-->
<!--                                                    </div>-->
<!--                                                    <img src="../images/img-pro-02.jpg" class="img-fluid" alt="Image">-->
<!--                                                    <div class="mask-icon">-->
<!--                                                        <ul>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->
<!--                                                        </ul>-->
<!--                                                        <a class="cart" href="#">Add to Cart</a>-->
<!--                                                    </div>-->
<!--                                                </div>-->
<!--                                                <div class="why-text">-->
<!--                                                    <h4>Lorem ipsum dolor sit amet</h4>-->
<!--                                                    <h5> $9.79</h5>-->
<!--                                                </div>-->
<!--                                            </div>-->
<!--                                        </div>-->
<!--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">-->
<!--                                            <div class="products-single fix">-->
<!--                                                <div class="box-img-hover">-->
<!--                                                    <div class="type-lb">-->
<!--                                                        <p class="new">New</p>-->
<!--                                                    </div>-->
<!--                                                    <img src="../images/img-pro-03.jpg" class="img-fluid" alt="Image">-->
<!--                                                    <div class="mask-icon">-->
<!--                                                        <ul>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>-->
<!--                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>-->
<!--                                                        </ul>-->
<!--                                                        <a class="cart" href="#">Add to Cart</a>-->
<!--                                                    </div>-->
<!--                                                </div>-->
<!--                                                <div class="why-text">-->
<!--                                                    <h4>Lorem ipsum dolor sit amet</h4>-->
<!--                                                    <h5> $9.79</h5>-->
<!--                                                </div>-->
<!--                                            </div>-->
<!--                                        </div>-->

                                    </div>


                                </div>
<%--                                <%}%>--%>
                                <div  class="row ">
                                    <div id="phantrang">
                                        <nav aria-label="Page navigation example">
                                            <ul class="pagination">
                                                <li class="page-item">
                                                    <a class="page-link" href="#" aria-label="Previous">
                                                        <span aria-hidden="true">&laquo;</span>
                                                        <span class="sr-only">Previous</span>
                                                    </a>
                                                </li>
                                                <li class="pageitem"><a class="page-link" href="#">1</a></li>
                                                <li class="pageitem"><a class="page-link" href="#">2</a></li>
                                                <li class="pageitem"><a class="page-link" href="#">3</a></li>
                                                <li class="page-item">
                                                    <a class="page-link" href="#" aria-label="Next">
                                                        <span aria-hidden="true">&raquo;</span>
                                                        <span class="sr-only">Next</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="list-view">
                                <div class="list-view-box">
                                    <div class="row">
                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                            <div class="products-single fix">
                                                <div class="box-img-hover">
                                                    <div class="type-lb">
                                                        <p class="new">New</p>
                                                    </div>
                                                    <img src="images/nho-xanh-nhap-khau-uc.jpeg" class="img-fluid" alt="Image">
                                                    <div class="mask-icon">
                                                        <ul>
                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                                        </ul>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-md-6 col-lg-8 col-xl-8">
                                            <div class="why-text full-width">
                                                <h4>Lorem ipsum dolor sit amet</h4>
                                                <h5> <del>$ 60.00</del> $40.79</h5>
                                                <p>Integer tincidunt aliquet nibh vitae dictum. In turpis sapien, imperdiet quis magna nec, iaculis ultrices ante. Integer vitae suscipit nisi. Morbi dignissim risus sit amet orci porta, eget aliquam purus
                                                    sollicitudin. Cras eu metus felis. Sed arcu arcu, sagittis in blandit eu, imperdiet sit amet eros. Donec accumsan nisi purus, quis euismod ex volutpat in. Vestibulum eleifend eros ac lobortis aliquet.
                                                    Suspendisse at ipsum vel lacus vehicula blandit et sollicitudin quam. Praesent vulputate semper libero pulvinar consequat. Etiam ut placerat lectus.</p>
                                                <a class="btn hvr-hover" href="#">Add to Cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="list-view-box">
                                    <div class="row">
                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                            <div class="products-single fix">
                                                <div class="box-img-hover">
                                                    <div class="type-lb">
                                                        <p class="sale">Sale</p>
                                                    </div>
                                                    <img src="images/img-pro-02.jpg" class="img-fluid" alt="Image">
                                                    <div class="mask-icon">
                                                        <ul>
                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                                        </ul>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-md-6 col-lg-8 col-xl-8">
                                            <div class="why-text full-width">
                                                <h4>Lorem ipsum dolor sit amet</h4>
                                                <h5> <del>$ 60.00</del> $40.79</h5>
                                                <p>Integer tincidunt aliquet nibh vitae dictum. In turpis sapien, imperdiet quis magna nec, iaculis ultrices ante. Integer vitae suscipit nisi. Morbi dignissim risus sit amet orci porta, eget aliquam purus
                                                    sollicitudin. Cras eu metus felis. Sed arcu arcu, sagittis in blandit eu, imperdiet sit amet eros. Donec accumsan nisi purus, quis euismod ex volutpat in. Vestibulum eleifend eros ac lobortis aliquet.
                                                    Suspendisse at ipsum vel lacus vehicula blandit et sollicitudin quam. Praesent vulputate semper libero pulvinar consequat. Etiam ut placerat lectus.</p>
                                                <a class="btn hvr-hover" href="#">Add to Cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="list-view-box">
                                    <div class="row">
                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                            <div class="products-single fix">
                                                <div class="box-img-hover">
                                                    <div class="type-lb">
                                                        <p class="sale">Sale</p>
                                                    </div>
                                                    <img src="images/img-pro-03.jpg" class="img-fluid" alt="Image">
                                                    <div class="mask-icon">
                                                        <ul>
                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                                        </ul>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-md-6 col-lg-8 col-xl-8">
                                            <div class="why-text full-width">
                                                <h4>Lorem ipsum dolor sit amet</h4>
                                                <h5> <del>$ 60.00</del> $40.79</h5>
                                                <p>Integer tincidunt aliquet nibh vitae dictum. In turpis sapien, imperdiet quis magna nec, iaculis ultrices ante. Integer vitae suscipit nisi. Morbi dignissim risus sit amet orci porta, eget aliquam purus
                                                    sollicitudin. Cras eu metus felis. Sed arcu arcu, sagittis in blandit eu, imperdiet sit amet eros. Donec accumsan nisi purus, quis euismod ex volutpat in. Vestibulum eleifend eros ac lobortis aliquet.
                                                    Suspendisse at ipsum vel lacus vehicula blandit et sollicitudin quam. Praesent vulputate semper libero pulvinar consequat. Etiam ut placerat lectus.</p>
                                                <a class="btn hvr-hover" href="#">Add to Cart</a>
                                            </div>
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-sm-12 col-xs-12 sidebar-shop-left">
                <div class="product-categori">
                    <div class="search-product">
                        <form action="#">
                            <input class="form-control" placeholder="Search here..." type="text">
                            <button type="submit"> <i class="fa fa-search"></i> </button>
                        </form>
                    </div>
                    <div class="filter-sidebar-left">
                        <div class="title-left">
                            <h3>Categories</h3>
                        </div>
                        <div class="list-group list-group-collapse list-group-sm list-group-tree" id="list-group-men" data-children=".sub-men">
                            <div class="list-group-collapse sub-men">
                                <a class="list-group-item list-group-item-action" href="#sub-men1" data-toggle="collapse" aria-expanded="true" aria-controls="sub-men1">Fruits & Drinks <small class="text-muted">(100)</small>
                                </a>
                                <div class="collapse show" id="sub-men1" data-parent="#list-group-men">
                                    <div class="list-group">
                                        <a href="#" class="list-group-item list-group-item-action active">Fruits 1 <small class="text-muted">(50)</small></a>
                                        <a href="#" class="list-group-item list-group-item-action">Fruits 2 <small class="text-muted">(10)</small></a>
                                        <a href="#" class="list-group-item list-group-item-action">Fruits 3 <small class="text-muted">(10)</small></a>
                                        <a href="#" class="list-group-item list-group-item-action">Fruits 4 <small class="text-muted">(10)</small></a>
                                        <a href="#" class="list-group-item list-group-item-action">Fruits 5 <small class="text-muted">(20)</small></a>
                                    </div>
                                </div>
                            </div>
                            <div class="list-group-collapse sub-men">
                                <a class="list-group-item list-group-item-action" href="#sub-men2" data-toggle="collapse" aria-expanded="false" aria-controls="sub-men2">Vegetables
                                    <small class="text-muted">(50)</small>
                                </a>
                                <div class="collapse" id="sub-men2" data-parent="#list-group-men">
                                    <div class="list-group">
                                        <a href="#" class="list-group-item list-group-item-action">Vegetables 1 <small class="text-muted">(10)</small></a>
                                        <a href="#" class="list-group-item list-group-item-action">Vegetables 2 <small class="text-muted">(20)</small></a>
                                        <a href="#" class="list-group-item list-group-item-action">Vegetables 3 <small class="text-muted">(20)</small></a>
                                    </div>
                                </div>
                            </div>
                            <a href="#" class="list-group-item list-group-item-action"> Grocery  <small class="text-muted">(150) </small></a>
                            <a href="#" class="list-group-item list-group-item-action"> Grocery <small class="text-muted">(11)</small></a>
                            <a href="#" class="list-group-item list-group-item-action"> Grocery <small class="text-muted">(22)</small></a>
                        </div>
                    </div>
<!--                    <div class="filter-price-left">-->
<!--                        <div class="title-left">-->
<!--                            <h3>Price</h3>-->
<!--                        </div>-->
<!--                        <div class="price-box-slider">-->
<!--                            <div id="slider-range"></div>-->
<!--&lt;!&ndash;                            <p>&ndash;&gt;-->
<!--&lt;!&ndash;                                <input type="text" id="amount" readonly style="border:0; color:#fbb714; font-weight:bold;">&ndash;&gt;-->
<!--&lt;!&ndash;                                <button class="btn hvr-hover" type="submit">Filter</button>&ndash;&gt;-->
<!--&lt;!&ndash;                            </p>&ndash;&gt;-->
<!--                        </div>-->
<!--                    </div>-->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Cart -->

<!-- Start Instagram Feed  -->
<div class="instagram-box">
    <div class="main-instagram owl-carousel owl-theme">
        <div class="item">
            <div class="ins-inner-box">
                <img src="images/instagram-img-01.jpg" alt="" />
                <div class="hov-in">
                    <a href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="ins-inner-box">
                <img src="images/instagram-img-02.jpg" alt="" />
                <div class="hov-in">
                    <a href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="ins-inner-box">
                <img src="images/instagram-img-03.jpg" alt="" />
                <div class="hov-in">
                    <a href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="ins-inner-box">
                <img src="images/instagram-img-04.jpg" alt="" />
                <div class="hov-in">
                    <a href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="ins-inner-box">
                <img src="images/instagram-img-05.jpg" alt="" />
                <div class="hov-in">
                    <a href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="ins-inner-box">
                <img src="images/instagram-img-06.jpg" alt="" />
                <div class="hov-in">
                    <a href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="ins-inner-box">
                <img src="images/instagram-img-07.jpg" alt="" />
                <div class="hov-in">
                    <a href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="ins-inner-box">
                <img src="images/instagram-img-08.jpg" alt="" />
                <div class="hov-in">
                    <a href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="ins-inner-box">
                <img src="images/instagram-img-09.jpg" alt="" />
                <div class="hov-in">
                    <a href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="ins-inner-box">
                <img src="images/instagram-img-05.jpg" alt="" />
                <div class="hov-in">
                    <a href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>


    </div>

<!--    <div id="phantrang">-->
<!--        <nav aria-label="Page navigation example">-->
<!--            <ul class="pagination">-->
<!--                <li class="page-item">-->
<!--                    <a class="page-link" href="#" aria-label="Previous">-->
<!--                        <span aria-hidden="true">&laquo;</span>-->
<!--                        <span class="sr-only">Previous</span>-->
<!--                    </a>-->
<!--                </li>-->
<!--                <li class="page-item"><a class="page-link" href="#">1</a></li>-->
<!--                <li class="page-item"><a class="page-link" href="#">2</a></li>-->
<!--                <li class="page-item"><a class="page-link" href="#">3</a></li>-->
<!--                <li class="page-item">-->
<!--                    <a class="page-link" href="#" aria-label="Next">-->
<!--                        <span aria-hidden="true">&raquo;</span>-->
<!--                        <span class="sr-only">Next</span>-->
<!--                    </a>-->
<!--                </li>-->
<!--            </ul>-->
<!--        </nav>-->
<!--    </div>-->

</div>
<!-- End Instagram Feed  -->


<!-- Start Footer  -->
<footer>
    <div class="footer-main">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-top-box">
                        <h3>Thời gian làm việc</h3>
                        <ul class="list-time">
                            <li>Thứ 2 đến thứ 6: 8h đến 5h</li> <li>Thứ 7 8h đến 11h</li> <li>Chủ Nhật: <span>Đóng cửa</span></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-top-box">
                        <h3>Khách</h3>
                        <form class="newsletter-box">
                            <div class="form-group">
                                <input class="" type="email" name="Email" placeholder="Email Address*" />
                                <i class="fa fa-envelope"></i>
                            </div>
                            <button class="btn hvr-hover" type="submit">Submit</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-top-box">
                        <h3>Phương tiện truyền thông</h3>
                        <p>Các thông tin thêm về chúng tôi</p>
                        <ul>
                            <li><a href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-linkedin" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-google-plus" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-widget">
                        <h4>Về trang  Freshshop</h4>
                        <p>  Là nơi cung cấp cho bạn về các sản phẩm như trái cây rau củ
                            nhập khẩu từ rất nhiều quốc gia khác nhau với giá cả phải chăng với đa dạng sản phẩm mang
                            đến những trải nghiệm mới lạ</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-link">
                        <h4>Thông tin</h4>
                        <ul>
                            <li><a href="contact-us.html">Về trang web chúng tôi</a></li>
                            <!--                                <li><a href="#">Customer Service</a></li>-->
                            <!--                                <li><a href="#">Our Sitemap</a></li>-->
                            <!--                                <li><a href="#">Terms &amp; Conditions</a></li>-->
                            <!--                                <li><a href="#">Privacy Policy</a></li>-->
                            <!--                                <li><a href="#">Delivery Information</a></li>-->
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-link-contact">
                        <h4>Liên hệ chúng tôi</h4>
                        <ul>
                            <li>
                                <p><i class="fas fa-map-marker-alt"></i>Address: Michael I. Days 3756 <br>Preston Street Wichita,<br> KS 67213 </p>
                            </li>
                            <li>
                                <p><i class="fas fa-phone-square"></i>Phone: <a href="tel:+1-888705770">+1-888 705 770</a></p>
                            </li>
                            <li>
                                <p><i class="fas fa-envelope"></i>Email: <a href="mailto:contactinfo@gmail.com">contactinfo@gmail.com</a></p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- End Footer  -->

<!-- Start copyright  -->
<div class="footer-copyright">
<!--    <p class="footer-company">All Rights Reserved. &copy; 2018 <a href="#">ThewayShop</a> Design By :-->
<!--        <a href="https://html.design/">html design</a></p>-->
</div>
<!-- End copyright  -->
<script >
    const pageLinks = document.getElementsByClassName('page-link');
    const productList = document.getElementById('productList');
    const itemsPerPage = 9; // Số sản phẩm hiển thị trên mỗi trang

    // Ẩn tất cả các sản phẩm
    function hideAllProducts() {
        const products = productList.getElementsByClassName('products-single');
        for (let i = 0; i < products.length; i++) {
            products[i].style.display = 'none';
        }
    }

    // Hiển thị các sản phẩm của trang hiện tại
    // Hiển thị các sản phẩm của trang hiện tại
    function showCurrentPage(page) {
        hideAllProducts();
        const startIndex = (page - 1) * itemsPerPage;
        const endIndex = Math.min(startIndex + itemsPerPage, productList.getElementsByClassName('products-single').length);
        const products = productList.getElementsByClassName('products-single');
        for (let i = startIndex; i < endIndex; i++) {
            products[i].style.display = 'block';
        }
    }

    // Xử lý sự kiện khi click vào các liên kết trong danh sách phân trang
    for (let i = 0; i < pageLinks.length; i++) {
        const pageLink = pageLinks[i];
        const page = i + 1; // Số trang tương ứng với liên kết
        pageLink.addEventListener('click', () => {
            showCurrentPage(page);
        });
    }

    // Hiển thị trang đầu tiên khi tải trang
    showCurrentPage(1);
    // showCurrentPage(2);
    //
    // showCurrentPage(3);



</script>
<a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

<!-- ALL JS FILES -->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- ALL PLUGINS -->
<script src="js/jquery.superslides.min.js"></script>
<script src="js/bootstrap-select.js"></script>
<script src="js/inewsticker.js"></script>
<script src="js/bootsnav.js"></script>
<script src="js/images-loded.min.js"></script>
<script src="js/isotope.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/baguetteBox.min.js"></script>
<script src="js/form-validator.min.js"></script>
<script src="js/contact-form-script.js"></script>
<script src="js/custom.js"></script>
</body>

</html>