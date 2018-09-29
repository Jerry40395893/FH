<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,org.xmgreat.entity.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
  String path = request.getContextPath();
			String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title>智能推荐条件修改页</title>
<link rel="stylesheet" href="<%=basePath%>css/pintuer.css">
<link rel="stylesheet" href="<%=basePath%>css/admin.css">
<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
<script src="<%=basePath%>js/pintuer.js"></script>
<script type="text/javascript">
	// 提交修改
	function del() {
		if (confirm("您确定要提交修改吗?")) {
			return ture;
		}
		return false;
	};
</script>
</head>
<body>
	<form id="listform" action="<%=basePath%>admin/sj/changeRule.action"
		method="post">
		<div class="panel admin-panel">
			<div class="panel-head">
				<strong class="icon-reorder"> 内容列表</strong> <a href="<%=basePath%>"
					style="float: right; display: none;">添加字段</a>
			</div>
			<table class="table table-hover text-center">
				<tr>
					<th width="10%">序号</th>
					<th>规则名称</th>
					<th>&nbsp; &nbsp;条件一 &nbsp; &nbsp;</th>
					<th>&nbsp; &nbsp;条件二&nbsp;&nbsp;</th>
					<th>&nbsp; &nbsp;条件三&nbsp;&nbsp;</th>
					<th>&nbsp; &nbsp;条件四&nbsp;&nbsp;</th>
					<th>&nbsp; &nbsp;条件五&nbsp;&nbsp;</th>
					<th>&nbsp; &nbsp;条件六&nbsp;&nbsp;</th>
					<th width="60">操作</th>
				</tr>
				<volist name="list" id="vo">
				<tr>
					<td>1</td>
					<td>${ruleEntity.ruleName}</td>

					<td><c:if test="${ruleEntity.figureId==1}">
							<input type="checkbox" id="figureId" name="figureId" value="1"
								checked="checked"> 外貌体型 
						</c:if> <c:if test="${ruleEntity.figureId!=1}">
							<input type="checkbox" id="figureId" name="figureId" value="1">外貌体型 
						</c:if></td>

					<td><c:if test="${ruleEntity.lifeId==1}">
							<input type="checkbox" id="lifeId" name="lifeId" value="1" checked="checked">生活方式
						</c:if> <c:if test="${ruleEntity.lifeId!=1}">
							<input type="checkbox" id="lifeId" name="lifeId" value="1">生活方式
						</c:if></td>

					<td><c:if test="${ruleEntity.workId==1}">
							<input type="checkbox" name="workId" value="1" checked="checked">工作学习
						</c:if> <c:if test="${ruleEntity.workId!=1}">
							<input type="checkbox" name="workId" value="1">工作学习
						</c:if></td>
					<td><c:if test="${ruleEntity.marriedId==1}">
							<input type="checkbox" id="marriedId" name="marriedId" value="1"
								checked="checked">婚姻观念
						</c:if> <c:if test="${ruleEntity.marriedId!=1}">
							<input type="checkbox" id="marriedId" name="marriedId" value="1">婚姻观念
						</c:if></td>

					<td><c:if test="${ruleEntity.salaryId==1}">
							<input type="checkbox" id="salaryId" name="salaryId" value="1"
								checked="checked">经济实力
						</c:if> <c:if test="${ruleEntity.salaryId!=1}">
							<input type="checkbox"  id="salaryId" name="salaryId" value="1">经济实力
						</c:if></td>

					<td><c:if test="${ruleEntity.hobbyId==1}">
							<input type="checkbox" id ="hobbyId" name="hobbyId" value="1" checked="checked">兴趣爱好
						</c:if> <c:if test="${ruleEntity.hobbyId!=1}">
							<input type="checkbox" id ="hobbyId" name="hobbyId" value="1">兴趣爱好
						</c:if></td>
					<td>
						<div class="button-group">
							<input class="button border-red" type="submit" onclick="return del()" value="修改">
						</div>
					</td>
				</tr>
				<tr>


				</tr>
			</table>
		</div>
	</form>
	<input type="hidden" id="hidenPath" value="<%=basePath%>" />
</body>
</html>