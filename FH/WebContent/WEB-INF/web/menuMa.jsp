<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,org.xmgreat.entity.*"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
	<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style>
#a {
	height: 500px;
	width: 700px;
	border: #000 1px solid;
	margin-left: 50px
}

#b {
	height: 500px;
	width: 100px;
	border: yellow 1px solid;
	margin-left: 10px;
	float: left;
	text-align: center;
}

#c {
	height: 500px;
	width: 200px;
	border: yellow 1px solid;
	margin-left: 10px;
	float: left;
	text-align: left;
}
</style>
<script type="text/javascript">
	function delet() {
		//获得表单
		var form = document.getElementById("form1");
		//设置地址
		form.action = "AdminChangeMenu?action=deletMu";
		//提交表单
		form.submit();
	}
	function addMu() {

		//获得表单
		var form = document.getElementById("form1");
		//设置地址
		form.action = "AdminChangeMenu?action=addMu";
		//提交表单
		form.submit();
	}
	function addFirstM() {
		//获得表单
		var form = document.getElementById("form1");
		//设置地址
		form.action = "AdminChangeMenu?action=addFirstM";
		//提交表单
		form.submit();

	}

	function deleFirstM() {
		//获得表单
		var form = document.getElementById("form1");
		//设置地址
		form.action = "AdminChangeMenu?action=deleFirstM";
		//提交表单
		form.submit();
	}
</script>


</head>
<body>
	<form id="form1" name="form1" method="post">
		<div id="a">
			<div id="b">
				<p>
					<label> 普通管理员 </label>
				</p>
			</div>
			<div id="c">
				已分配菜单------------ --
				<c:forEach items="${Power}" var="mp">
					<c:if test="${mp.pId==0 }">
						<input type="checkbox" name="delete" id="delete"
							value="${mp.powerId}" />
						<span style="color: red">${mp.powerNikeName}</span>

						<br>
						<c:forEach items="${Power}" var="power">
							<c:if test="${power.pId==mp.powerId}">
								<input type="checkbox" name="delete" id="delete"
									value="${power.powerId}" />${power.powerNikeName}<br>
							</c:if>
						</c:forEach>
					</c:if>
				</c:forEach>
			</div>

			<div id="b">
				<p>
					<input type="submit" name="button" id="button" value="&lt;&lt;"
						onclick="addFirstM()" />
				</p>
				<p>
					<input type="submit" name="button2" id="button2" value="&lt;"
						onclick="addMu()" />
				</p>
				<p>
					<input type="submit" name="button3" id="button3" value="&gt;&gt;"
						onclick="deleFirstM()" />
				</p>
				<p>
					<input type="submit" name="button4" id="button4" value="&gt;"
						onclick="delet()" />
				</p>
				<p>&nbsp;</p>
			</div>
			<div id="c">
				未分配菜单----------------

				<c:forEach items="${nonePower}" var="mp1">
					<c:if test="${mp1.pId==0 }">
						<input type="checkbox" name="add" id="add" value="${mp1.powerId}" />
						<span style="color: red">${mp1.powerNikeName}</span>
						<br>
						<c:forEach items="${nonePower}" var="power1">
							<c:if test="${power1.pId==mp1.powerId }">
								<input type="checkbox" name="add" id="add"
									value="${power1.powerId}" />${power1.powerNikeName}<br>
							</c:if>
						</c:forEach>
					</c:if>
				</c:forEach>
			</div>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>

		</div>
	</form>

</body>
</html>