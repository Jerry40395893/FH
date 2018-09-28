<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
  String url = basePath + "user/hwy/toRegister.action";
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
	<title>密码修改 牵手西湖</title>
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.css">  
	<link rel="stylesheet" href="<%=basePath%>css/hwy_css.css">  
	<script src="<%=basePath%>js/jquery.min.js"></script>
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
	<script src="<%=basePath%>function/hwyValidate.js"></script>
	
	<script type="text/javascript">
	
	var t1 ;/* 全局变量 */
	var checkPhoneVCode = false;
	
	function resetPaswAjax() {
		var teleNum = $("#teleNum").val();
		var pasw = $("#pasw").val();
		
		if(!checkPhoneVCode){
			alert('请先完成手机验证')
			return;
		}
		if(!phoneValidate(document.getElementById("teleNum"))){
			return;
		}
		if(!textValidate(document.getElementById("pasw"),'新密码',20)){
			return;
		}
		
		$.ajax({
		    url:'<%=basePath%>/user/hwy/resetPasw.action',
		    data:"teleNum="+teleNum+"&pasw="+pasw,
		    async:false,//true为异步，false为同步
		    success:function(result){
				alert('修改成功');
				window.top.location.href="<%=basePath%>/user/hwy/index.action"; 
		    },
		    error:function(e){
		        //请求失败时
		    	 alert('error');
		    }
		}) 
	}

function teleNumAjax() {
	checkPhoneVCode = false;
	if(!phoneValidate(document.getElementById("teleNum"))){
		return;
	}
	var teleNum = $("#teleNum").val();
	if(teleNum == '' ){
		$("#sendPhoneMsg").addClass("display"); 
	}else{
		$("#sendPhoneMsg").removeClass("display"); 
	}
}

function sendPhone() {
	var teleNum = $("#teleNum").val();
	if(!phoneValidate(document.getElementById("teleNum"))){
		return;
	}
	$.ajax({
	    url:'<%=basePath%>/user/hwy/getResetPaswPhoneVCode.action',
	    data:"teleNum="+teleNum,
	    async:false,//true为异步，false为同步
	    success:function(result){
			alert('发送成功，请查看手机短信');
			$("#sendPhoneMsg").addClass("disabled"); 
			$("#sendPhoneMsg").text('60s后重新发送');
			t1 = window.setInterval("sendPhoneButton()",1000);
	    },
	    error:function(e){
	        //请求失败时
	    	 alert('error');
	    }
	}) 
}

function sendPhoneButton() {
	var time =	$("#sendPhoneMsg").text().substring(0,2);
	time--;
	if(time == 0){
		$("#sendPhoneMsg").text('发送验证码');
		$("#sendPhoneMsg").removeClass("disabled"); 
		window.clearTimeout(t1);
		return;
	}
	if(time < 10){
		time = '0' + time;
	}
	time += 's后重新发送';
	$("#sendPhoneMsg").text(time);
}

function phoneVCodeAjax() {
	checkPhoneVCode = false;
	var phoneVCode = $("#phoneVCode").val();
	
	$.ajax({
	    url:'<%=basePath%>/user/hwy/checkResetPaswPhoneVCode.action',
	    data:"phoneVCode="+phoneVCode,
	    async:false,//true为异步，false为同步
	    success:function(result){
	    	if(result){
				alert('验证码正确');
				checkPhoneVCode = true;
	    	}else{
	    		alert('验证码错误')
	    	}
	    },
	    error:function(e){
	        //请求失败时
	    	 alert('error');
	    }
	}) 
}

	</script>
	
</head>
<body >

<div class="container">
   <div class="row">
   <div class="col-xs-2 col-md-4 col-center-block" >
    <form class="form-horizontal" role="form" id="registerForm" >
		<div class="radio form-group" id="sex"></div>
   		 <div class="radio form-group" >
			手机号：<input type="text" name="teleNum" id="teleNum" onchange="teleNumAjax()"> 
   		 </div>
   		 <div class="radio form-group" >
			验证码：<input type="text" name="phoneVCode" id="phoneVCode" onchange="phoneVCodeAjax()">
			<button type="button" id="sendPhoneMsg" class="btn btn-default display" onclick="sendPhone()">发送短信</button>
   		 </div>
   		 <div class="radio form-group" >
			新密码：<input type="password" name=pasw id="pasw" >
   		 </div>
   		 <div class="radio form-group">
 		    <button type="button" class="btn btn-default" onclick="resetPaswAjax()" >提交修改</button>
		</div>
	</form>
   </div>
   </div>
</div>

</body>
</html>
