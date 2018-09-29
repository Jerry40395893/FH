<%@ page language="java" contentType="text/html;  charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName()
    + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="<%=basePath%>css/pintuer.css">
<link rel="stylesheet" href="<%=basePath%>css/admin.css">
<script src="<%=basePath%>js/jquery.js"></script>
<script src="<%=basePath%>js/pintuer.js"></script>
<script src="<%=basePath%>function/comManager.js"></script>

</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head">
			<strong><span class="icon-key"></span> 新增套餐</strong>
		</div>
		<div class="body-content">
			<form method="post" class="form-x"
				action="<%=basePath%>admin/sj/subAdd.action" id="addFrom">
				<div class="form-group">
					<div class="label">
						<label for="sitename">套餐名称：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" id="name" name="name"
							size="50" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label for="sitename">套餐费用：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" id="fare" name="fare"
							size="50" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label for="sitename">套餐有效期：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="month" size="50"
							id="time" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label for="sitename">套餐享受折扣：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="discount" size="50"
							id="discount" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label for="sitename">每天推荐人数：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="recommend" size="50"
							id="recommend" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label></label>
					</div>
					<div class="field">
						<button class="button bg-main icon-check-square-o" type="submit">
							提交</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<input type="hidden" id="hidenPath" value="<%=basePath%>" />
</body>
</html>