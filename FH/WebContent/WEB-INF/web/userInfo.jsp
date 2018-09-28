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
    <title>会员信息</title>  
    <link rel="stylesheet" href="<%=basePath %>css/pintuer.css">
    <link rel="stylesheet" href="<%=basePath %>css/admin.css">
    <script src="<%=basePath %>js/jquery.js"></script>
    <script src="<%=basePath %>js/pintuer.js"></script>  
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 会员信息</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="">
     <c:forEach items="${userList}" var="user">
      <div class="form-group">
        <div class="label">
          <label>会员名：</label>
        </div>
        <div class="label">
          <!-- <input type="text" class="input" name="stitle" value="" /> -->
          <label>${user.userName}</label>
          <div class="tips"></div>
       </div>
      </div>
       <div class="form-group">
       
        <div class="label">
          <label>头像：</label>
        </div>
        
         <div class="label">
       <label>${user.sex}</label>
         <!--  <input type="text" class="input" name="stitle" value="" /> -->
          <div class="tips"></div>
        </div>
      </div>
      
      
      <div class="form-group">
        <div class="label">
          <label>性别：</label>
        </div>
        <div class="label">
           <label>${user.sex} </label>
        </div>
      </div>
     
      <div class="form-group">
        <div class="label">
          <label>手机号码：</label>
        </div>
        <div class="label">
         <label>${user.teleNum} </label>
          <!-- <input type="text" class="input" name="surl" value="" /> -->
        </div>
      </div>
      
       <div class="form-group">
        <div class="label">
          <label>邮箱地址：</label>
        </div>
        <div class="label">
         <label>${user.email} </label>
          <!-- <input type="text" class="input" name="surl" value="" /> -->
        </div>
      </div>
      

              
      <div class="form-group">
        <div class="label">
          <label>底部信息：</label>
        </div>
        <div class="field">
          <textarea name="scopyright" class="input" style="height:120px;"></textarea>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
          <button class="button bg-main icon-check-square-o" type="button"> 返回</button>
        </div>
        
      </div>
    </c:forEach> 
    </form>
  </div>
</div>
</body></html>