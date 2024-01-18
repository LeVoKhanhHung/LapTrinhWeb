<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html; charset=UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Profile</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="../images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="../css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="../css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="../css/custom.css">

    <link rel="stylesheet" href="../css/fontawesome-free-6.4.2-web/css/all.css">
    <link rel="stylesheet" href="../css/login-form.css">


    <style>
        .profile-container {
            height: 700px;
            max-width: 600px;
            margin: 10px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: left; /* Căn trái nội dung trong container */
        }

        h3 {
            color: #333;
        }

        .profile-info {
            margin-top: 20px;
            float: right; /* Căn phải */
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        input, /* Giữ nguyên kiểu cho trường input */
        textarea { /* Thêm kiểu cho trường textarea */
            margin-bottom: 10px;
            width: 100%; /* Đảm bảo chiều rộng là 100% của container */
        }

        #avatar-container {
            position: relative;
            width: 150px;
            height: 150px;
            margin: 10px auto;
            float: left; /* Căn trái */
        }

        #avatar {
            padding: 20px;
            width: 200px;
            height: 200px;
            border-radius: 50px;
        }

        #change-avatar,
        #save-button {
            display: block;
            margin: 20px 0;
            padding: 10px 10px;
            background-color: #669933;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        #change-avatar-input {
            display: none;
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
                <a class="navbar-brand" href="index.jsp"><img src="../images/logo.png" class="logo" alt=""></a>
            </div>
            <!-- End Header Navigation -->

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="navbar-menu">
                <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                    <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                    <!--                    <li class="nav-item"><a class="nav-link" href="about.html">About Us</a></li>-->
                    <li class="dropdown active">
                        <a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">SHOP</a>
                        <ul class="dropdown-menu">
                            <li><a href="shop.jsp">Sidebar Shop</a></li>
                            <li><a href="shop-detail.jsp">Shop Detail</a></li>
                            <li><a href="cart.jsp">Cart</a></li>
                            <li><a href="checkout.jsp">Checkout</a></li>
                            <!--                            <li><a href="my-account.html">My Account</a></li>-->
                            <!--                            <li><a href="wishlist.html">Wishlist</a></li>-->
                        </ul>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="gallery.html">Gallery</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact-us.jsp">Contact Us</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->

            <!-- Start Atribute Navigation -->
            <div class="attr-nav">
                <ul>
                    <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
                    <li class="side-menu"><a href="#">
                        <i class="fa fa-shopping-bag"></i>
                        <span class="badge">3</span>
                        <p>My Cart</p>
                    </a></li>
                </ul>
            </div>
            <!-- End Atribute Navigation -->
        </div>
        <!-- Start Side Menu -->
        <!-- Start Side Menu -->
        <div class="side">
            <a href="#" class="close-side"><i class="fa fa-times"></i></a>
            <li class="cart-box">
                <ul class="cart-list">
                    <li>
                        <a href="#" class="photo"><img src="../images/img-pro-01.jpg" class="cart-thumb" alt=""/></a>
                        <h6><a href="#">Delica omtantur </a></h6>
                        <p>1x - <span class="price">$80.00</span></p>
                    </li>
                    <li>
                        <a href="#" class="photo"><img src="../images/img-pro-02.jpg" class="cart-thumb" alt=""/></a>
                        <h6><a href="#">Omnes ocurreret</a></h6>
                        <p>1x - <span class="price">$60.00</span></p>
                    </li>
                    <li>
                        <a href="#" class="photo"><img src="../images/img-pro-03.jpg" class="cart-thumb" alt=""/></a>
                        <h6><a href="#">Agam facilisis</a></h6>
                        <p>1x - <span class="price">$40.00</span></p>
                    </li>
                    <li class="total">
                        <a href="#" class="btn btn-default hvr-hover btn-cart">VIEW CART</a>
                        <span class="float-right"><strong>Total</strong>: $180.00</span>
                    </li>
                </ul>
            </li>
        </div>
        <!-- End Side Menu -->
    </nav>
    <!-- End Navigation -->
</header>
<!-- End Main Top -->
<main style="background-color: #f5f5f5">

    <div class="profile-container">
        <h3 style="font-weight: 600">Hồ sơ của tôi</h3>
        <div class="profile-info">
            <label for="username">Tên đăng nhập:</label>
            <input type="text" id="username" value="ABC123">

            <label for="email">Email:</label>
            <input type="text" id="email" value="abc@example.com">

            <label for="phone">Số điện thoại:</label>
            <input type="text" id="phone" value="0123456789">

            <label for="dob">Ngày sinh:</label>
            <input type="text" id="dob" value="01/01/1990">

            <label for="address">Địa chỉ:</label>
            <textarea id="address" rows="4">123 Main Street, City, Country</textarea>

            <label for="company">Tên công ty:</label>
            <input type="text" id="company" value="Công ty ABC">

            <button id="save-button">Lưu thông tin</button>
        </div>

        <div id="avatar-container">
            <label for="avatar">Hình ảnh:</label>
            <img id="avatar" src="../images/apple-touch-icon.png" alt="Avatar">
            <button id="change-avatar">Đổi ảnh</button>
            <input type="file" id="change-avatar-input" accept="image/*">
        </div>
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
                            <li><a href="contact-us.jsp">Về trang web chúng tôi</a></li>
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


</body>
</html>
