<%@ page language="java"  import="java.util.*" contentType="text/html;  charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script type="text/javascript" src="<%=basePath %>js/jquery.min.js"></script>
<script type="text/javascript">

$(function(){$("#admin").blur(function(){
 //第一步：取数据,这里用到了用户名和密码
  
  var admin=$("#admin").val();
 
  //var pwd=$("#upwd").val();
  //第二步：验证数据，这里需要从数据库调数据，我们就用到了ajax
  $.ajax({
    url:"<%=basePath %>admin/zzh/checkAdmin.action",//请求地址
    type:"POST",//提交的方式
    data:{"admin":admin},//提交的数据
    dataType:"text", //返回类型 TEXT字符串 JSON XML
    success:function(data){
   //开始之前要去空格，用trim() 
   if(data=="已存在"){
	alert(data);
   $("#admin").val("");
   }
      //document.getElementById("cn").innerHTML=data;
    }
  });
});
});
</script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-key"></span> 添加管理员</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="addAdmin.action?page=1">
      <div class="form-group">
        <div class="label">
          <label for="sitename">管理员帐号：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="admin" id="admin" size="50" placeholder="请输入用户名" data-validate="required:请填写用户名" />         
        <span id = "cn" style= "color:red"></span></div>
      </div>      
        
      <div class="form-group">
        <div class="label">
          <label for="sitename">密码：</label>
        </div>
        <div class="field">
          <input type="password" class="input w50" name="pasw" size="50" placeholder="请输入密码" data-validate="required:请输入密码,length#>=5:密码不能小于5位" />         
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label for="sitename">确认密码：</label>
        </div>
        <div class="field">
          <input type="password" class="input w50" name="paswCon" size="50" placeholder="请再次输入密码" data-validate="required:请再次输入密码,repeat#pasw:两次输入的密码不一致" />          
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>   
        </div>
      </div>      
    </form>
  </div>
</div>
</body>
</html>