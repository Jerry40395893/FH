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
<link rel="stylesheet" href="<%=basePath%>css/pintuer.css">
<link rel="stylesheet" href="<%=basePath%>css/admin.css">
<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
<script src="<%=basePath%>js/pintuer.js"></script>
<script src="<%=basePath%>function/comManager.js"></script>
<script type="text/javascript">
	function alertCom() {
		return (confirm("您确定要进行购买?")) 
	}
</script>
</head>
<body>
	<form id="listform" action="<%=basePath%>admin/sj/comManager.action"
		method="post">
		<div class="panel admin-panel">
			<div class="panel-head">
				<strong class="icon-reorder"> 内容列表</strong> <a href="<%=basePath%>"
					style="float: right; display: none;">添加字段</a>
			</div>
			<div class="padding border-bottom">
				<ul class="search" style="padding-left: 10px;">
					<li>搜索：</li>

					<li><input type="text" placeholder="请输入套餐名称" name="comName"
						id="comName" class="input"
						style="width: 160px; line-height: 17px; display: inline-block" />
						&nbsp;&nbsp;<input type="text" placeholder="请输入套餐价格" id="price"
						name="price" class="input"
						style="width: 160px; line-height: 17px; display: inline-block" />
						&nbsp;&nbsp;<input type="text" placeholder="请输入套餐持续时间" id="time"
						name="time" class="input"
						style="width: 160px; line-height: 17px; display: inline-block" />
						&nbsp;&nbsp;<input type="submit"
						class="button border-main icon-search" value="确认"
						style="width: 60px;"></li>
				</ul>
			</div>
			<table class="table table-hover text-center">
				<tr>

					<th width="10%">序号</th>
					<th>套餐名称</th>
					<th>套餐价格</th>
					<th>持续时长</th>
					<th>消费折扣</th>
					<th>可推荐人数</th>
					<th width="310">操作</th>
				</tr>
				<volist name="list" id="vo"> <c:forEach items="${comList}"
					var="com" varStatus="vs">
					<tr>

						<td>${vs.count}</td>
						<td>${com.name}</td>
						<td>${com.fare}</td>
						<td>${com.month}</td>
						<td>${com.discount}</td>
						<td>${com.recommend}</td>
						<td>
							<div class="button-group">
								<a class="button border-main"
									href="<%=basePath%>user/hwy/toAlipay.action?comboId=${com.comboId}"
									onclick="return alertCom()"> <span class="icon-edit"></span>
									购买
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
	<input type="hidden" id="hidenPrice" value="${price}" />
	<input type="hidden" id="hidenTime" value="${time}" />
</body>
</html>