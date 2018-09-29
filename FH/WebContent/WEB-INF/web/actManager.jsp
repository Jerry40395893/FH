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
<title></title>
<link rel="stylesheet" href="<%=basePath%>css/pintuer.css" />
<link rel="stylesheet" href="<%=basePath%>css/admin.css" />
<link rel="stylesheet" href="<%=basePath%>css/calendar.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
<script src="<%=basePath%>js/pintuer.js"></script>
<script src="<%=basePath%>function/actManager.js"></script>
<script type="text/javascript" src="<%=basePath%>js/calendar.js"></script>
<script type="text/javascript">
	// 单个修改
	function alertCom() {
		if (confirm("您确定要进入修改页面?")) {
			return true;
		}
		return false;
	};
	/* 增加套餐 */
	function add() {
		if (confirm("您确定要进入添加活动界面?")) {
			return ture;
		}
		return false;
	};
</script>
</head>
<body>
	<form id="activityform" action="<%=basePath%>admin/sj/actManager.action"
		method="post">
		<div class="panel admin-panel">
			<div class="panel-head">
				<strong class="icon-reorder"> 内容列表</strong> <a href="<%=basePath%>"
					style="float: right; display: none;">添加字段</a>
			</div>
			<div class="padding border-bottom">
				<ul class="search" style="padding-left: 10px;">
					<li><a class="button border-main icon-plus-square-o"
						href="<%=basePath%>admin/sj/add.action" onclick="return add()">
							添加内容</a></li>
					<li>搜索：</li>
					<li><input type="text" placeholder="请输入活动名称" name="comName"
						id="comName" class="input"
						style="width: 160px; line-height: 17px; display: inline-block" />
						&nbsp;&nbsp; <input type="text" placeholder="请输入开始时间"
						name="hapTimeS" id="hapTimeS" class="input"
						onFocus="setday(this);"
						style="width: 160px; line-height: 17px; display: inline-block" />
						&nbsp;&nbsp; <input type="text" placeholder="请输入活动人数" id="count"
						name="count" class="input"
						style="width: 160px; line-height: 17px; display: inline-block" />
						&nbsp;&nbsp;<input type="text" placeholder="请输入活动地点" id="position"
						name="position" class="input"
						style="width: 160px; line-height: 17px; display: inline-block" /></li>
				</ul>
			</div>
			<div class="padding border-bottom">
				<ul class="search" style="padding-left: 10px;">
					<li>&nbsp;&nbsp; <input type="text" placeholder="请输入活动费用"
						name="price" id="price" class="input"
						style="width: 160px; line-height: 17px; display: inline-block" />
						<select style="margin-left: 170px; float: left; width: 160px;"
						class="input" id="Onstage" name="onStage">
							<option value="0">--请选择活动状态--</option>
							<option value="21">活动已结束</option>
							<option value="22">活动进行中</option>
							<option value="23">活动筹备中</option>
					</select>&nbsp;&nbsp;<input type="text" placeholder="请输入结束时间"
						name="hapTimeE" id="hapTimeE" onFocus="setday(this);"
						class="input"
						style="width: 160px; line-height: 17px; display: inline-block" />
						&nbsp;&nbsp;<input type="submit"
						class="button border-main icon-search" value="确认"
						style="width: 60px;">
					</li>
				</ul>
			</div>
			<table class="table table-hover text-center">
				<tr>

					<th width="10%">序号</th>
					<th>活动标题</th>
					<th>开始时间</th>
					<th>活动人数</th>
					<th>活动地点</th>
					<th>活动费用</th>
					<th>活动状态</th>
					<th>结束时间</th>
					<th width="120">操作</th>
				</tr>
				<volist name="list" id="vo"> <c:forEach items="${comList}"
					var="com" varStatus="vs">
					<tr>
						<td>${vs.count}</td>
						<td>${com.title}</td>
						<td>${com.time}</td>
						<td>${com.count}</td>
						<td>${com.position}</td>
						<td>${com.fare}</td>
						<td><c:if test="${com.stage==21}">
								<span style="color: red;">活动已结束</span>
							</c:if> <c:if test="${com.stage==22}">

								<span style="color: green;">活动进行中</span>
							</c:if> <c:if test="${com.stage==23}">
								<span style="color: blue;">活动筹备中</span>
							</c:if></td>
						<td>${com.overTime}</td>
						<td>
							<div class="button-group">
								<a class="button border-main"
									href="<%=basePath%>admin/sj/alertCom.action?comboId=${com.activityId}"
									onclick="return alertCom()"> <span class="icon-edit"></span>
									修改
								</a> 
							</div>
						</td>
					</tr>
				</c:forEach>
				<tr>


				</tr>
				<tr>
					<td colspan="8"><div class="pagelist">
							共 ${sumCount}条 &nbsp; 当前页数[ ${currentPage} /
							<c:if test="${list.size()==0}">1</c:if>
							<c:if test="${list.size()!=0}">${list.size()}</c:if>
							] &nbsp;<input type="button" value="第一页"
								class="button border-main icon-search" id="firstPage" />&nbsp;
							<input type="button" value="上一页"
								class="button border-main icon-search" name="lastPage"
								id="lastPage" /> &nbsp;<input type="button"
								class="button border-main icon-search" value="下一页"
								name="nextPage" id="nextPage" /> &nbsp;<input type="button"
								value="末页" class="button border-main icon-search"
								name="finalPage" id="finalPage" /> &nbsp;<select
								id="selectPage" name="selectPage"
								class="button border-main icon-search" style="width: 110px;">
								<option value="0">--请选择页数--</option>
								<c:forEach items="${list}" var="user" step="1">
									<option value="${user+1 }">--第 ${user+1 } 页--</option>
								</c:forEach>
							</select>
						</div></td>
				</tr>
			</table>
		</div>
	</form>
	<input type="hidden" id="currentPage" name="currentPage"
		value="${currentPage}" />
	<input type="hidden" id="hidenPath" value="<%=basePath%>" />
	<input type="hidden" id="hidenName" value="${comName}" />
	<input type="hidden" id="hidHapTimeS" value="${hapTimeS}" />
	<input type="hidden" id="hidCount" value="${count}" />
	<input type="hidden" id="hidPosition" value="${position}" />
	<input type="hidden" id="hidPrice" value="${price}" />
	<input type="hidden" id="hidOnStage" value="${onStage}" />
	<input type="hidden" id="hidHapTimeE" value="${hapTimeE}" />
</body>
</html>