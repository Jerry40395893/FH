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
	<title>用户注册 牵手西湖</title>
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.css">  
	<link rel="stylesheet" href="<%=basePath%>css/hwy_css.css">  
	<script src="<%=basePath%>js/jquery.min.js"></script>
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
	
	<script type="text/javascript">

	var t1 ;/* 全局变量 */
	var requestCounts =0;//请求次数，用于解决AJAX数据库请求连接失效时重新请求的次数判断。
	
	$(document).ready(function(){
		
		$.ajax({
		    url:'<%=basePath%>/user/hwy/getRegParameter.action',
		    async:false,//true为异步，false为同步
		    beforeSend:function(){
		        //请求前
		    },
		    success:function(result){
		        //请求成功时
		        requestCounts = 0;
		        
		        var sex = '性别：';
		        var birthYearBegin = 1900;
		        var birthYearOver = new Date().getFullYear();
		        var married = '婚姻状况：';
		        var heightBegin = 120;
		        var heightOver = 230;
		        var doctorSelect =document.getElementById("doctorSelect");
		        var salarySelect =document.getElementById("salarySelect");
		        var provinceType =document.getElementById("provinceType");
		        
		        for (var i = 0,len = result.length; i < len; i++) {
					var parameters = result[i];
					
					switch(parameters.pid)
					{
					case 101:
						sex += "<label><input type='radio' name='sex' id='" +parameters.id + "' value='" + parameters.parameter +"'>"+parameters.parameter+"</label>";
					  break;
					case 102:
						if(parameters.id == 102001){
							birthYearBegin = parameters.value;
						}
						if(parameters.id == 102002){
							birthYearOver = parameters.value;
						}
					  break;
					case 103:
						married += "<label><input type='radio' name='married' id='" +parameters.id + "' value='" + parameters.parameter +"'>"+parameters.parameter+"</label>";
					  break;
					case 104:
						if(parameters.id == 104001){
							heightBegin = parameters.value;
						}
						if(parameters.id == 104002){
							heightOver = parameters.value;
						}
					  break;
					case 105:
						//创建Option
						var opt = document.createElement("option");
						//设置option标签体
						opt.innerHTML=parameters.parameter;
						opt.value=parameters.parameter;
						opt.id=parameters.id;
						//添加节点
						doctorSelect.appendChild(opt);
					  break;
					case 106:
						//创建Option
						var opt = document.createElement("option");
						//设置option标签体
						opt.innerHTML=parameters.parameter;
						opt.value=parameters.parameter;
						opt.id=parameters.id;
						//添加节点
						salarySelect.appendChild(opt);
					  break;
					case 110:
						//创建Option
						var opt = document.createElement("option");
						//设置option标签体
						opt.innerHTML=parameters.parameter;
						opt.value=parameters.parameter;
						opt.id=parameters.id;
						//添加节点
						provinceType.appendChild(opt);
					  break;
					default:
					}
					
				}
				$("#sex").append(sex);
				getYear(birthYearBegin,birthYearOver);
				getMonth();
				$("#married").append(married);
				getHeightSelect(heightBegin,heightOver);
				
		    },
		    complete:function(){
		        //请求结束时
		    },
		    error:function(){
		        //请求失败时
		    	 if(requestCounts == 0){
			    	 	alert('数据库连接断开，尝试重新请求。');
				         requestCounts++;
			    	window.top.location.href="<%=url%>"; 
			         }else{
			        	 alert('尝试重新请求失败')
			         }
		    }
		})
	
	});
	
	
	function registerAjax() {
		if(!$("#regCheckbox").prop("checked")){
			alert('请勾选同意注册条款');
			return;
		}
		
		var data=$("#registerForm").serialize();
		var submitData=decodeURIComponent(data,true);

 		$.ajax({
		    url:'<%=basePath%>/user/hwy/register.action',
		    data:submitData,
		    cache:false,//false是不缓存，true为缓存
		    async:true,//true为异步，false为同步
		    beforeSend:function(){
		        //请求前
		    },
		    success:function(result){
		        //请求成功时
		        if(result){
		      	  window.top.location.href="<%=basePath%>/user/hwy/index.action"; 
		        }
		    },
		    complete:function(){
		        //请求结束时
		    },
		    error:function(){
		        //请求失败时
		        alert('error');
		    }
		}) 
		
	}
	
	
	function getHeightSelect(heightBegin,heightOver) {
		var heightSelect = document.getElementById("heightSelect");
		for(var i=heightBegin;i<=heightOver;i++){
			//创建Option
			var opt = document.createElement("option");
			//设置option标签体
			opt.innerHTML=i;
			opt.value=i;
			//添加节点
			heightSelect.appendChild(opt);
		}
	}
	
	function getHeight() {
		var heightSelect = $("#heightSelect").val();
		if(heightSelect == "请选择 身高"){
			return;
		}
		$("#height").val(heightSelect);
	}
	
	function getDoctor() {
		var doctorSelect = $("#doctorSelect").val();
		if(doctorSelect == "请选择 学历"){
			return;
		}
		$("#doctor").val(doctorSelect);
	}
	
	function getSalary() {
		var salarySelect = $("#salarySelect").val();
		if(salarySelect == "请选择薪资"){
			return;
		}
		$("#salary").val(salarySelect);
	}

		function getYear(birthYearBegin,birthYearOver){
			var yearNode = document.getElementById("year");
			for(var i=birthYearBegin;i<=birthYearOver;i++){
				//创建Option
				var opt = document.createElement("option");
				//设置option标签体
				opt.innerHTML=i;
				opt.value=i;
				//添加节点
				yearNode.appendChild(opt);
			}
		}
		
		//创建月
		function getMonth(){
		 //创建option 
			var monthNode = document.getElementById("month");
			for(var i=1;i<=12;i++){
				var opt = document.createElement("option");
				//设置option标签体
				if(i<10){
					opt.innerHTML="0"+i;
					opt.value=i;
				}else {
					opt.innerHTML=i;
					opt.value=i;
				}
				monthNode.appendChild(opt);
			}
		}
		//创建天
		// 大月1 3 5 7 8 10 12 ,小月4 6 9 11    闰年2月 非闰年的2月
		function getDay(){
			//判断
			var year = $("#year").val();
			if(year == "请选择 年"){
				return;
			}
			var month = $("#month").val();
			if(month == "请选择 月"){
				return;
			}
			
			//清空日，保留第一行。
			var day = document.getElementById("day");
			var optarr = day.childNodes;
			for(var i = optarr.length-1;i >= 1;i--){
				day.removeChild(optarr[i]);
			}
			
			//一个月至少有28天
			for(var i=1;i<=28;i++){
				var opt = document.createElement("option");
				if(i<10){
					opt.innerHTML="0"+i;
					opt.value=i;
				}else{
					opt.innerHTML=i;
					opt.value=i;
				}
				day.appendChild(opt);
			}
			//大月  1 3 5 7 8 10 12
			var isBigMonth = month ==1 || month ==3 || month ==5 || month ==7 || month ==8 ||
			month == 10 || month ==12;
			//小月 4 6 9 11
			var isSmallMonth = month==4 || month ==6 || month ==9 || month ==12;
			//闰年  可以整除4 但不能整除100，或者年份可以整除400
			var isLeapYear = (year % 4 == 0 && year % 100 != 0) || year %  400 == 0;
			 //判断如果是大月加3天
			 if(isBigMonth){
			 	for(var i=29;i<=31;i++){
			 		var opt = document.createElement("option");
			 		opt.innerHTML=i;
			 		opt.value=i;
			 		day.appendChild(opt);
			 		//如果是小月加两天
			 		}
  			 		}else if(isSmallMonth){
  			 		for(var i=29;i<30;i++){
  			 			var opt = document.createElement("option");
  			 			opt.innerHTML=i;
  			 			opt.value=i;
  			 			day.appendChild(opt);
  			 			//闰年加一天
  			 			}
		  			 		}else if(isLeapYear){
		  			 		var opt = document.createElement("option");
		  			 		opt.innerHTML=29;
		  			 		opt.value=29;
		  			 		day.appendChild(opt);
		  			 		}
		  			 }
		
