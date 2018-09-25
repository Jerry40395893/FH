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
<form method="post" action="admin/zzh/adminList.action?" id="listform">
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
        <th>管理账号</th>
        <th>角色</th>
        <th width="310">操作</th>
      </tr>
      <volist name="list" id="vo">
      <c:forEach  items="${ulist}"  var="user" varStatus="vs" >
        <tr> 
          <!-- <td><input type="text" name="sort[1]" value="1" style="width:50px; text-align:center; border:1px solid #ddd; padding:7px 0;" /></td> -->
          <td>${(adminEntity.page-1)*5+vs.index+1}</td>
          <td>${user.admin}</td>
          <%-- <td>${user.roleEntity.roleName}</td> --%>
          <c:if test="${empty user.roleEntity.roleName}">
          <td>待分配角色</td>
          </c:if>
          <c:if test="${not empty user.roleEntity.roleName}">
          <td>${user.roleEntity.roleName}</td>
          </c:if>


          <td>
          <div class="button-group"> 
           <a class="button border-main" href="<%=basePath %>admin/zzh/upAdminPsw.action?adminId=${user.adminId}&page=${adminEntity.page}">
             <span class="icon-edit"></span> 重置密码
           </a>
           <a class="button border-red" href="<%=basePath %>admin/zzh/delAdmin.action?adminId=${user.adminId}&page=${adminEntity.page}" onclick="return del(1,1,1)">
           <span class="icon-trash-o"></span> 删除
           </a> 
           </div>
          </td>
        </tr>
        </c:forEach>
      <tr>
       
      
      </tr>
      <tr>
        <td colspan="8">
        <div class="pagelist"> 
           <a href="<%=basePath %>admin/zzh/adminList.action?page=${adminEntity.page-1}">上一页</a>
           <a href="<%=basePath %>admin/zzh/adminList.action?page=${adminEntity.page+1}">下一页</a> 
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