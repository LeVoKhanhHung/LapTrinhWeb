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
											class="fa fa-calendar-check-o"></i> Đơn hàng</a></li>
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
				class="fa fa-reorder"></i> Thanh điều hướng</a>
			<div class="dashboard-nav">
				<div class="dashboard-nav-inner">

					<ul data-submenu-title="Main">
						<li><a th:href="@{/dashboard}"><i
								class="sl sl-icon-settings"></i> Điều hướng</a></li>
						<li class="active"><a th:href="@{/dashboard-orders}"><i
								class="fa fa-calendar-check-o"></i> Đơn hàng</a></li>
						<li><a th:href="@{/dashboard-wallet}"><i
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
			<div class="dashboard-content">

				<!-- Titlebar -->
				<div id="titlebar">
					<div class="row">
						<div class="col-md-12">
							<h2>Danh sách đơn đặt hàng</h2>
							<!-- Breadcrumbs -->
							<nav id="breadcrumbs">
								<ul>
									<li><a href="#">Trang chủ</a></li>
									<li><a href="#">Diều hướng</a></li>
									<li>Đơn hàng</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>

				<div class="row">

					<!-- Listings -->
					<div class="col-lg-12 col-md-12">
						<div class="dashboard-list-box margin-top-0">



							<h4>Đơn đặt hàng</h4>
							<ul>
								<th:block th:each="y : ${pageOrder.content}">
									<li class="pending-booking">
										<div class="list-box-listing bookings">
											<div class="list-box-listing-img">
												<img th:src="${y.user.avatar}" alt="">
											</div>
											<div class="list-box-listing-content">
												<div class="inner">
													<div></div>
													<h3 th:if="${y.order_Item.size() == 1}"
														th:text="${y.order_Item[0].product.product_Name}"></h3>
													<h3 th:if="${y.order_Item.size() > 1}"
														th:text="${y.order_Item[0].product.product_Name} + '( And '+ ${y.order_Item.size() - 1} + ' more ...)'"></h3>
													<div class="inner-booking-list">
														<h5>Ngày đặt hàng:</h5>
														<ul class="booking-list">
															<li class="highlighted"
																th:text="${#dates.format(y.booking_Date, 'dd/MM/yyyy')}"></li>
														</ul>
													</div>

													<div class="inner-booking-list">
														<h5>Ghi chú:</h5>
														<ul class="booking-list">
															<li class="highlighted" th:text="${y.note}"></li>
														</ul>
													</div>

													<div class="inner-booking-list">
														<h5>Giá:</h5>
														<ul class="booking-list">
															<li class="highlighted"
																th:text="${#numbers.formatDecimal(y.total, 0, 'COMMA', 0, 'POINT')} + ' VNĐ'"></li>
														</ul>
													</div>

													<div class="inner-booking-list">
														<h5>Khách hàng:</h5>
														<ul class="booking-list">
															<li th:text="${y.user.user_Name}"></li>
															<li th:text="${y.user.email}"></li>
															<li th:text="${y.user.phone_Number}"></li>
														</ul>
													</div>

													<!-- Reply to review popup -->
													<div id="small-dialog" class="zoom-anim-dialog mfp-hide">
														<div class="small-dialog-header">
															<h3>Gửi tin nhắn</h3>
														</div>
														<div class="message-reply margin-top-0">
															<form action="/send-message" method="post">
																<textarea name="message" cols="40" rows="3"
																	th:placeholder="'Your Message to ' +${y.user.user_Name}"></textarea>
																<input name="email" th:value="${y.user.email}">
																<button type="submit" class="button">Gửi</button>
															</form>
														</div>
													</div>

													<a href="#small-dialog"
														class="rate-review popup-with-zoom-anim"><i
														class="sl sl-icon-envelope-open"></i> Gửi tin nhắn</a>
												</div>
											</div>
										</div>
										<div class="buttons-to-right">
											<a th:href="@{/delete-order/{id}(id=${y.id})}" class="button gray reject"><i
												class="sl sl-icon-close"></i> Xóa</a> <a
												th:href="@{/dashboard-invoice/{id}(id=${y.id})}"
												class="button gray approve"><i class="im im-icon-Coin"></i>
												Xem hóa đơn</a>
										</div>
									</li>
								</th:block>
							</ul>
						</div>
					</div>

					<!-- Pagination -->
					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12">
							<!-- Pagination -->
							<div class="pagination-container margin-top-20 margin-bottom-40">
								<nav class="pagination">
									<ul>
										<li><a th:if="${pageOrder.number} > 0"
											th:href="@{/dashboard-orders/{page}(page=${pageOrder.number - 1})}"><i
												class="sl sl-icon-arrow-left"></i></a></li>
										<li><a
											th:href="@{/dashboard-orders/{page}(page=${pageOrder.number})}"
											class="current-page" th:text="${pageOrder.number+1}"></a></li>
										<li><a
											th:if="${pageOrder.number} < ${pageOrder.totalPages - 1}"
											th:href="@{/dashboard-orders/{page}(page=${pageOrder.number + 1})}"><i
												class="sl sl-icon-arrow-right"></i></a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
					<!-- Pagination / End -->

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
		src="/scripts/jquery-migrate-3.3.2.min.js"></script>
	<script type="text/javascript" src="/scripts/mmenu.min.js"></script>
	<script type="text/javascript" src="/scripts/chosen.min.js"></script>
	<script type="text/javascript" src="/scripts/slick.min.js"></script>
	<script type="text/javascript" src="/scripts/rangeslider.min.js"></script>
	<script type="text/javascript" src="/scripts/magnific-popup.min.js"></script>
	<script type="text/javascript" src="/scripts/waypoints.min.js"></script>
	<script type="text/javascript" src="/scripts/counterup.min.js"></script>
	<script type="text/javascript" src="/scripts/jquery-ui.min.js"></script>
	<script type="text/javascript" src="/scripts/tooltips.min.js"></script>
	<script type="text/javascript" src="/scripts/custom.js"></script>

	<!-- Date Range Picker - docs: http://www.daterangepicker.com/ -->
	<script src="/static/scripts/moment.min.js"></script>
	<script src="/static/scripts/daterangepicker.js"></script>

	<script>
		$(function() {

			var start = moment().subtract(29, 'days');
			var end = moment();

			function cb(start, end) {
				$('#booking-date-range span').html(
						start.format('MMMM D, YYYY') + ' - '
								+ end.format('MMMM D, YYYY'));
			}
			cb(start, end);
			$('#booking-date-range').daterangepicker(
					{
						"opens" : "left",
						"autoUpdateInput" : false,
						"alwaysShowCalendars" : true,
						startDate : start,
						endDate : end,
						ranges : {
							'Today' : [ moment(), moment() ],
							'Yesterday' : [ moment().subtract(1, 'days'),
									moment().subtract(1, 'days') ],
							'Last 7 Days' : [ moment().subtract(6, 'days'),
									moment() ],
							'Last 30 Days' : [ moment().subtract(29, 'days'),
									moment() ],
							'This Month' : [ moment().startOf('month'),
									moment().endOf('month') ],
							'Last Month' : [
									moment().subtract(1, 'month').startOf(
											'month'),
									moment().subtract(1, 'month')
											.endOf('month') ]
						}
					}, cb);

			cb(start, end);

		});

		// Calendar animation and visual settings
		$('#booking-date-range')
				.on(
						'show.daterangepicker',
						function(ev, picker) {
							$('.daterangepicker')
									.addClass(
											'calendar-visible calendar-animated bordered-style');
							$('.daterangepicker')
									.removeClass('calendar-hidden');
						});
		$('#booking-date-range').on('hide.daterangepicker',
				function(ev, picker) {
					$('.daterangepicker').removeClass('calendar-visible');
					$('.daterangepicker').addClass('calendar-hidden');
				});
	</script>


</body>
</html>