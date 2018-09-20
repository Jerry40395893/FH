<%@ page language="java" contentType="text/html;  charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
  String path = request.getScheme() + "://" + request.getServerName() + ":"
    + request.getServerPort() + request.getContextPath() + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>人气排行榜</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="./css/images/favicon.ico" />

<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="default" />
<meta name="viewport"
	content="width=device-width, minimum-scale=1, maximum-scale=1" />
<link rel="stylesheet" href="<%=path%>/css/bkstyle.css" type="text/css"
	media="all" type="text/css" />
<link rel="stylesheet" href="<%=path%>/css/bkresponsive.css"
	type="text/css" media="all" type="text/css" />
<link rel="stylesheet" href="<%=path%>/css/bkcustomize.css"
	type="text/css" media="all" type="text/css" />
<script src="<%=path%>/js/modernizr.js" type="text/javascript"></script>

</head>
<body style="background: #f2ede2">

	<section id="wrap"> <section id="bottom"> <section
		class="shell">
	<ul class="widgets">
		<li class="upcoming-widget one_third">
			<h4
				style="font-size: 26px; font-family: STKaiti; margin-bottom: 20px; margin-top: 10px; color: #F36">女神榜</h4>
			<section class="container">
			<ul class="slides">
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/first.png" alt="" /></span> <span class="right">2pm
							- 3pm &nbsp <img style="margin-top: 8px; float: right;"
							src="<%=path%>/images/love.png" />
					</span> <strong> &nbsp &nbsp Indoor Cycling </strong></a></li>

				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/second.png" alt="" /></span> <span class="right">3pm
							- 3:30pm &nbsp<img style="margin-top: 8px; float: right;"
							src="<%=path%>/images/love.png" />
					</span> <strong>&nbsp &nbsp Cardio Fitness</strong></a></li>

				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/thrid.png" alt="" /></span> <span class="right">4pm
							- 6pm &nbsp <img style="margin-top: 8px; float: right;"
							src="<%=path%>/images/love.png" />
					</span> <strong>&nbsp &nbsp Advanced Cardio</strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/four.png" alt="" /></span> <span class="right">7pm
							- 7:30pm &nbsp <img style="margin-top: 8px; float: right;"
							src="<%=path%>/images/love.png" />
					</span> <strong>&nbsp &nbsp Intro to Yoga</strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/five.png" alt="" /></span> <span class="right">8pm
							- 11pm &nbsp <img style="margin-top: 8px; float: right;"
							src="<%=path%>/images/love.png" />
					</span> <strong>&nbsp &nbsp Advanced Boxing</strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/six.png" alt="" /></span> <span class="right">7am
							- 8am &nbsp <img style="margin-top: 8px; float: right;"
							src="<%=path%>/images/love.png" />
					</span> <strong>&nbsp &nbsp Advanced Cardio</strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/seven.png" alt="" /></span> <span class="right">9:30am
							- 11am &nbsp <img style="margin-top: 8px; float: right;"
							src="<%=path%>/images/love.png" />
					</span> <strong>&nbsp &nbsp Intro to Yoga</strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/eight.png" alt="" /></span> <span class="right">2pm
							- 3pm &nbsp <img style="margin-top: 8px; float: right;"
							src="<%=path%>/images/love.png" />
					</span> <strong>&nbsp &nbsp Indoor Cycling</strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/nine.png" alt="" /></span> <span class="right">3pm
							- 3:30pm &nbsp <img style="margin-top: 8px; float: right;"
							src="<%=path%>/images/love.png" />
					</span> <strong>&nbsp &nbsp Cardio Fitness</strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/ten.png" alt="" /></span> <span class="right">4pm
							- 3:30pm &nbsp <img style="margin-top: 8px; float: right;"
							src="<%=path%>/images/love.png" />
					</span> <strong>&nbsp &nbsp Cardio Fitness</strong></a></li>
			</ul>
			</section>
		</li>
	</ul>
	<ul class="widgets">
		<li class="upcoming-widget one_third">
			<h4
				style="font-size: 26px; font-family: STKaiti; margin-bottom: 20px; margin-top: 10px; color: #0CF">男神榜</h4>
			<section class="container">
			<ul class="slides">
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/first.png" alt="" /></span> <span class="right">2pm
							- 3pm &nbsp <img style="margin-top: 8px; float: right;"
							src="<%=path%>/images/love.png" />
					</span> <strong> &nbsp &nbsp Indoor Cycling </strong></a></li>

				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/second.png" alt="" /></span> <span class="right">3pm
							- 3:30pm &nbsp<img style="margin-top: 8px; float: right;"
							src="<%=path%>/images/love.png" />
					</span> <strong>&nbsp &nbsp Cardio Fitness</strong></a></li>

				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/thrid.png" alt="" /></span> <span class="right">4pm
							- 6pm &nbsp <img style="margin-top: 8px; float: right;"
							src="<%=path%>/images/love.png" />
					</span> <strong>&nbsp &nbsp Advanced Cardio</strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/four.png" alt="" /></span> <span class="right">7pm
							- 7:30pm &nbsp <img style="margin-top: 8px; float: right;"
							src="<%=path%>/images/love.png" />
					</span> <strong>&nbsp &nbsp Intro to Yoga</strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/five.png" alt="" /></span> <span class="right">8pm
							- 11pm &nbsp <img style="margin-top: 8px; float: right;"
							src="<%=path%>/images/love.png" />
					</span> <strong>&nbsp &nbsp Advanced Boxing</strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/six.png" alt="" /></span> <span class="right">7am
							- 8am &nbsp <img style="margin-top: 8px; float: right;"
							src="<%=path%>/images/love.png" />
					</span> <strong>&nbsp &nbsp Advanced Cardio</strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/seven.png" alt="" /></span> <span class="right">9:30am
							- 11am &nbsp <img style="margin-top: 8px; float: right;"
							src="<%=path%>/images/love.png" />
					</span> <strong>&nbsp &nbsp Intro to Yoga</strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/eight.png" alt="" /></span> <span class="right">2pm
							- 3pm &nbsp <img style="margin-top: 8px; float: right;"
							src="<%=path%>/images/love.png" />
					</span> <strong>&nbsp &nbsp Indoor Cycling</strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/nine.png" alt="" /></span> <span class="right">3pm
							- 3:30pm &nbsp <img style="margin-top: 8px; float: right;"
							src="<%=path%>/images/love.png" />
					</span> <strong>&nbsp &nbsp Cardio Fitness</strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/ten.png" alt="" /></span> <span class="right">4pm
							- 3:30pm &nbsp <img style="margin-top: 8px; float: right;"
							src="<%=path%>/images/love.png" />
					</span> <strong>&nbsp &nbsp  Fitness</strong></a></li>
			</ul>
			</section>
		</li>

	</ul>
	</section> </section> </section>

	<script src="js/jquery-1.7.2.min.js"></script>
	<script src="./js/jquery.easing.1.3.js" type="text/javascript"></script>
	<script src="./js/jquery.carouFredSel-5.6.2.js" type="text/javascript"></script>
	<script src="./js/jquery.flexslider.min.js" type="text/javascript"></script>
	<script src="./js/jquery.tweet.js" type="text/javascript"></script>
	<script src="./js/fancybox/jquery.fancybox.pack.js"
		type="text/javascript"></script>
	<script src="./js/jquery.func.js" type="text/javascript"></script>

</body>
</html>
