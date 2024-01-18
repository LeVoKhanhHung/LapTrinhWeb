<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<%@ page contentType="text/html; charset=UTF-8" %>
<head>

<!-- Basic Page Needs
================================================== -->
<title>Admin Page</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->
<link rel="stylesheet" href="/css/listeo/css/style.css">
<link rel="stylesheet" href="/css/listeo/css/main-color.css" id="colors">
<link rel="icon" href="...">
	<link rel="stylesheet" href="../css/all.css">
	<link rel="stylesheet" href="../css/fontawesome-free-6.4.2-web/css/all.css">
</head>

<body>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header Container
================================================== -->
		<header id="header-container" class="fixed fullwidth dashboard">

			<!-- Header -->
			<div id="header" class="not-sticky">
				<div class="container">

					<!-- Left Side Content -->
					<div class="left-side">

						<!-- Logo -->
						<div id="logo">
							<a href="index.jsp"><img src="..." alt=""></a>
							<a href="index.jsp" class="dashboard-logo"><img
								src="..." alt=""></a>
						</div>

						<!-- Mobile Navigation -->
						<div class="mmenu-trigger">
							<button class="hamburger hamburger--collapse" type="button">
								<span class="hamburger-box"> <span
									class="hamburger-inner"></span>
								</span>
							</button>
						</div>

					</div>
					<!-- Left Side Content / End -->

					<!-- Right Side Content / End -->
					<div class="right-side">
						<!-- Header Widget -->
						<div class="header-widget">

							<!-- User Menu -->
							<div class="user-menu">
								<div class="user-name">
									<span><img th:src="${session.admin.avatar}" alt=""></span>Tài Khoản
								</div>
								<ul>
									<li><a th:href="@{/dashboard}"><i
											class="sl sl-icon-settings"></i> Điều hướng</a></li>
									<li><a th:href="@{/dashboard-myprofile}"><i
											class="sl sl-icon-envelope-open"></i> Thông tin cá nhân</a></li>
									<li><a th:href="@{/dashboard-orders}"><i
											class="fa fa-calendar-check-o"></i> Đơn đặt hàng</a></li>
									<li><a th:href="@{/logout-admin}"><i
											class="sl sl-icon-power"></i> Đăng xuất</a></li>
								</ul>
							</div>

							<a th:href="@{/dashboard-addproduct}"
								class="button border with-icon">Thêm sản phẩm<i
								class="sl sl-icon-plus"></i></a>
						</div>
						<!-- Header Widget / End -->
					</div>
					<!-- Right Side Content / End -->

				</div>
			</div>
			<!-- Header / End -->

		</header>
		<div class="clearfix"></div>
		<!-- Header Container / End -->


		<!-- Dashboard -->
		<div id="dashboard">

			<!-- Navigation
	================================================== -->

			<!-- Responsive Navigation Trigger -->
			<a href="#" class="dashboard-responsive-nav-trigger"><i
				class="fa fa-reorder"></i> Đường dẫn</a>
			<div class="dashboard-nav">
				<div class="dashboard-nav-inner">

					<ul data-submenu-title="Main">
						<li><a th:href="@{/dashboard}"><i
								class="sl sl-icon-settings"></i> Điều hướng</a></li>
						<li><a th:href="@{/dashboard-orders}"><i
								class="fa fa-calendar-check-o"></i> Đơn hàng</a></li>
						<li class="active"><a th:href="@{/dashboard-wallet}"><i
								class="sl sl-icon-wallet"></i> Doanh Thu</a></li>
					</ul>

					<ul data-submenu-title="Products">
						<li><a th:href="@{/dashboard-myproducts}"><i
								class="sl sl-icon-layers"></i> Danh sách sản phẩm</a></li>
						<li><a th:href="@{/dashboard-addproduct}"><i
								class="sl sl-icon-plus"></i> Thêm sản phẩm</a></li>
					</ul>

					<ul data-submenu-title="Account">
						<li><a th:href="@{/dashboard-myprofile}"><i
								class="sl sl-icon-user"></i> Thông tin cá nhân</a></li>
						<li><a th:href="@{/logout-admin}"><i
								class="sl sl-icon-power"></i> Đăng xuất</a></li>
					</ul>
					<ul data-submenu-title="">
						<li><a th:href="@{/home}"><i class="im im-icon-Home"></i>
								Trở về trang chủ</a></li>
					</ul>
				</div>
			</div>
			<!-- Navigation / End -->


			<!-- Content
	================================================== -->
			<div class="dashboard-content" style="margin-bottom: 70px;">

				<!-- Titlebar -->
				<div id="titlebar">
					<div class="row">
						<div class="col-md-12">
							<h2>Doanh Thu</h2>
							<!-- Breadcrumbs -->
							<nav id="breadcrumbs">
								<ul>
									<li><a href="#">Trang chủ</a></li>
									<li>Điều hướng</li>
									<li>Doanh Thu</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>

				<!-- Content -->
				<div class="row">

					<!-- Item -->
					<div class="col-lg-4 col-md-6">
						<div class="dashboard-stat color-1">
							<div class="dashboard-stat-content wallet-totals">
								<h4
									th:text="${#numbers.formatDecimal(TotalMomo, 0, 'COMMA', 0, 'POINT')}"></h4>
								<span>Thanh toán bằng Momo<strong class="wallet-currency">VNĐ</strong></span>
							</div>
							<div class="dashboard-stat-icon">
								<i class="im im-icon-Money-2"></i>
							</div>
						</div>
					</div>
					<!-- Item -->
					<div class="col-lg-4 col-md-6">
						<div class="dashboard-stat color-3">
							<div class="dashboard-stat-content wallet-totals">
								<h4
									th:text="${#numbers.formatDecimal(TotalDelivery, 0, 'COMMA', 0, 'POINT')}"></h4>
								<span>Thanh toán trực tiếp<strong class="wallet-currency">VNĐ</strong></span>
							</div>
							<div class="dashboard-stat-icon">
								<i class="im im-icon-Money-Bag"></i>
							</div>
						</div>
					</div>

					<!-- Item -->
					<div class="col-lg-4 col-md-6">
						<div class="dashboard-stat color-2">
							<div class="dashboard-stat-content">
								<h4
									th:text="${#numbers.formatDecimal(TotalOrder, 0, 'COMMA', 0, 'POINT')}"></h4>
								<span>Tổng hóa đơn</span>
							</div>
							<div class="dashboard-stat-icon">
								<i class="im im-icon-Shopping-Cart"></i>
							</div>
						</div>
					</div>

				</div>

				<h3 style="margin-top: 0px; margin-bottom: 0px;">Recent orders</h3>

				<div class="row">

					<!-- Invoices -->
					<div class="col-lg-6 col-md-12">
						<div class="dashboard-list-box invoices with-icons margin-top-20">
							<h4>Thanh toán bằng Momo</h4>
							<ul>
								<th:block th:each="y : ${listRecentMomo}">
									<li><i class="list-box-icon sl sl-icon-basket"></i> <strong
										th:text="${y.user.user_Name}"></strong>
										<ul>
											<li class="paid"
												th:text="${#numbers.formatDecimal(y.total, 0, 'COMMA', 0, 'POINT')} + ' VNĐ'"></li>
											<li th:text="'Order: #'+${y.id}"></li>
											<li
												th:text="'Date: ' + ${#dates.format(y.booking_Date, 'dd/MM/yyyy')}"></li>
										</ul>
										<div class="buttons-to-right">
											<a th:href="@{/dashboard-invoice/{id}(id=${y.id})}"
												class="button gray">Xem hóa đơn</a>
										</div></li>
								</th:block>
							</ul>
						</div>
					</div>

					<!-- Invoices -->
					<div class="col-lg-6 col-md-12">
						<div class="dashboard-list-box invoices with-icons margin-top-20">
							<h4>Thanh toán trực tiếp</h4>
							<ul>
								<th:block th:each="y : ${listRecentDelivery}">
								<li><i class="list-box-icon sl sl-icon-basket"></i> <strong th:text="${y.user.user_Name}"></strong>
									<ul>
										<li class="paid" th:text="${#numbers.formatDecimal(y.total, 0, 'COMMA', 0, 'POINT')} + ' VNĐ'"></li>
										<li th:text="'Order: #'+${y.id}"></li>
										<li th:text="'Date: ' + ${#dates.format(y.booking_Date, 'dd/MM/yyyy')}"></li>
									</ul>
									<div class="buttons-to-right">
										<a th:href="@{/dashboard-invoice/{id}(id=${y.id})}" class="button gray">Xem hóa đơn</a>
									</div></li>
								</th:block>
							</ul>
						</div>
					</div>

				</div>

			</div>
			<!-- Content / End -->


		</div>
		<!-- Dashboard / End -->


	</div>
	<!-- Wrapper / End -->


	<!-- Scripts
================================================== -->
	<script type="text/javascript" src="/static/scripts/jquery-3.6.0.min.js"></script>
	<script type="text/javascript"
		src="scripts/jquery-migrate-3.3.2.min.js"></script>
	<script type="text/javascript" src="scripts/mmenu.min.js"></script>
	<script type="text/javascript" src="scripts/chosen.min.js"></script>
	<script type="text/javascript" src="scripts/slick.min.js"></script>
	<script type="text/javascript" src="scripts/rangeslider.min.js"></script>
	<script type="text/javascript" src="scripts/magnific-popup.min.js"></script>
	<script type="text/javascript" src="scripts/waypoints.min.js"></script>
	<script type="text/javascript" src="scripts/counterup.min.js"></script>
	<script type="text/javascript" src="scripts/jquery-ui.min.js"></script>
	<script type="text/javascript" src="scripts/tooltips.min.js"></script>
	<script type="text/javascript" src="scripts/custom.js"></script>


</body>
</html>