function getBirthday() {
	var year = $("#year").val();
	if(year == "请选择 年"){
		return;
	}
	var month = $("#month").val();
	if(month == "请选择 月"){
		return;
	}
	var day = $("#day").val();
	if(day == "请选择 日"){
		return;
	}
	$("#birthday").val(year+"-"+month+"-"+day);
}
		
function getProvince() {
	var parameterPID = $("#provinceType option:checked").attr('id');
	
	$.ajax({
	    url:'<%=basePath%>/user/hwy/getAnyParameter.action',
	    data:"parameterPID="+parameterPID,
	    async:false,//true为异步，false为同步
	    success:function(result){
	        //请求成功时
	        var province =document.getElementById("province");
	        
			//清空省，保留第一行。
			var optarr = province.childNodes;
			for(var i = optarr.length-1;i >= 1;i--){
				province.removeChild(optarr[i]);
			}
			
			//清空市，保留第一行。
			var optarr = city.childNodes;
			for(var i = optarr.length-1;i >= 1;i--){
				city.removeChild(optarr[i]);
			}
	        
	        for (var i = 0,len = result.length; i < len; i++) {
				var parameters = result[i];
					//创建Option
					var opt = document.createElement("option");
					//设置option标签体
					opt.innerHTML=parameters.parameter;
					opt.value=parameters.parameter;
					opt.id=parameters.id;
					//添加节点
					province.appendChild(opt);
					}
	    },
	    error:function(){
	        //请求失败时
	    	 alert('error');
	    }
	})

};

