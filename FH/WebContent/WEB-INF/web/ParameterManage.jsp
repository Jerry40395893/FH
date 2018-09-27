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

//全局参数
var pageNow = 1;//当前页码
var requestCounts =0;//请求次数，用于解决AJAX数据库请求连接失效时重新请求的次数判断。

//单个删除
function delParameter(parameterID){
	if(confirm("您确定要删除吗?")){
		$.ajax({
		    url:'<%=basePath%>/admin/hwy/delAnyParameter.action',
		    data:"parameterID="+parameterID,
		    async:false,//true为异步，false为同步
		    success:function(result){
		    	//删除成功
		    	getParameter("");
		    },
		    error:function(){
		        //请求失败时
		    }
		})
	}
}

//单个修改
function updateParameter(parameterID,trNum)
{
	var value = prompt("请输入您的要修改的参数值");
	if (value!=null && value!=""){
			$.ajax({
			    url:'<%=basePath%>/admin/hwy/updateAnyParameter.action',
			    data:"parameterID="+parameterID+"&value="+value+"&trNum="+trNum,
			    async:false,//true为异步，false为同步
			    success:function(result){
			    	if(result){
				    	//修改成功
				    	getParameter("");
			    	}else{
						//修改失败
						alert('修改失败');
			    	}
			    },
			    error:function(){
			        //请求失败时
			    }
			})
  		}else{
  			alert('修改失败，输入值不符标准。')
  		}
}

//单个增加
function addParameter(parameterPID)
{
	var value = prompt("请输入您的要添加的参数名称");
	if (value!=null && value!=""){
			$.ajax({
			    url:'<%=basePath%>/admin/hwy/addAnyParameter.action',
			    data:"value="+value+"&parameterPID="+parameterPID,
			    async:false,//true为异步，false为同步
			    success:function(result){
			    	if(result){
				    	//添加成功
				    	getParameter("");
			    	}else{
						//添加失败
						alert('添加失败');
			    	}
			    },
			    error:function(){
			        //请求失败时
			    }
			})
  		}else{
  			alert('添加失败，输入值不符标准。')
  		}
}

$(document).ready(function(){
	readyForManage();
});

function readyForManage() {
var parameterPID = 0
	
	$.ajax({
	    url:'<%=basePath%>/admin/hwy/getAnyParameter.action',
	    data:"parameterPID="+parameterPID,
	    async:false,//true为异步，false为同步
	    success:function(result){
	    	requestCounts = 0;
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
	         //重新请求
	         if(requestCounts ==0){
	    	 	alert('数据库连接断开，尝试重新请求。');
		         requestCounts++;
		    	 readyForManage();
	         }else{
	        	 alert('尝试重新请求失败')
	         }
	    }
	})
}

//搜索
function searchParameter(){	
	var keywords = $("#keywords").val();
 	pageNow = 1;
	getParameter(keywords); 
}

function changeAllParameters() {
	pageNow = 1;
	getParameter("");
}

function getParameter(value) {
	var parameterPID = $("#allParameters option:checked").attr('id');
	var pageTotal = getPageTotal(parameterPID,value);
	//用于解决最后一页最后一条记录被删除时页面无数据问题。
	if(pageNow > pageTotal){
		pageNow = pageTotal;
	}
	$.ajax({
	    url:'<%=basePath%>/admin/hwy/getAnyParameterWithPaging.action',
	    data:"parameterPID="+parameterPID+"&pageNow="+pageNow+"&value="+value,
	    async:false,//true为异步，false为同步
	    success:function(result){
	    	var table =document.getElementById("table");
	    	table.innerHTML = '';
	    	switch(parameterPID)
			{
			case '102':
				getTableBody(result,parameterPID,pageTotal,4);
			  break;
			case '104':
				getTableBody(result,parameterPID,pageTotal,4);
			  break;
			case '111':
				getTableBody(result,parameterPID,pageTotal,4);
			  break;
			default:
				getTableBody(result,parameterPID,pageTotal,3);
			}
	    	
	    },
	    error:function(){
	        //请求失败时
	    }
	})
}

function getTableBody(result,parameterPID,pageTotal,trNum) {
	getAddButton(parameterPID,trNum);
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
			td4.innerHTML='<div class="button-group"> <a class="button border-main" href="javascript:void(0)" onclick="updateParameter('+parameters.id+','+trNum+')"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="delParameter('+parameters.id+')"><span class="icon-trash-o"></span> 删除</a> </div>'
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
	getPageBottom(parameterPID,pageTotal,trNum);
}

