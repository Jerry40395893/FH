<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,org.xmgreat.entity.*"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
	<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title>会员审核</title>
<link rel="stylesheet" href="<%=basePath %>css/pintuer.css">
<link rel="stylesheet" href="<%=basePath %>css/admin.css">
<script src="<%=basePath %>js/jquery.js"></script>
<script src="<%=basePath %>js/pintuer.js"></script>

</head>
<body>
<form method="post" action="<%=basePath %>admin/zzh/audUserList.action?currentPage=${currentPage-1}" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder">内容列表</strong> <a href="<%=basePath %>" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
       
        <li>搜索：</li>
        <li>
         <input type="text" placeholder="请输入会员名称" name="userName"
						id="userName" class="input"
						style="width: 160px; line-height: 17px; display: inline-block" />
						&nbsp;&nbsp;<input type="text" placeholder="请输入性别" id="sex"
						name="sex" class="input"
						style="width: 160px; line-height: 17px; display: inline-block" />
						&nbsp;&nbsp;<input type="text" placeholder="请输入手机号码" id="teleNum"
						name="teleNum" class="input"
						style="width: 160px; line-height: 17px; display: inline-block" />
						&nbsp;&nbsp;<input type="submit"
						class="button border-main icon-search" value="搜索"
						style="width: 60px;"></li>
      </ul>
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th width="10%">序号</th>
        <th>用户名</th>
        <th>头像</th>
        <th>性别</th>
        <th>手机号码</th>
        <th>邮箱地址</th>
        <th>注册时间</th>
        <th>状态</th>
        <th width="310">操作</th>
      </tr>
      <volist name="list" id="vo">
      <c:forEach  items="${userList}"  var="user" varStatus="vs" >
        <tr> 
          <td>${(conditionEntity.currentPage-1)*5+vs.index+1}</td>
          <td>${user.userName}</td>
          <td>${user.sex}</td>
          <td>${user.sex}</td> 
          <td>${user.teleNum}</td> 
          <td>${user.email}</td>
          <td>${user.rgTime}</td>
          <c:if test="${user.auditStage==1}">
           <td>审核通过</td>
           <td>
           <div class="button-group"> 
          
           <a class="button border-main"  href="<%=basePath %>admin/zzh/infoUser.action?userId=${user.userId}" >
           <span class="icon-edit">查看详情</span> 
           </a> 
           </div>
          </td>
          </c:if>
          
           <c:if test="${user.auditStage==2}">
           <td>待审核</td>
           <td>
           <div class="button-group"> 
           <a class="button border-main" href="<%=basePath %>admin/zzh/audYUser.action?userId=${user.userId}&currentPage=${conditionEntity.currentPage}">
             <span class="icon-edit">审核通过</span> 
           </a>
           <a class="button border-main" href="<%=basePath %>admin/zzh/audNUser.action?userId=${user.userId}&currentPage=${conditionEntity.currentPage}" onclick="return del(1,1,1)">
           <span class="icon-edit">审核不通过</span> 
           </a> 
           </div>
          </td>
          </c:if>
          
           <c:if test="${user.auditStage==3}">
           <td>审核不通过</td>
           <td>
           <div class="button-group"> 
          
           <a class="button border-main"  href="<%=basePath %>admin/zzh/infoUser.action?userId=${user.userId}">
           <span class="icon-edit">查看详情</span> 
           </a> 
           </div>
          </td>
          </c:if>
          
        </tr>
        </c:forEach>
      <tr>

      </tr>
      <tr>
        <td colspan="8">
        <div class="pagelist"> 
        	共 ${sumCount}条 &nbsp; 当前页数[${currentPage} /
        	<c:if test="${list.size()==0}">1</c:if>
        	<c:if test="${list.size()!=0}">${list.size()}</c:if>
        	] &nbsp;
           <a href="<%=basePath %>admin/zzh/audUserList.action?currentPage=1&userName=${userName}&sex=${sex}&onStage=${onStage}&teleNum=${teleNum}">第一页</a>
           <a href="<%=basePath %>admin/zzh/audUserList.action?currentPage=${currentPage-1}&userName=${userName}&sex=${sex}&onStage=${onStage}&teleNum=${teleNum}">上一页</a>
           <a href="<%=basePath %>admin/zzh/audUserList.action?currentPage=${currentPage+1}&userName=${userName}&sex=${sex}&onStage=${onStage}&teleNum=${teleNum}">下一页</a> 
           <a href="<%=basePath %>admin/zzh/audUserList.action?currentPage=${list.size()}&userName=${userName}&sex=${sex}&onStage=${onStage}&teleNum=${teleNum}">末页</a> 
           <select id="selectPage" name="selectPage" class="button border-main icon-search" style="width: 110px;">
			<option value="0">--请选择页数--</option>
				<c:forEach items="${list}" var="user" step="1">
				    <option value="${user+1 }">--第 ${user+1 } 页--</option>
				</c:forEach></select>
         </div>
        </td>
      </tr>
    </table>
  </div>
</form>
<script type="text/javascript">

//搜索
function changesearch(){	
		
}

//单个删除
function del(id,mid,iscid){
	if(confirm("您确定选择审核不通过?")){
		
	}
}

//全选
$("#checkall").click(function(){ 
  $("input[name='id[]']").each(function(){
	  if (this.checked) {
		  this.checked = false;
	  }
	  else {
		  this.checked = true;
	  }
  });
})

//批量删除
function DelSelect(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		var t=confirm("您确认要删除选中的内容吗？");
		if (t==false) return false;		
		$("#listform").submit();		
	}
	else{
		alert("请选择您要删除的内容!");
		return false;
	}
}

//批量排序
function sorts(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		
		$("#listform").submit();		
	}
	else{
		alert("请选择要操作的内容!");
		return false;
	}
}


//批量首页显示
function changeishome(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");		
	
		return false;
	}
}

//批量推荐
function changeisvouch(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");	
		return false;
	}
}

//批量置顶
function changeistop(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){		
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");		
	
		return false;
	}
}


//批量移动
function changecate(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){		
		
		$("#listform").submit();		
	}
	else{
		alert("请选择要操作的内容!");
		
		return false;
	}
}

//批量复制
function changecopy(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		var i = 0;
	    $("input[name='id[]']").each(function(){
	  		if (this.checked==true) {
				i++;
			}		
	    });
		if(i>1){ 
	    	alert("只能选择一条信息!");
			$(o).find("option:first").prop("selected","selected");
		}else{
		
			$("#listform").submit();		
		}	
	}
	else{
		alert("请选择要复制的内容!");
		$(o).find("option:first").prop("selected","selected");
		return false;
	}
}

</script>
    <input type="hidden" id="hidenName" value="${userName}" />
	<input type="hidden" id="hidenSex" value="${sex}" />
	<input type="hidden" id="hidenonStage" value="${onStage}" />
	<input type="hidden" id="hidenonTeleNum" value="${teleNum}" />
</body>
</html>