﻿﻿<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String url = basePath + "user/index.action";
%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>牵手西湖</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="<%=basePath%>css/bootstrap.css" rel="stylesheet">
<link href="<%=basePath%>css/font-awesome.css" rel="stylesheet">
<link href="<%=basePath%>css/flexslider.css" rel="stylesheet">
<link href="<%=basePath%>css/prettyPhoto.css" rel="stylesheet">
<link href="<%=basePath%>css/isotope.css" rel="stylesheet">
<link href="<%=basePath%>css/animate.css" rel="stylesheet">
<link href="<%=basePath%>css/style.css" rel="stylesheet">
<link href="<%=basePath%>css/loginModel.css" rel="stylesheet">

<script src="<%=basePath%>js/jquery.js"></script>
<script src="<%=basePath%>js/jquery-migrate-1.2.1.min.js"></script>
<script src="<%=basePath%>js/jquery.easing.1.3.js"></script>
<script src="<%=basePath%>js/superfish.js"></script>
<script src="<%=basePath%>js/jquery.flexslider.js"></script>
<script src="<%=basePath%>js/jquery.sticky.js"></script>
<script src="<%=basePath%>js/jquery.queryloader2.js"></script>
<script src="<%=basePath%>js/jquery.appear.js"></script>
<script src="<%=basePath%>js/jquery.ui.totop.js"></script>
<script src="<%=basePath%>js/jquery.equalheights.js"></script>
<script src="<%=basePath%>js/jquery.caroufredsel.js"></script>
<script src="<%=basePath%>js/jquery.touchSwipe.min.js"></script>
<script src="<%=basePath%>js/jquery.parallax-1.1.3.resize.js"></script>
<script src="<%=basePath%>js/SmoothScroll.js"></script>
<script src="<%=basePath%>js/jquery.prettyPhoto.js"></script>
<script src="<%=basePath%>js/jquery.isotope.min.js"></script>
<script src="<%=basePath%>js/cform.js"></script>
<script src="<%=basePath%>js/scripts.js"></script>
<script src="<%=basePath%>js/jquery.form.js"></script>

<script type="text/javascript">

var isModalON = false;
var isModalClosed = true;

$(document).ready(function(){
	$('#loginModal').on('hide.bs.modal', function () {
		isModalON = false;
	});
});

$(document).on("click",function(){
	if((${user == null}) && (isModalON == false) ){
		if(isModalClosed == true){
			document.getElementById("modal-1").click();
			isModalON = true;
			isModalClosed = false;
		}else{
			isModalClosed = true;
		}
	}
});

function vCodeUpdate() {
	var vCode = document.getElementById("vCode");
	vCode.src = "global/vCode.action?time="+ Math.random();
};

function ajaxLogin() {
		
	var userAccount=$("#userAccount").val();
	var pasw=$("#pasw").val();
	
	
	$.ajax({
		url:'<%=basePath%>user/ajaxLogin.action',
		data:'userAccount='+userAccount+'&pasw='+pasw,
		type: 'post',
		success:function(data){
			if(data == 'true'){
			window.location.href="<%=url%>"; 
			}else{
				alert('账号或密码错误')
			}
		},
		error:function(e){
			alert('error'+e);
		}
	});

}

</script>

</head>
<body class="onepage front" data-spy="scroll" data-target="#top1"
	data-offset="71">

	<div id="load"></div>

	<div id="main">
		<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column">

					<div class="modal fade" id="loginModal" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="form row">
							<div class="form-horizontal col-md-offset-3" id="login_form">
								<h3 class="form-title">用户登录</h3>
								<form id="loginForm" action="<%=basePath%>user/login.action"
									method="post">
									<div class="col-md-9">
										<div class="form-group">
											<i class="fa fa-user fa-lg"></i> <input
												class="form-control required" type="text"
												placeholder="请输入手机号或邮箱" id="userAccount" name="userAccount"
												autofocus />
										</div>
										<div class="form-group">
											<i class="fa fa-lock fa-lg"></i> <input
												class="form-control required" type="password"
												placeholder="请输入密码" id="pasw" name="pasw" />
										</div>
										<div class="form-group">
											<i class="fa fa-user fa-lg"></i> <input
												class="form-control required" type="text"
												placeholder="请输入验证码" id="vc" name="vc" size="8" />
										</div>
										<div class="form-group">
											<img src="<%=basePath%>global/vCode.action" id="vCode"
												name="vCode" onclick="vCodeUpdate()" /> <a
												onclick="vCodeUpdate()" class="pull-right" href="#">看不清，换一张</a>
										</div>
										<div class="form-group" id="btn-modal">
											<button type="submit" class="btn btn-success btn-login">登录</button>
										</div>
										<div class="form-group" id="btn-modal">
											<button type="button" class="btn btn-success btn-login"
												onclick="ajaxLogin()">Ajax登录</button>
										</div>
										<div class="form-group" id="btn-modal">
											<button type="button" class="btn btn-success btn-login">快速注册</button>
										</div>
										<div class="form-group" id="btn-modal">
											<button type="button" class="btn btn-success btn-login"
												data-dismiss="modal">取消</button>
										</div>
									</div>
								</form>
							</div>
						</div>

					</div>

				</div>
			</div>
		</div>

		<div id="top1">
			<div class="top1_wrapper">

				<div class="container">

					<div class="top1 clearfix">

						<header>
							<div class="logo_wrapper">
							<h1>404异常错误，请重新操作</h1>
							</div>
						</header>
						<div class="search-form-wrapper clearfix"></div>
					</div>
				</div>
			</div>
			<div class="top2_wrapper" id="top2">
				<div class="container">
					<div class="top2 clearfix">
						<div class="navbar navbar_ navbar-default">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<div class="navbar-collapse navbar-collapse_ collapse">
								<ul class="nav navbar-nav sf-menu clearfix">
									<li class="active"><a href="<%=basePath%>#home">首页</a></li>
									<li class="sub-menu sub-menu-1"><a
										href="<%=basePath%>#about">我的佳缘</a></li>
									<li class="sub-menu sub-menu-1"><a
										href="<%=basePath%>#services">搜索</a></li>
									<li><a href="<%=basePath%>#prices">活动</a></li>
									<li><a href="<%=basePath%>#gallery">晒幸福</a></li>
									<li><a href="<%=basePath%>user/sj/showBanking.action">人气排行榜</a></li>
									<c:if test="${user == null}">
										<li><a id="modal-1" href="#loginModal" role="button"
											class="btn" data-toggle="modal">我要登录</a></li>
									</c:if>
									<c:if test="${user != null}">
										<li><a id="modal-1" href="#loginModal" role="button"
											class="btn" data-toggle="modal">注销</a></li>
									</c:if>
								</ul>
							</div>
						</div>

						<div class="social_wrapper"></div>

					</div>

				</div>
			</div>

		</div>

		<div id="home">

			<div id="slider_wrapper">
				<div id="slider">
					<div id="flexslider">

						<ul class="slides clearfix">

							<li><img src="<%=basePath%>images/slide01.jpg" alt="">
							</li>
							<li><img src="<%=basePath%>images/slide02.jpg" alt="">
							</li>
							<li><img src="<%=basePath%>images/slide03.jpg" alt="">
							</li>

						</ul>
					</div>
				</div>
			</div>
		</div>

		<div id="bot2" class="clearfix">
			<div class="container">
				<div class="bot2_inner clearfix">Copyright &copy; 2018.Company
					name All rights reserved</div>
			</div>
		</div>

	</div>
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
</body>
</html>
