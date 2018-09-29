<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=basePath%>css/email.css" rel="stylesheet" type="text/css" />
<title>写信页面</title>
<script>
	send_jy_pv2('msg_xinban_send_pv');
	var is_submit = false;
	var check_tanchu_kaiguan = 0;
	var check_tanchu_result = 0;
	var now_if_click_mobile = 0;
	//设置域 为了弹出页面的js操作
	var reg_host_const_flag = 0;
	var reg_host_const_test = 0;
	var reg_host_domain = document.domain;
	var mobanList = new Array();
	var yi_bang_ding_shou_ji = '1';
	yi_bang_ding_shou_ji = 1;

	if (reg_host_const_flag == 0 || reg_host_const_flag == 7) {
		if (reg_host_const_test == 1) {
			document.domain = 'miuu.cn';
		} else {
			document.domain = 'jiayuan.com';
		}
	}

	function str_trim(str) {
		str = str.replace('<P>&nbsp;<\/P>', "");
		return str.replace(/(^\s*)|(\s*$)/g, "");
	}
	function str_trim2(str) {
		str = str.replace(/(&nbsp;*)|(\s)*/g, "")
		str = str.replace(/(<br>)|(<[\/]?div>)/g, '')
		return str;
	}
	function get_id(xx) {
		return document.getElementById(xx);
	}
</script>
</head>
<body>
	<!-- letters_head start-->
	<script type="text/javascript"
		src="http://images1.jyimg.com/w4/global/j/head_common.js"></script>
	<script type="text/javascript"
		src="http://images1.jyimg.com/w4/global/j/head_red_simple.js"></script>
	<script type="text/javascript">
		document.getElementById('head_red_simple').innerHTML = '给她写信';
	</script>
	<!-- letters_head end-->
	<div class="letters_main mt20">
		<div class="show_map" id="show_map"
			onMouseOver="document.getElementById('show_map').style.top='105px'"
			onMouseOut="document.getElementById('show_map').style.top='-999px'">
			<iframe src="" id="map_iframe" name="map_iframe" scrolling="no"
				width="398" height="246" allowTransparency="true" frameborder="0"></iframe>
		</div>

		<!-- recipient start-->
		<div class="recipient e_clear" style="border-bottom: none;">
			<div class="recipient_top">
				<div class="avatar_send">
					<a onmousedown="send_jy_pv2('msg_fx_zp');" target="_blank"
						href="<%=basePath%>user/lxd/toUserInfo.action?toUserId=${userEntity.userId}" title="${userEntity.userName}">
					
						<c:if test="${photoEntity.URL!=null&&photoEntity.URL!=''}">
						   <img width="74px" height="90px" src="<%=basePath%>${photoEntity.URL}" alt="${userEntity.userName}" />
							           </c:if>
					<c:if test="${photoEntity.URL==null||photoEntity.URL==''}">
						   <img width="74px" height="90px" src="<%=basePath%>images/4.jpg" alt="${userEntity.userName}" />
					</c:if>
					         
					</a>
				</div>
				<div class="info">
					<div class="status">
						<a target="_blank"
							href="<%=basePath%>user/lxd/toUserInfo.action?toUserId=${userEntity.userId}"
							onmousedown="send_jy_pv2('msg_fx_nc');" title="${userEntity.userName}">${userEntity.userName}</a> <span>
						</span> 
					</div>
					<div class="about">
						<p>${userEntity.strAge}，
						<c:if test="${userEntity.married==1}">
						                  <span>未婚</span>
							           </c:if>
							           <c:if test="${userEntity.married==2}">
						                  <span>离异，</span>
							           </c:if>
							           <c:if test="${userEntity.married==3}">
						                  <span>丧偶，</span>
							           </c:if>
							           <c:if test="${userEntity.married==3}">
						                  <span>丧偶，</span>
							           </c:if>
						${userEntity.height}CM，${userEntity.doctor}，${userEntity.address}，${userEntity.house}，${userEntity.salary}元</p>
						<p>

							 <span>最后登录时间：${userEntity.lgTime}
							</span>
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- recipient end-->
		<style>
.letters_content {
	padding-top: 0
}

.messageRecord {
	padding-top: 10px;
	padding-left: 35px;
	height: 24px;
	background-color: #fff;
	border-left: 1px solid #d9d9d9;
	border-right: 1px solid #d9d9d9;
}

.messageRecord img {
	float: left;
	display: inline;
	margin: 0 4px 0 0
}

.messageRecord span {
	color: #000;
	font-weight: bold;
	letter-spacing: -1px
}

.letters_content .tips2 {
	margin-left: 16px;
	padding-left: 21px;
	padding-bottom: 7px;
}

.letters_btn a.stamps_v2 {
	display: block;
	width: 165px;
	height: 50px;
	background: url(http://images1.jyimg.com/w4/msg/images/btn_v2.jpg)
		no-repeat -2px -371px;
}

.letters_btn a.stamps_v2:hover {
	background: url(http://images1.jyimg.com/w4/msg/images/btn_v2.jpg)
		no-repeat -170px -371px;
}
</style>

</div>

		<input type="hidden" name="emailName" value="${userEntity.userName}">

		<!--增加通信记录end-->

		<div class="letters_content send_content">
			<dl class="e_clear">
			
				<form method="post" action="<%=basePath%>user/lxd/addEmail.action?toUserId=${userEntity.userId}" target="_self">
					<div class="editor">
						<div class="tools2"></div>


						<div class="textarea" id="textarea">
							


							<textarea id="msg" name="msg"
								style="border: none; border: 1px solid none; width: 664px; padding: 2px 10px; height: 200px; line-height: 24px; font-size: 14px; color: #666; resize: none;"
								onblur="get_id('custom_layer').style.display=''"
								onfocus="get_id('custom_layer').style.display='none';"></textarea>

						</div>
					</div>
					<div>
						<input type="submit" value="发信"
							style="width: 150px; height: 60px; font-size: 30px">
					</div>
				</form>
			</dl>
		</div>
</body>
</html>