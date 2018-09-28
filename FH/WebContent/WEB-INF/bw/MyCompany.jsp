<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
  String path = request.getContextPath();
			String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<title>我的佳缘</title>

<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<meta content=" description" name="description">
<meta content=" keywords" name="keywords">
<meta content="keenthemes" name="author">
<meta property="og:site_name" content="-CUSTOMER VALUE-">
<meta property="og:title" content="-CUSTOMER VALUE-">
<meta property="og:description" content="-CUSTOMER VALUE-">
<meta property="og:type" content="website">
<meta property="og:image" content="-CUSTOMER VALUE-">
<!-- link to image for socio -->
<meta property="og:url" content="-CUSTOMER VALUE-">

<link rel="<%=basePath%>shortcut icon" href="favicon.ico">



<!-- Global styles START -->
<link
	href="<%=basePath%>assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="<%=basePath%>assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Global styles END -->

<!-- Page level plugin styles START -->
<link
	href="<%=basePath%>assets/plugins/fancybox/source/jquery.fancybox.css"
	rel="stylesheet">
<link
	href="<%=basePath%>assets/plugins/owl.carousel/assets/owl.carousel.css"
	rel="stylesheet">
<link href="<%=basePath%>assets/plugins/uniform/css/uniform.default.css"
	rel="stylesheet" type="text/css">

<link href="<%=basePath%>assets/plugins/rateit/src/rateit.css"
	rel="stylesheet" type="text/css">
<!-- Page level plugin styles END -->

<!-- Theme styles START -->
<link href="<%=basePath%>assets/pages/css/components.css"
	rel="stylesheet">
<link href="<%=basePath%>assets/corporate/css/style.css"
	rel="stylesheet">
<link href="<%=basePath%>assets/pages/css/style-shop.css"
	rel="stylesheet" type="text/css">
<link href="<%=basePath%>assets/corporate/css/style-responsive.css"
	rel="stylesheet">
<link href="<%=basePath%>assets/corporate/css/themes/red.css"
	rel="stylesheet" id="style-color">
<link href="<%=basePath%>assets/corporate/css/custom.css"
	rel="stylesheet">