function getAddButton(parameterPID,trNum) {
	var addButton =document.getElementById("addButton");
	if(trNum == 4){
		addButton.innerHTML='';
	}else{
		addButton.innerHTML='<a class="button border-main icon-plus-square-o" href="javascript:void(0)" onclick="addParameter('+parameterPID+')"> 添加内容</a>';
	}
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
	th4.width='310';
	th4.innerHTML='操作';
	table.appendChild(tr);
	tr.appendChild(th1);
	if(thNum == 4){
		var th3 = document.createElement("th");
		th2.innerHTML='参数名称';
		th3.innerHTML='参数值';
		tr.appendChild(th2);
		tr.appendChild(th3);
	}else{
		th2.innerHTML='参数值';
		tr.appendChild(th2);
	}
	tr.appendChild(th4);
}

function getPageTotal(parameterPID,value) {
	var pageTotal;
	
	$.ajax({
	    url:'<%=basePath%>/admin/hwy/getAnyParameterWithPageTotal.action',
	    data:"parameterPID="+parameterPID+"&value="+value,
	    async:false,//true为异步，false为同步
	    success:function(result){
	    	if(result == 'false'){
	    		alert('error');
	    	}else{
		    	pageTotal = result;
	    	}
	    },
	    error:function(){
	        //请求失败时
	    }
	})
	return pageTotal;
}

function getPageBottom(parameterPID,pageTotal,trNum) {
	
	var tdHTML = '';
	var table =document.getElementById("table");
	var tr = document.createElement("tr");
	var td = document.createElement("td");
	td.setAttribute("colspan", trNum);
	tdHTML += '<div class="pagelist">共'+pageTotal+'页<a href="javascript:void(0)" onclick="firstPage()">首页</a><a href="javascript:void(0)" onclick="prevPage()">上一页</a>'
	if(pageNow > 1 && pageTotal > 5){
		tdHTML += '···';
	}
	for(var i = pageNow,j = 1 ;i <= pageTotal && j <= 5 && pageTotal-pageNow > 4; i++,j++ ){
		if(i == pageNow){
			tdHTML += '<span class="current">'+i+'</span>';
		}else{
			tdHTML += '<a href="javascript:void(0)" onclick="toPage('+i+')">'+i+'</a>';
		}
	}
	if(pageTotal-pageNow > 4){
		tdHTML += '···';
	}else{
		for(var i = pageTotal-4 ;i <= pageTotal ; i++ ){
			if(i == pageNow){
				tdHTML += '<span class="current">'+i+'</span>';
			}else if(i > 0){
				tdHTML += '<a href="javascript:void(0)" onclick="toPage('+i+')">'+i+'</a>';
			}
		}
	}
	tdHTML += ' <a href="javascript:void(0)" onclick="nextPage('+pageTotal+')">下一页</a><a href="javascript:void(0)" onclick="finalPage('+pageTotal+')">尾页</a><select id="pageSelect" onchange="toPageBySelect()">'
	for(var i = 1 ;i <= pageTotal ; i++ ){
		if(i == pageNow){
			tdHTML += '<option selected="selected" id="'+i+'">第'+i+'页</option>';
		}else{
			tdHTML += '<option id="'+i+'">第'+i+'页</option>';
		}
	}
	tdHTML += '	</select></div>';
	td.innerHTML = tdHTML;
	table.appendChild(tr);
	tr.appendChild(td);
}

function toPage(page) {
	pageNow = page;
	getParameter("");
}

function toPageBySelect() {
	pageNow = $("#pageSelect option:checked").attr('id');
	getParameter("");
}

function firstPage() {
	pageNow = 1;
	getParameter("");
}

function prevPage() {
	pageNow--;
	if(pageNow == 0){
		pageNow++;
		return;
	}else{
		getParameter("");
	}
}

function nextPage(pageTotal) {
	pageNow++;
	if(pageNow == pageTotal+1){
		pageNow--;
		return;
	}else{
		getParameter("");
	}
}

function finalPage(pageTotal) {
	pageNow = pageTotal;
	getParameter("");
}
</script>
</head>
<body>
<form method="post" action="" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li>参数选择
          <select name="allParameters" id="allParameters" class="input" onchange="changeAllParameters()" style="width:160px; line-height:17px; display:inline-block">
            <option>选择您要管理的参数</option>
          </select>
        </li>
	    <li id="addButton" ></li>
        <li>
          <input type="text" placeholder="请输入搜索关键字" name="keywords" id="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
          <a href="javascript:void(0)" class="button border-main icon-search" onclick="searchParameter()" > 搜索</a>
        </li>
      </ul>
    </div>
    <table class="table table-hover text-center" id="table"></table>
  </div>
</form>
</body>
</html>