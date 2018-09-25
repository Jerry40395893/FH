<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<%=basePath %>js/jquery.js"></script>
<title>Insert title here</title>
 <script type="text/javascript">
  		var clickBtn = function(){
  			alert(11);
  			var userId=document.getElementById("userId").value;
  			alert(userId);
  			var touserId=document.getElementById("touserId").value;
  			alert(touserId);
  			
  			alert(111);
  			$.ajax({
  				url: "<%=basePath%>user/lxd/addVisit.action",
  				type: "POST",
  				data:{"userId":userId, "touserId" : touserId,"style":"20"},
  				success : function(res){
  					console.log(res);
  					alert(res);
  				}
  			});
  		};
  		
  		
  		
  		
  			
  </script>
</head>
<body>
<form action="<%=path%>user/lxd/addVisit.action" method="post">
<input type="button" value="看来谁" onclick="clickBtn()"> 
<input type="text" name="userId" id="userId">
<input type="text" name="touserId" id="touserId">
<input type="text" name="style">
<input type="submit" value="看来谁2" > 
</form>
</body>
</html>