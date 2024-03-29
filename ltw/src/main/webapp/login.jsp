<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String error = (String) request.getAttribute("error");
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="./images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="./css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="./css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="./css/custom.css">


    <link rel="stylesheet" href="./css/fontawesome-free-6.4.2-web/css/all.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

    <link rel="stylesheet" href="./css/login-form.css">

    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js" type="text/javascript"></script>
    <style>
        label.error {
            display: inline-block;
            color: red;
            width: 200px;
        }
    </style>
</head>
<body>

<!-- Start Main Top -->
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
                <a class="navbar-brand" href="index.jsp"><img src="./images/logo.png" class="logo" alt=""></a>
            </div>
            <!-- End Header Navigation -->

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="navbar-menu">
                <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                    <li class="nav-item"><a class="nav-link" href="index.jsp">Trang chủ</a></li>
                    <!--                        <li class="nav-item"><a class="nav-link" href="about.html">Về Tr</a></li>-->
                    <li>
                        <a href="#" class="nav-link " data-toggle="dropdown">Sản phẩm</a>
                        <!--                        <ul class="dropdown-menu">-->
                        <!--                            <li><a href="shop.html">Sản phẩm</a></li>-->
                        <!--                            <li><a href="shop-detail.html">Shop Detail</a></li>-->
                        <!--                            <li><a href="cart.html">Cart</a></li>-->
                        <!--                            <li><a href="checkout.html">Checkout</a></li>-->
                        <!--                        </ul>-->
                    </li>
                    <!--                        <li class="nav-item"><a class="nav-link" href="gallery.html">Gallery</a></li>-->
                    <li class="nav-item"><a class="nav-link" href="./template/html/contact-us.html">Liên hệ với chúng tôi</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->

            <!-- Start Atribute Navigation -->
            <div class="attr-nav">
                <ul>
                    <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
                    <li class="side-menu">
                        <a href="#">
                            <i class="fa fa-shopping-bag"></i>
                            <span class="badge">3</span>
                            <p>Giỏ hàng của tôi</p>
                        </a></li>
                </ul>
            </div>

            <!--            <div class="login-box">-->
            <!--                <div id=" basic" class="selectpicker show-tick form-control" data-placeholder="Sign In" style="font-weight: 700; font-size: 16px; text-transform: uppercase;">-->
            <!--                    <a href="login.html">Đăng nhập</a><i class="fa-solid fa-right-to-bracket"></i>-->
            <!--                </div>-->
            <!--            </div>-->
            <!-- End Atribute Navigation -->
        </div>
        <!-- Start Side Menu -->
        <!--            <div class="side">-->
        <!--                <a href="#" class="close-side"><i class="fa fa-times"></i></a>-->
        <!--                <li class="cart-box">-->
        <!--                    <ul class="cart-list">-->
        <!--                        <li>-->
        <!--                            <a href="#" class="photo"><img src="../images/img-pro-01.jpg" class="cart-thumb" alt="" /></a>-->
        <!--                            <h6><a href="#">Delica omtantur </a></h6>-->
        <!--                            <p>1x - <span class="price">$80.00</span></p>-->
        <!--                        </li>-->
        <!--                        <li>-->
        <!--                            <a href="#" class="photo"><img src="../images/img-pro-02.jpg" class="cart-thumb" alt="" /></a>-->
        <!--                            <h6><a href="#">Omnes ocurreret</a></h6>-->
        <!--                            <p>1x - <span class="price">$60.00</span></p>-->
        <!--                        </li>-->
        <!--                        <li>-->
        <!--                            <a href="#" class="photo"><img src="../images/img-pro-03.jpg" class="cart-thumb" alt="" /></a>-->
        <!--                            <h6><a href="#">Agam facilisis</a></h6>-->
        <!--                            <p>1x - <span class="price">$40.00</span></p>-->
        <!--                        </li>-->
        <!--                        <li class="total">-->
        <!--                            <a href="#" class="btn btn-default hvr-hover btn-cart">VIEW CART</a>-->
        <!--                            <span class="float-right"><strong>Total</strong>: $180.00</span>-->
        <!--                        </li>-->
        <!--                    </ul>-->
        <!--                </li>-->
        <!--            </div>-->
        <!-- End Side Menu -->
    </nav>
    <!-- End Navigation -->
