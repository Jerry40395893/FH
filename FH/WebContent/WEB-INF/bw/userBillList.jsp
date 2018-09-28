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
<title>用户账单</title>
<link rel="stylesheet" href="<%=basePath %>css/pintuer.css">
<link rel="stylesheet" href="<%=basePath %>css/admin.css">
<link rel="stylesheet" href="<%=basePath %>css/calendar.css" type="text/css" />
<script src="<%=basePath %>js/jquery.js"></script>
<script src="<%=basePath %>js/pintuer.js"></script>
<script type="text/javascript" src="<%=basePath %>js/calendar.js"></script>

</head>
<body>
<form method="post" action="<%=basePath %>user/zzh/accList.action?currentPage=1" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder">内容列表</strong> 
    </div>
     <c:forEach  items="${balalist}"  var="user" varStatus="vs" >
    
     <div class="panel-head"><strong class="icon-reorder">余额：${user.leftMoney}</strong> 
      
    </div>
     </c:forEach>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
       
        <li>搜索：</li>
        <li>交易类型
          <select name="styleId" id="styleId" class="input" onchange="changesearch()"  style="width:120px; line-height:17px;display:inline-block">
            <option value="0">选择交易类型</option>
            <option value="1">充值</option>
            <option value="2">套餐购买</option>
            <option value="3">读取信息</option>
            <option value="4">发送信息</option>
          </select>
                               时间：
         <input type="text" placeholder="请选择查询的起始时间" name="hapTimeS"
						id="hapTimeS" class="input" onFocus="setday(this);"
						style="width: 160px; line-height: 17px; display: inline-block" />
						&nbsp;&nbsp;
		 <input type="text" placeholder="请选择查询的结束时间" name="hapTimeE" id="hapTimeE" onFocus="setday(this);"
						class="input"
						style="width: 160px; line-height: 17px; display: inline-block" />
						&nbsp;&nbsp;
	     <input type="submit"
						class="button border-main icon-search" value="搜索"
						style="width: 60px;"></li>
      </ul>
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th width="10%">序号</th>
        <th>交易类型</th>
        <th>资金去向</th>
        <th>单次交易金额</th>
        <th>交易时间</th>
        
      </tr>
      <volist name="list" id="vo">
      <c:forEach  items="${userList}"  var="user" varStatus="vs" >
        <tr> 
           <td>${vs.index+1}</td>
           <c:if test="${user.styleId==1}">
           <td>充值</td>
           </c:if>
           <c:if test="${user.styleId==2}">
           <td>套餐购买</td>
           </c:if>
           <c:if test="${user.styleId==3}">
           <td>读取信息</td>
           </c:if>
           <c:if test="${user.styleId==4}">
           <td>发送信息</td>
           </c:if>
          <td>${user.thing}</td> 
          <td>${user.money}</td> 
          <td>${user.happenTime}</td>
          
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
           <a href="<%=basePath %>user/zzh/accList.action?currentPage=1&styleId=${styleId}&hapTimeS=${hapTimeS}&hapTimeE=${hapTimeE}">第一页</a>
           <a href="<%=basePath %>user/zzh/accList.action?currentPage=${currentPage-1}&styleId=${styleId}&hapTimeS=${hapTimeS}&hapTimeE=${hapTimeE}">上一页</a>
           <a href="<%=basePath %>user/zzh/accList.action?currentPage=${currentPage+1}&styleId=${styleId}&hapTimeS=${hapTimeS}&hapTimeE=${hapTimeE}">下一页</a> 
           <a href="<%=basePath %>user/zzh/accList.action?currentPage=${list.size()}&styleId=${styleId}&hapTimeS=${hapTimeS}&hapTimeE=${hapTimeE}">末页</a> 
           <select id="selectPage" name="selectPage" class="button border-main icon-search" style="width: 110px;">
			<option value="0">--请选择页数--</option>
				<c:forEach items="${list}" var="user" step="1">
				    <option value="${user+1}">--第 ${user+1} 页--</option>
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
    <input type="hidden" id="hidenName" value="${userName}" />
	<input type="hidden" id="hidenSex" value="${sex}" />
	<input type="hidden" id="hidenonStage" value="${onStage}" />
</body>
</html>