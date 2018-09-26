<%@ page language="java" contentType="text/html;  charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
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
							src="<%=path%>/images/first.png" alt="" /></span> 
							<%-- <c:if test="${fn:length(womenList)>=1}"> --%>
							<span class="right">${womenList[0].popular} &nbsp <img
								style="margin-top: 8px; float: right;"
								src="<%=path%>/images/love.png" />
								</span> 
						 <strong> &nbsp &nbsp ${womenList[0].userName} 
						&nbsp ${womenList[0].cityName} &nbsp ${womenList[0].strAge} &nbsp ${womenList[0].height}</strong></a></li>

				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/second.png" alt="" /></span> 
							<%-- <c:if test="${fn:length(womenList)>=2 }"> --%>
							<span class="right">${womenList[1].popular} &nbsp <img
								style="margin-top: 8px; float: right;"
								src="<%=path%>/images/love.png" />
								</span> 
							 <strong>&nbsp &nbsp ${womenList[1].userName}
							&nbsp ${womenList[1].cityName} &nbsp ${womenList[1].strAge} &nbsp ${womenList[1].height}</strong></a></li>

				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/thrid.png" alt="" /></span> 
					<%-- <c:if test="${fn:length(womenList)>=3 }"> --%>
							<span class="right">${womenList[2].popular} &nbsp <img
								style="margin-top: 8px; float: right;"
								src="<%=path%>/images/love.png" />
								</span> 
					<strong>&nbsp &nbsp ${womenList[2].userName}
					&nbsp ${womenList[2].cityName} &nbsp ${womenList[2].strAge}  &nbsp ${womenList[2].height}</strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/four.png" alt="" /></span>
					<%-- <c:if test="${fn:length(womenList)>=4 }"> --%>
							<span class="right">${womenList[3].popular} &nbsp <img
								style="margin-top: 8px; float: right;"
								src="<%=path%>/images/love.png" />
								</span> 
					 <strong>&nbsp &nbsp ${womenList[3].userName}
					 &nbsp ${womenList[3].cityName} &nbsp ${womenList[3].strAge} &nbsp ${womenList[3].height}
					 </strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/five.png" alt="" /></span> 
					<%-- <c:if test="${fn:length(womenList)>=5 }"> --%>
							<span class="right">${womenList[4].popular} &nbsp <img
								style="margin-top: 8px; float: right;"
								src="<%=path%>/images/love.png" />
								</span> 
					<strong>&nbsp &nbsp ${womenList[4].userName}
					&nbsp ${womenList[4].cityName} &nbsp ${womenList[4].strAge}  &nbsp ${womenList[4].height}
					</strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/six.png" alt="" /></span>
						<%-- <c:if test="${fn:length(womenList)>=6 }"> --%>
							<span class="right">${womenList[5].popular} &nbsp <img
								style="margin-top: 8px; float: right;"
								src="<%=path%>/images/love.png" />
								</span> 
					 <strong>&nbsp &nbsp ${womenList[5].userName}
					 &nbsp ${womenList[5].cityName} &nbsp ${womenList[5].strAge} &nbsp ${womenList[5].height}
					 
					 </strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/seven.png" alt="" /></span>
					<%-- <c:if test="${fn:length(womenList)>=7 }"> --%>
							<span class="right">${womenList[6].popular} &nbsp <img
								style="margin-top: 8px; float: right;"
								src="<%=path%>/images/love.png" />
								</span> 
					<strong>&nbsp &nbsp ${womenList[6].userName}
					&nbsp ${womenList[6].cityName} &nbsp ${womenList[6].strAge}  &nbsp ${womenList[6].height}
					</strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/eight.png" alt="" /></span> 
					<%-- <c:if test="${fn:length(womenList)>=8 }"> --%>
							<span class="right">${womenList[7].popular} &nbsp <img
								style="margin-top: 8px; float: right;"
								src="<%=path%>/images/love.png" />
								</span> 
					<strong>&nbsp &nbsp ${womenList[7].userName}
					&nbsp ${womenList[7].cityName} &nbsp ${womenList[7].strAge}  &nbsp ${womenList[7].height}
					</strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/nine.png" alt="" /></span> 
					<%-- <c:if test="${fn:length(womenList)>=9 }"> --%>
							<span class="right">${womenList[8].popular} &nbsp <img
								style="margin-top: 8px; float: right;"
								src="<%=path%>/images/love.png" />
								</span> 
					<strong>&nbsp &nbsp ${womenList[8].userName}
					&nbsp ${womenList[8].cityName} &nbsp ${womenList[8].strAge} &nbsp ${womenList[8].height}
					</strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/ten.png" alt="" /></span> 
							<span class="right">${womenList[9].popular} &nbsp <img
								style="margin-top: 8px; float: right;"
								src="<%=path%>/images/love.png" />
								</span> 
					<strong>&nbsp &nbsp ${womenList[9].userName}
					&nbsp ${womenList[9].cityName} &nbsp ${womenList[9].strAge} &nbsp ${womenList[9].height}
					</strong></a></li>
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
							src="<%=path%>/images/first.png" alt="" /></span> 
					<%-- <c:if test="${fn:length(manList)>=1 }"> --%>
							<span class="right">${manList[0].popular} &nbsp <img
								style="margin-top: 8px; float: right;"
								src="<%=path%>/images/love.png" />
								</span> 
					 <strong> &nbsp &nbsp ${manList[0].userName}
					 &nbsp ${manList[0].cityName} &nbsp ${manList[0].strAge}  &nbsp ${manList[0].height}
					  </strong></a></li>

				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/second.png" alt="" /></span> 
					<%-- <c:if test="${fn:length(manList)>=2 }"> --%>
							<span class="right">${manList[1].popular} &nbsp <img
								style="margin-top: 8px; float: right;"
								src="<%=path%>/images/love.png" />
								</span> 
					 <strong>&nbsp &nbsp ${manList[1].userName}
					 &nbsp ${manList[1].cityName} &nbsp ${manList[1].strAge}  &nbsp ${manList[1].height}
					 </strong></a></li>

				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/thrid.png" alt="" /></span>
					<%-- <c:if test="${fn:length(manList)>=3 }"> --%>
							<span class="right">${manList[2].popular} &nbsp <img
								style="margin-top: 8px; float: right;"
								src="<%=path%>/images/love.png" />
								</span> 
					<strong>&nbsp &nbsp ${manList[2].userName}
					&nbsp ${manList[2].cityName} &nbsp ${manList[2].strAge}  &nbsp ${manList[2].height}
					</strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/four.png" alt="" /></span> 
							
							<%-- <c:if test="${fn:length(manList)>=4 }"> --%>
							<span class="right">${manList[3].popular} &nbsp <img
								style="margin-top: 8px; float: right;"
								src="<%=path%>/images/love.png" />
								</span> 
							 <strong>&nbsp &nbsp ${manList[3].userName}
							 &nbsp ${manList[3].cityName} &nbsp ${manList[3].strAge}  &nbsp ${manList[3].height}
							 </strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/five.png" alt="" /></span> 
						<%-- 	<c:if test="${fn:length(manList)>=5}"> --%>
							<span class="right">${manList[4].popular} &nbsp <img
								style="margin-top: 8px; float: right;"
								src="<%=path%>/images/love.png" />
								</span> 
							 <strong>&nbsp &nbsp ${manList[4].userName}
							 &nbsp ${manList[4].cityName} &nbsp ${manList[4].strAge}  &nbsp ${manList[4].height}
							 </strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/six.png" alt="" /></span> 
							
						<%-- 	<c:if test="${fn:length(manList)>=6 }"> --%>
							<span class="right">${manList[5].popular} &nbsp <img
								style="margin-top: 8px; float: right;"
								src="<%=path%>/images/love.png" />
								</span> 
								
							<strong>&nbsp &nbsp ${manList[5].userName}
							&nbsp ${manList[5].cityName} &nbsp ${manList[5].strAge} &nbsp ${manList[5].height}
							</strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/seven.png" alt="" /></span> 
							<%-- <c:if test="${fn:length(manList)>=7 }"> --%>
							<span class="right">${manList[6].popular} &nbsp <img
								style="margin-top: 8px; float: right;"
								src="<%=path%>/images/love.png" />
								</span> 
							<strong>&nbsp &nbsp ${manList[6].userName}
							&nbsp ${manList[6].cityName} &nbsp ${manList[6].strAge} &nbsp ${manList[6].height}
							</strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/eight.png" alt="" /></span> 
							
							<%-- <c:if test="${fn:length(manList)>=8 }"> --%>
							<span class="right">${manList[7].popular} &nbsp <img
								style="margin-top: 8px; float: right;"
								src="<%=path%>/images/love.png" />
								</span> 
								
							 <strong>&nbsp &nbsp ${manList[7].userName}
							 &nbsp ${manList[7].cityName} &nbsp ${manList[7].strAge} &nbsp ${manList[7].height}
							 
							 </strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/nine.png" alt="" /></span> 
							
							<%-- <c:if test="${fn:length(manList)>=9 }"> --%>
							<span class="right">${manList[8].popular} &nbsp <img
								style="margin-top: 8px; float: right;"
								src="<%=path%>/images/love.png" />
								</span> 
							 <strong>&nbsp &nbsp ${manList[8].userName}
							 &nbsp ${manList[8].cityName} &nbsp ${manList[8].strAge} &nbsp ${manList[8].height}
							 </strong></a></li>
				<li><a href="#"><span class="icon"><img
							src="<%=path%>/images/ten.png" alt="" /></span>
						<%-- <c:if test="${fn:length(manList)>=10 }"> --%>
							<span class="right">${manList[9].popular} &nbsp <img
								style="margin-top: 8px; float: right;"
								src="<%=path%>/images/love.png" />
								</span> 
							 <strong>&nbsp &nbsp ${manList[9].userName}
							 &nbsp ${manList[9].cityName} &nbsp ${manList[9].strAge} &nbsp ${manList[9].height}
							 </strong></a></li>
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
