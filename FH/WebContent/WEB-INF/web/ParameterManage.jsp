<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String url = basePath + "admin/hwy/parameterManage.action";
%>
<!DOCTYPE html>
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
<script type="text/javascript">

//搜索
function changesearch(){	
		
}

//单个删除
function del(id,mid,iscid){
	if(confirm("您确定要删除吗?")){
		
	}
}

$(document).ready(function(){
var parameterID = 0
	
	$.ajax({
	    url:'<%=basePath%>/admin/hwy/getAnyParameter.action',
	    data:"parameterID="+parameterID,
	    async:false,//true为异步，false为同步
	    success:function(result){
	    	var allParameters =document.getElementById("allParameters");
	    	
	    	 for (var i = 0,len = result.length; i < len; i++) {
				var parameters = result[i];
				var pass = parameters.id != 110;
				if(pass){
					//创建Option
					var opt = document.createElement("option");
					//设置option标签体
					opt.innerHTML=parameters.parameter;
					opt.value=parameters.parameter;
					opt.id=parameters.id;
					//添加节点
					allParameters.appendChild(opt);
				}
			}
	    },
	    error:function(){
	        //请求失败时
	    	 alert('error');
	    }
	})
});

function getParameter() {
	var parameterID = $("#allParameters option:checked").attr('id');
	$.ajax({
	    url:'<%=basePath%>/admin/hwy/getAnyParameter.action',
	    data:"parameterID="+parameterID,
	    async:false,//true为异步，false为同步
	    success:function(result){
	    	var table =document.getElementById("table");
	    	table.innerHTML = '';
	    	switch(parameterID)
			{
			case '101':
				normalTable(result,parameterID,3);
			  break;
			case '102':
				normalTable(result,parameterID,4);
			  break;
			case '103':
				normalTable(result,parameterID,3);
			  break;
			case '104':
				normalTable(result,parameterID,4);
			  break;
			case '105':
				normalTable(result,parameterID,3);
			  break;
			case '106':
				normalTable(result,parameterID,3);
			  break;
			default:
			}
	    },
	    error:function(){
	        //请求失败时
	    }
	})
}

function normalTable(result,parameterID,trNum) {
	getTableHead(trNum);
	for (var i = 0,len = result.length; i < len; i++) {
		var parameters = result[i];
			//创建tr和td1、2、3、4
			var tr = document.createElement("tr");
			var td1 = document.createElement("td");
			var td2 = document.createElement("td");
			var td4 = document.createElement("td");
			//设置td1标签体
			td1.innerHTML=i+1;
			td2.innerHTML=parameters.parameter;
			td4.innerHTML='<div class="button-group"> <a class="button border-main" href="<%=basePath %>admin/hwy/addParameter.action?id='+parameters.id+'"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="<%=basePath %>admin/hwy/delParameter.action?id='+parameters.id+'"><span class="icon-trash-o"></span> 删除</a> </div>'
			//添加节点
			table.appendChild(tr);
			tr.appendChild(td1);
			tr.appendChild(td2);
			if(trNum == 4){
				var td3 = document.createElement("td");
				td3.innerHTML=parameters.value;
				tr.appendChild(td3);
			}
			tr.appendChild(td4);
	}
	getPageNum(parameterID,trNum);
}

function hasSecondTable() {
	
}

function getTableHead(thNum) {
	
	var table =document.getElementById("table");
	var tr = document.createElement("tr");
	var th1 = document.createElement("th");
	var th2 = document.createElement("th");
	var th4 = document.createElement("th");
	th1.setAttribute("width", "100");
	th1.setAttribute("style", "text-align:left; padding-left:20px;");
	th1.innerHTML='序号';
	th2.innerHTML='参数名称';
	th4.width='310';
	th4.innerHTML='操作';
	table.appendChild(tr);
	tr.appendChild(th1);
	tr.appendChild(th2);
	if(thNum == 4){
		var th3 = document.createElement("th");
		th3.innerHTML='参数值';
		tr.appendChild(th3);
	}
	tr.appendChild(th4);
}

function getPageNum(parameterID,trNum) {

	var pageNow = 1;
	var pageTotal = 6;
	var tdHTML = '';
	
	var table =document.getElementById("table");
	var tr = document.createElement("tr");
	var td = document.createElement("td");
	td.setAttribute("colspan", trNum);
	tdHTML += '<div class="pagelist"><a href="">首页</a><a href="">上一页</a>'
	for(var i = 1 ;i <= pageTotal; i++ ){
		if(i == pageNow){
			tdHTML +=	'<span class="current">'+i+'</span>';
		}else{
			tdHTML += '<a href="">'+i+'</a>';
		}
	}
	tdHTML += ' <a href="">下一页</a><a href="">尾页</a></div>'
	td.innerHTML = tdHTML;
	table.appendChild(tr);
	tr.appendChild(td);
}

</script>
</head>
<body>
<form method="post" action="" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-main icon-plus-square-o" href="<%=basePath %>add.html"> 添加内容</a> </li>
        <li>参数选择
          <select name="allParameters" id="allParameters" class="input" onchange="getParameter()" style="width:160px; line-height:17px; display:inline-block">
            <option>选择您要管理的参数</option>
          </select>
        </li>
        <li>
          <input type="text" placeholder="请输入搜索关键字" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
          <a href="<%=basePath %>javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 搜索</a></li>
      </ul>
    </div>
    <table class="table table-hover text-center" id="table"></table>
  </div>
</form>
</body>
</html>