<!-- Theme styles END -->
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="ecommerce">
	<!-- BEGIN STYLE CUSTOMIZER -->
	<div class="color-panel hidden-sm">
		<div class="color-mode-icons icon-color"></div>
		<div class="color-mode-icons icon-color-close"></div>
		<div class="color-mode">
			<p>THEME COLOR</p>
			<ul class="inline">
				<li class="color-red current color-default" data-style="red"></li>
				<li class="color-blue" data-style="blue"></li>
				<li class="color-green" data-style="green"></li>
				<li class="color-orange" data-style="orange"></li>
				<li class="color-gray" data-style="gray"></li>
				<li class="color-turquoise" data-style="turquoise"></li>
			</ul>
		</div>
	</div>
	<!-- END BEGIN STYLE CUSTOMIZER -->

	<!-- BEGIN TOP BAR -->
	<div class="pre-header">
		<div class="container">
			<div class="row">
				<!-- BEGIN TOP BAR LEFT PART -->
				<div class="col-md-6 col-sm-6 additional-shop-info">
					<ul class="list-unstyled list-inline">
						<li><i class="fa fa-phone"></i><span>Hi,用户名</span></li>
						<!-- BEGIN CURRENCIES -->
						<li class="shop-currencies"><a href="javascript:void(0);">€</a>
							<a href="javascript:void(0);">£</a> <a href="javascript:void(0);"
							class="current">$</a></li>
						<!-- END CURRENCIES -->
						<!-- BEGIN LANGS -->
						<li class="langs-block"><a href="javascript:void(0);"
							class="current">English </a>
							<div class="langs-block-others-wrapper">
								<div class="langs-block-others">
									<a href="javascript:void(0);">French</a> <a
										href="javascript:void(0);">Germany</a> <a
										href="javascript:void(0);">Turkish</a>
								</div>
							</div></li>
						<!-- END LANGS -->
					</ul>
				</div>
				<!-- END TOP BAR LEFT PART -->
				<!-- BEGIN TOP BAR MENU -->
				<div class="col-md-6 col-sm-6 additional-nav">
					<ul class="list-unstyled list-inline pull-right">
						<li><a href="shop-account.html">My Account</a></li>
						<li><a href="shop-wishlist.html">My Wishlist</a></li>
						<li><a href="shop-checkout.html">Checkout</a></li>
						<li><a href="page-login.html">Log In</a></li>
					</ul>
				</div>
				<!-- END TOP BAR MENU -->
			</div>
		</div>
	</div>
	<!-- END TOP BAR -->

	<!-- BEGIN HEADER -->
	<div class="header">
		<div class="container">
			<a class="site-logo" href="shop-index.html"><img
				src="<%=basePath%>assets/corporate/img/logos/logo-shop-red.png"
				alt=""></a> <a href="javascript:void(0);" class="mobi-toggler"><i
				class="fa fa-bars"></i></a>

			<!-- BEGIN NAVIGATION -->
			<div class="header-navigation">
				<ul>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" data-target="#" href="javascript:;"> 首页

					</a> <!-- BEGIN DROPDOWN MENU --> <!-- END DROPDOWN MENU --></li>
					<li class="dropdown active"><a class="dropdown-toggle"
						data-toggle="dropdown" data-target="#" href="javascript:;">
							我的佳缘 </a></li>
					<li><a href="shop-item.html">搜索</a></li>
					<li class="dropdown dropdown100 nav-catalogue"><a
						class="dropdown-toggle" data-toggle="dropdown" data-target="#"
						href="javascript:;"> 活动 </a></li>
					<li class="dropdown dropdown-megamenu"><a
						class="dropdown-toggle" data-toggle="dropdown" data-target="#"
						href="javascript:;"> 晒幸福 </a></li>
					</li>
					<!-- END TOP SEARCH -->
				</ul>
			</div>
			<!-- END NAVIGATION -->
		</div>
	</div>
	<!-- Header END -->

	<div class="main">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="index.html">首页</a></li>
				<li><a href="">我的佳缘</a></li>

			</ul>
			<!-- BEGIN SIDEBAR & CONTENT -->
			<div class="row margin-bottom-40">
				<!-- BEGIN SIDEBAR -->
				<div class="sidebar col-md-3 col-sm-5">
					<div class="sidebar-products clearfix">
						<h2>我的资料</h2>
						<div class="item"></div>

						<span class="item"><a href="shop-item.html"><img
								src="<%=basePath%>assets/pages/img/products/k4.jpg"></a></span>
						<h3 align="center">
							<a href="<%=basePath%>user/qx/showMyData.action">我的资料</a>
						</h3>
						<div class="item">
							<h3 align="center">
								<a href="<%=basePath%>user/qx/showMyData.action">我的资料</a>
							</h3>
							<input type="button" value="收件箱">&nbsp;<input
								type="button" value="谁看过我">
						</div>
						<div class="sidebar-filter margin-bottom-25">

							<h3>服务中心</h3>

							<h2>我的账户</h2>

						</div>
					</div>
				</div>
				<!-- END SIDEBAR -->
				<!-- BEGIN CONTENT -->
				<div class="col-md-9 col-sm-7">
					<div class="content-search margin-bottom-20">
						<div class="row">
							<div class="col-md-6">
								<h1>
									懂你今日 <em>推荐</em>
								</h1>
							</div>
							<h1 style="float: right">
								<em onclick="lookMore()">查看更多</em>
							</h1>

							<div class="col-md-6">
								<form action="#">
									<div class="input-group"></div>
								</form>
							</div>
						</div>
					</div>
					<div class="row list-view-sorting clearfix">
						<div class="col-md-2 col-sm-2 list-view">
							<a href="javascript:;"><i class="fa fa-th-large"></i></a> <a
								href="javascript:;"><i class="fa fa-th-list"></i></a>
						</div>
						<div class="col-md-10 col-sm-10"></div>
					</div>
					<!-- BEGIN PRODUCT LIST -->
					<div class="row product-list" id="changePage">
						<c:forEach items="${recomList}" var="user" varStatus="vs">
							<c:if test="${vs.count<=6}">
								<!-- PRODUCT ITEM START -->
								<div class="col-md-4 col-sm-6 col-xs-12">
									<div class="product-item">
										<div class="pi-img-wrapper">
											<img src="${user.headPortrait}" class="img-responsive">
											<div>
												<a href="assets/pages/img/products/model1.jpg"
													class="btn btn-default fancybox-button">打招呼</a> <a
													href="<%=basePath%>user/lxd/toUserInfo.action?userId=${user.userId}"
													class="btn btn-default fancybox-fast-view">查看资料</a>
											</div>
										</div>
										<h3>
											<a href="shop-item.html">${user.userName}</a>
										</h3>
										<div class="pi-price">${user.strAge}
											&nbsp;${user.cityName}&nbsp;${user.height}cm</div>
										<a onclick="addVisit(${user.userId})"
											class="btn btn-default add2cart">添加关注</a>
									</div>
								</div>
							</c:if>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- BEGIN BRANDS -->
	<div class="brands">
		<div class="container"></div>
	</div>
	<input type="hidden" id="pageNum" name="pageNum" />
	<script type="text/javascript">
		function lookMore() {
			var str = "";
			<c:forEach items='${allList}' var='user' varStatus='vs'>
			str += "<div class='col-md-4 col-sm-6 col-xs-12'> <div class='product-item'> <div class='pi-img-wrapper'>"
					+ "<img src='${user.headPortrait}'class='img-responsive'/> <div> <a href='assets/pages/img/products/model1.jpg' class='btn btn-default fancybox-button'>"
					+ "打招呼</a> <a href='<%=basePath%>user/lxd/toUserInfo.action?userId=${user.userId}'class='btn btn-default fancybox-fast-view'>查看资料</a>"
					+ "</div> </div> <h3> <a href='shop-item.html'>${user.userName}</a> </h3> <div class='pi-price'>"
					+"${user.strAge}&nbsp;${user.cityName}&nbsp;${user.height}cm </div> <a  onclick='addVisit(${user.userId})' class='btn btn-default add2cart'>添加关注</a>"
					+ "</div> </div>";
			</c:forEach>
			$("#changePage").empty();
			$("#changePage").append(str);

		}
	</script>
	<script src="<%=basePath%>assets/plugins/jquery.min.js"
		type="text/javascript"></script>
	<script src="<%=basePath%>assets/plugins/jquery-migrate.min.js"
		type="text/javascript"></script>
	<script src="<%=basePath%>assets/plugins/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="<%=basePath%>assets/corporate/scripts/back-to-top.js"
		type="text/javascript"></script>
	<script
		src="<%=basePath%>assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<!-- END CORE PLUGINS -->

	<!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
	<script
		src="<%=basePath%>assets/plugins/fancybox/source/jquery.fancybox.pack.js"
		type="text/javascript"></script>
	<!-- pop up -->
	<script
		src="<%=basePath%>assets/plugins/owl.carousel/owl.carousel.min.js"
		type="text/javascript"></script>
	<!-- slider for products -->
	<script src='<%=basePath%>assets/plugins/zoom/jquery.zoom.min.js'
		type="text/javascript"></script>
	<!-- product zoom -->
	<script
		src="<%=basePath%>assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js"
		type="text/javascript"></script>
	<!-- Quantity -->
	<script src="<%=basePath%>assets/plugins/uniform/jquery.uniform.min.js"
		type="text/javascript"></script>
	<script src="<%=basePath%>assets/plugins/rateit/src/jquery.rateit.js"
		type="text/javascript"></script>



	<script src="<%=basePath%>assets/corporate/scripts/layout.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			Layout.init();
			Layout.initOWL();
			Layout.initTwitter();
			Layout.initImageZoom();
			Layout.initTouchspin();
			Layout.initUniform();
			Layout.initSliderRange();
		});
		function addVisit(obj){
			$.ajax({
				url:"<%=basePath%>user/lxd/addFocus.action",
				data:{"toUserId":obj},
				dataType:"text",
				type:"post",
				success:function(redata){
					if (redata="") {
						alert("关注成功");
					} else if(redata!=null){
						alert(redata);
					}
				}
			});
		}
	</script>

	<!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>