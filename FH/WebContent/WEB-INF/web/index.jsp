<%@ page language="java" contentType="text/html;  charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>后台管理中心</title>  
    <link rel="stylesheet" href="<%=basePath %>css/pintuer.css">
    <link rel="stylesheet" href="<%=basePath %>css/admin.css">
    <script src="<%=basePath %>js/jquery.js"></script>   
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="<%=basePath %>images/y.jpg" class="radius-circle rotate-hover" height="50" alt="" />后台管理中心</h1>
  </div>
  <div class="head-l"><a class="button button-little bg-green" href="<%=basePath %>" target="_blank"><span class="icon-home"></span> 前台首页</a> &nbsp;&nbsp;<a href="##" class="button button-little bg-blue"><span class="icon-wrench"></span> 清除缓存</a> &nbsp;&nbsp;<a class="button button-little bg-red" href="login.html"><span class="icon-power-off"></span> 退出登录</a> </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
  
  
  	
  
  <c:forEach items="${menulist}" var="Power">
  <h2><span class="icon-user"></span>用户管理</h2>
  <ul style="display:block">
    <li><a href="<%=basePath %>info.html" target="right"><span class="icon-caret-right"></span>会员管理</a></li>
    <li><a href="<%=basePath %>admin/zzh/adminList.action?page=1" target="right"><span class="icon-caret-right"></span>后台管理</a></li>
   <li><a href="<%=basePath %>page.html" target="right"><span class="icon-caret-right"></span>会员审核</a></li> 
    <li><a href="<%=basePath %>admin/sj/comManager.action" target="right"><span class="icon-caret-right"></span>套餐管理</a></li>  
  </ul> 
  </c:forEach>  
  <h2><span class="icon-pencil-square-o"></span>运营管理</h2>
  <ul>
    <li><a href="<%=basePath %>list.html" target="right"><span class="icon-caret-right"></span>活动管理</a></li>
    <li><a href="<%=basePath %>add.html" target="right"><span class="icon-caret-right"></span>图片展示规则</a></li>
    <li><a href="<%=basePath %>cate.html" target="right"><span class="icon-caret-right"></span>智能匹配规则</a></li>
    <li><a href="<%=basePath %>cate.html" target="right"><span class="icon-caret-right"></span>套餐管理</a></li>
    <li><a href="<%=basePath %>cate.html" target="right"><span class="icon-caret-right"></span>标签管理</a></li>               
  </ul>  
</div>
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  })
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  })
});
</script>

<ul class="bread">
  <li><a href="<%=basePath %>{:U('Index/info')}" target="right" class="icon-home"> 首页</a></li>
  <li><a href="<%=basePath %>##" id="a_leader_txt">网站信息</a></li>
  <li><b>当前语言：</b><span style="color:red;">中文</php></span>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;切换语言：<a href="##">中文</a> &nbsp;&nbsp;<a href="<%=basePath %>##">英文</a> </li>
</ul>
<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="<%=basePath %>backwelcome.jsp" name="right" width="100%" height="100%"></iframe>
</div>

<c:forEach items="${menulist}" var="Power">
		<c:if test="${Power.pId==0 }">
			<A onClick=show('${Power.powerId}') ">
			
			<img src="img/fclose.gif" border="0">${Power.powerNikeName }</A>
			<div id="${Power.powerId}" style="display: none">
				<c:forEach items="${listPower}" var="Power1">
					 <c:if test="${Power1.pId==Power.powerId }">
						<a href="${Power1.functionName}" target="center"> <img
							src="img/doc.gif">${Power1.powerNikeName }
						</a>
						<br>
					</c:if> 
				</c:forEach>
			</div>
			<br>
		</c:if>
	</c:forEach>

</body>
</html>