function getCity() {
	var parameterPID = $("#province option:checked").attr('id');
	
	$.ajax({
	    url:'<%=basePath%>/user/hwy/getAnyParameter.action',
	    data:"parameterPID="+parameterPID,
	    async:false,//true为异步，false为同步
	    success:function(result){
	        //请求成功时
	        var city =document.getElementById("city");
	        
			//清空市，保留第一行。
			var optarr = city.childNodes;
			for(var i = optarr.length-1;i >= 1;i--){
				city.removeChild(optarr[i]);
			}
	        
	        for (var i = 0,len = result.length; i < len; i++) {
				var parameters = result[i];
					//创建Option
					var opt = document.createElement("option");
					//设置option标签体
					opt.innerHTML=parameters.parameter;
					opt.value=parameters.parameter;
					opt.id=parameters.id;
					//添加节点
					city.appendChild(opt);
					}
	    },
	    error:function(){
	        //请求失败时
	    	 alert('error');
	    }
	})

};

function getAddress() {
	var province = $("#province").val();
	if(province == "请选择 省"){
		return;
	}
	var city = $("#city").val();
	if(city == "请选择 市"){
		return;
	}
	$("#address").val(province+" "+city);
}

function teleNumAjax() {
	var teleNum = $("#teleNum").val();
	if(teleNum == '' ){
		$("#sendPhoneMsg").addClass("display"); 
	}else{
		$("#sendPhoneMsg").removeClass("display"); 
	}
}

function sendPhone() {
	var teleNum = $("#teleNum").val();
	
	$.ajax({
	    url:'<%=basePath%>/user/hwy/getRegPhoneVCode.action',
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
	var phoneVCode = $("#phoneVCode").val();
	
	$.ajax({
	    url:'<%=basePath%>/user/hwy/checkRegPhoneVCode.action',
	    data:"phoneVCode="+phoneVCode,
	    async:false,//true为异步，false为同步
	    success:function(result){
	    	if(result){
				alert('验证码正确');
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
			生日：
			<select id ="year" onchange="getDay(),getBirthday()"><option >请选择 年</option></select>
 		 	<select id="month" onchange="getDay(),getBirthday()"><option >请选择 月</option></select>
  			<select id="day" onchange="getBirthday()"><option>请选择 日</option></select>
  			<input type="hidden" name="birthday" id="birthday">
   		 </div>
   		 <div class="radio form-group" >
			居住地：
			<select id ="provinceType" onchange="getProvince()"><option >请选择 省分类</option></select>
			<select id ="province" onchange="getCity(),getAddress()"><option >请选择 省</option></select>
 		 	<select id="city" onchange="getAddress()"><option >请选择 市</option></select>
 		 	<input type="hidden" name="address" id="address">
   		 </div>
   		 <div class="radio form-group" id="married"></div>
   		 <div class="radio form-group" >
			身高：
			<select id ="heightSelect" onchange="getHeight()"><option >请选择 身高</option></select>
  			<input type="hidden" name="height" id="height">
   		 </div>
   		 <div class="radio form-group" >
			学历：
			<select id ="doctorSelect" onchange="getDoctor()"><option >请选择 学历</option></select>
  			<input type="hidden" name="doctor" id="doctor">
   		 </div>
   		 <div class="radio form-group" >
			月薪：
			<select id ="salarySelect" onchange="getSalary()"><option >请选择 薪资</option></select>
  			<input type="hidden" name="salary" id="salary">
   		 </div>
   		 <div class="radio form-group" >
			手机号：<input type="text" name="teleNum" id="teleNum"> <!-- onchange="teleNumAjax()"> -->
   		 </div>
   		 <!-- <div class="radio form-group" >
			验证码：<input type="text" name="phoneVCode" id="phoneVCode" onchange="phoneVCodeAjax()">
			<button type="button" id="sendPhoneMsg" class="btn btn-default display" onclick="sendPhone()">发送短信</button>
   		 </div> -->
   		 <div class="radio form-group" >
			创建密码：<input type="password" name=pasw id="pasw" >
   		 </div>
   		 <div class="radio form-group" >
			昵称：<input type="text" name="userName" id="userName" >
   		 </div>
   		 <div class="radio form-group">
 		    <button type="button" class="btn btn-default" onclick="registerAjax()" >免费注册</button>
		</div>
		<div class="radio form-group" >
			<input type="checkbox" name="regCheckbox" id="regCheckbox" >我同意
			<a href="#">注册条款</a>及<a href="#">会员加入标准</a>
   		 </div>
	</form>
   </div>
   </div>
</div>

</body>
</html>
