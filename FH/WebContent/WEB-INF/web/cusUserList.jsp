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
<title></title>
<link rel="stylesheet" href="<%=basePath %>css/pintuer.css">
<link rel="stylesheet" href="<%=basePath %>css/admin.css">
<script src="<%=basePath %>js/jquery.js"></script>
<script src="<%=basePath %>js/pintuer.js"></script>
</head>
<body>
<form method="post" action="admin/zzh/userList.action?" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder">内容列表</strong> <a href="<%=basePath %>" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-main icon-plus-square-o" href="<%=basePath %>admin/zzh/showAddAdmin.action"> 添加管理员</a> </li>
        <li>搜索：</li>
        <li>
          <input type="text" placeholder="请输入搜索关键字" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
          <a href="<%=basePath %>javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 搜索</a></li>
      </ul>
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th width="10%">序号</th>
        <th>用户名</th>
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
          <td>${user.teleNum}</td> 
          <td>${user.email}</td>
          <td>${user.rgTime}</td>
          <c:if test="${user.onStage==1}">
           <td>启用</td>
           <td>
           <div class="button-group"> 
           <a class="button border-main" href="<%=basePath %>admin/zzh/forBid.action?userId=${user.userId}&page=${adminEntity.page}">
             <span class="icon-edit">禁用</span> 
           </a>
           <a class="button border-red" href="<%=basePath %>admin/zzh/delUser.action?userId=${user.userId}&page=${adminEntity.page}" onclick="return del(1,1,1)">
           <span class="icon-trash-o"></span> 删除
           </a> 
           </div>
          </td>
          </c:if>
          
           <c:if test="${user.onStage==2}">
           <td>禁用</td>
           <td>
           <div class="button-group"> 
           <a class="button border-main" href="<%=basePath %>admin/zzh/stratUsing.action?userId=${user.userId}&page=${adminEntity.page}">
             <span class="icon-edit">启用</span> 
           </a>
           <a class="button border-red" href="<%=basePath %>admin/zzh/delUser.action?userId=${user.userId}&page=${adminEntity.page}" onclick="return del(1,1,1)">
           <span class="icon-trash-o"></span> 删除
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
        	共 ${sumCount}条 &nbsp; 当前页数[ ${currentPage} /
        	<c:if test="${list.size()==0}">1</c:if>
        	<c:if test="${list.size()!=0}">${list.size()}</c:if>
        	] &nbsp;
           <a href="<%=basePath %>admin/zzh/userList.action?currentPage=1">第一页</a>
           <a href="<%=basePath %>admin/zzh/userList.action?currentPage=${conditionEntity.currentPage-1}">上一页</a>
           <a href="<%=basePath %>admin/zzh/userList.action?currentPage=${conditionEntity.currentPage+1}">下一页</a> 
           <a href="<%=basePath %>admin/zzh/userList.action?currentPage=${sumCount}">末页</a> 
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
	if(confirm("您确定要删除吗?")){
		
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
</body>
</html>