</header>
<!-- End Main Top -->

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


<main id="main">
    <div class="content">
        <h3 class="uppercase">Đăng nhập</h3>
        <form action="./login" method="post">

            <%
                if (error != null) {
            %>
            <div class="alert alert-danger" role="alert">
                <%= error %>
            </div>
            <%
                }
            %>

            <div class="mb-3">
                <label for="email" class="form-label">Tên tài khoản<span
                        class="required">*</span></label>
                <input type="text" class="form-control" id="email" name="username">
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Mật khẩu<span class="required">*</span></label>
                <input type="password" class="form-control" id="password" name="password">
            </div>
            <div class="option">
                <a href="./template/html/forgotpassword.html">Quên mật khẩu?</a>
                <a href="./register.jsp">Chưa có tài khoản? Đăng ký</a>
            </div>
            <button type="submit" class="btn btn-primary">ĐĂNG NHẬP</button>

        </form>
    </div>
</main>

<!-- Start Footer  -->
<footer>
    <div class="footer-main">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-top-box">
                        <h3>Thời gian làm việc</h3>
                        <ul class="list-time">
                            <li>Thứ 2 đến thứ 6: 8h đến 5h</li>
                            <li>Thứ 7 8h đến 11h</li>
                            <li>Chủ Nhật: <span>Đóng cửa</span></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-top-box">
                        <h3>Khách</h3>
                        <form class="newsletter-box">
                            <div class="form-group">
                                <input class="" type="email" name="Email" placeholder="Email Address*"/>
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
                        <h4>Về trang Freshshop</h4>
                        <p> Là nơi cung cấp cho bạn về các sản phẩm như trái cây rau củ
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
                                <p><i class="fas fa-map-marker-alt"></i>Address: Michael I. Days 3756 <br>Preston Street
                                    Wichita,<br> KS 67213 </p>
                            </li>
                            <li>
                                <p><i class="fas fa-phone-square"></i>Phone: <a href="tel:+1-888705770">+1-888 705
                                    770</a></p>
                            </li>
                            <li>
                                <p><i class="fas fa-envelope"></i>Email: <a href="mailto:contactinfo@gmail.com">contactinfo@gmail.com</a>
                                </p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- End Footer  -->

<!-- ALL JS FILES -->
<script src="./js/jquery-3.2.1.min.js"></script>
<script src="./js/popper.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
<!-- ALL PLUGINS -->
<script src="./js/jquery.superslides.min.js"></script>
<script src="./js/bootstrap-select.js"></script>
<script src="./js/inewsticker.js"></script>
<script src="./js/bootsnav.js"></script>
<script src="./js/images-loded.min.js"></script>
<script src="./js/isotope.min.js"></script>
<script src="./js/owl.carousel.min.js"></script>
<script src="./js/baguetteBox.min.js"></script>
<script src="./js/form-validator.min.js"></script>
<script src="./js/contact-form-script.js"></script>
<script src="./js/custom.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        $("#formLogin").validate({
            rules:{
                username: {
                    required:true,
                    minLength:6
                },
                password: {
                    required:true,
                    minLength:6
                }
            },
            messages: {
                username: {
                    required: "Vui lòng nhập tên đăng nhập",
                    minLength: "Tên đăng nhập tối thiểu 6 kí tự"
                },
                password: {
                    required: "Vui lòng nhập mật khẩu",
                    minLength: "Mật khẩu tối thiểu 8 kí tự"
                }
            }
        });
    });
</script>
</body>
</html>