<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,org.xmgreat.entity.*"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
	<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style>
#a {
	height: 500px;
	width: 900px;
	border: #000 1px solid;
	margin-left: 50px
}

#b {
	height: 500px;
	width: 200px;
	border: yellow 1px solid;
	margin-left: 10px;
	float: left;
	text-align: center;
}

#c {
	height: 500px;
	width: 200px;
	border: yellow 1px solid;
	margin-left: 10px;
	float: left;
	text-align: left;
}
#main {
	width: 80%;
	height: 800px;
	margin: 0 auto;
}

#role {
	width: 30%;
	height: 800px;
	float: left;
}

#menuON {
	width: 30%;
	height: 800px;
	float: left;
}

#menuButton {
	width: 10%;
	height: 800px;
	float: left;
	text-align: center
}

#menuOFF {
	width: 30%;
	height: 800px;
	float: left;
}

.selectMe {
	background-color: green;
}
</style>
<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $("ul[id=roleul] li").click(function(){
    	$("ul[id=roleul] li").removeClass("selectMe");
        $(this).addClass("selectMe").siblings().removeClass("selectMe");
    });
});

	function selectRole(id) {
		$.ajax({
		       type: "post",  
		       url: "<%=basePath%>admin/zzh/alloRole.action",
					data : {"roleId":id},
					async : false,
					dataType:"text",
					success : function(redata) {
					
						$("#menuON").empty();
						var jsonList = eval("(" + redata + ")");
						
						var len = jsonList.length;
						
						var plist;
						var list;
						var str="已有菜单权限";
						for (var i = 0; i < len; i++) {
							
							plist = jsonList[i];
							
							if(plist.pId==0 && plist.menuname!=null){
								
								str+="<ul><li>"+plist.menuname+"<ul id='menuONul'>";
								
							}
							for (var j = 0; j < len; j++) {
								list = jsonList[j];
								if(plist.menuId==list.pId){
									
									str+="<li id="+list.menuId+">"+list.menuname+"</li>";
								}
							}
							str+="</ul></li></ul>";
						}
						
						$("#menuON").append(str);
						
				        $("ul[id=menuONul] li").click(function(){
				        	$("ul[id=menuONul] li").removeClass("selectMe");
				        	$("ul[id=menuOFFul] li").removeClass("selectMe");
				            $(this).addClass("selectMe").siblings().removeClass("selectMe");
				        });
					},

				});
		
		$.ajax({
		    type: "post",  
		    url: "<%=basePath%>admin/zzh/unaMenu.action",
			data : {"roleId":id},
			dataType:"text",
			async : false,
			success : function(redata) {
				$("#menuOFF").empty();
				var jsonList = eval("(" + redata + ")");
				var len = jsonList.length;
				var plist;
				var list;
				var str = "未有菜单权限";
				for (var i = 0; i < len; i++) {
					plist = jsonList[i];
					if (plist.pId == 0 && plist.menuname != null) {
						alert(plist.menuname);
						str += "<ul><li>" + plist.menuname + "<ul id='menuOFFul'>";
					}
					for (var j = 0; j < len; j++) {
						list = jsonList[j];
						if (plist.menuId == list.pId) {
							str += "<li id="+list.menuId+">" + list.menuname + "</li>";
						}
					}
					str += "</ul></li></ul>";
				}
				$("#menuOFF").append(str);
				
				 $("ul[id=menuOFFul] li").click(function(){
			        	$("ul[id=menuONul] li").removeClass("selectMe");
			        	$("ul[id=menuOFFul] li").removeClass("selectMe");
			            $(this).addClass("selectMe").siblings().removeClass("selectMe");
			        });
			},

		});
	}
	function removeSelectMenu(){
		var m_id = $("ul[id=menuONul] li.selectMe").attr('id');
		var r_id = $("ul[id=roleul] li.selectMe").attr('id');
	$.ajax({
		type:"post",
		url:"<%=basePath%>admin/zzh/removeSelectMenu.action",
		data:{"menuId":m_id,"roleId":r_id},
		dataType:"text",
		async : false,
		success : function(redata) {
      },		
	});
	selectRole(r_id);

	}
	function removeSelectMenuWithParent(){
		var m_id = $("ul[id=menuONull] li.selectMe").attr('id');
		var r_id = $("ul[id=roleul] li.selectMe").attr('id');
	$.ajax({
		type:"post",
		url:"<%=basePath%>admin/zzh/removeSelectMenuWithParent.action",
		data:{"menuId":m_id,"roleId":r_id},
		dataType:"text",
		async : false,
		success : function(redata) {
      },		
	});
	selectRole(r_id);

	}
	function addSelectMenu() {
		var m_id = $("ul[id=menuOFFul] li.selectMe").attr('id');
		var r_id = $("ul[id=roleul] li.selectMe").attr('id');
		
		 $.ajax({
		       type: "post",  
		       url:"<%=basePath%>admin/zzh/addSelectMenu.action",
			   data:{"menuId":m_id,"roleId":r_id},
			   dataType:"text",
			   async : false,
			success : function(redata) {
			},
		}); 
				selectRole(r_id);
	}
    	
	
	
	
</script>


</head>
<body>
	<!-- <form id="form1" name="form1" method="post"> -->
		<div id="a">
			<div id="b">
			<ul>
				<li>角色 <c:forEach items="${roleList}" var="rlist">
						<ul id="roleul">
							<li id="${rlist.roleId}" onclick="selectRole(this.id)">${rlist.roleName}</li>
						</ul>
					</c:forEach>
				</li>
			</ul>
			</div>
			<div id="menuON"></div>
			<div id="menuButton">
			<input type="button" name="addAll" id="addAll" value="&lt&lt" onclick="addSelectMenuWithParent()"/> <input
				type="button" name="add" id="add" value="&lt" onclick="addSelectMenu()"/> <input
				type="button" name="removeAll" id="removeAll" value="&gt&gt" onclick="removeSelectMenuWithParent()" /> <input
				type="button" name="remove" id="remove" value="&gt"	onclick="removeSelectMenu()" />
		</div>
		<div id="menuOFF"></div>
			<%-- <div id="c">
				已分配菜单------------ --
				<c:forEach items="${Power}" var="mp">
					<c:if test="${mp.pId==0 }">
						<input type="checkbox" name="delete" id="delete"
							value="${mp.powerId}" />
						<span style="color: red">${mp.powerNikeName}</span>

						<br>
						<c:forEach items="${Power}" var="power">
							<c:if test="${power.pId==mp.powerId}">
								<input type="checkbox" name="delete" id="delete"
									value="${power.powerId}" />${power.powerNikeName}<br>
							</c:if>
						</c:forEach>
					</c:if>
				</c:forEach>
			</div>

			<div id="b">
				<p>
					<input type="submit" name="button" id="button" value="&lt;&lt;"
						onclick="addFirstM()" />
				</p>
				<p>
					<input type="submit" name="button2" id="button2" value="&lt;"
						onclick="addMu()" />
				</p>
				<p>
					<input type="submit" name="button3" id="button3" value="&gt;&gt;"
						onclick="deleFirstM()" />
				</p>
				<p>
					<input type="submit" name="button4" id="button4" value="&gt;"
						onclick="delet()" />
				</p>
				<p>&nbsp;</p>
			</div>
			<div id="c">
				未分配菜单----------------

				<c:forEach items="${nonePower}" var="mp1">
					<c:if test="${mp1.pId==0 }">
						<input type="checkbox" name="add" id="add" value="${mp1.powerId}" />
						<span style="color: red">${mp1.powerNikeName}</span>
						<br>
						<c:forEach items="${nonePower}" var="power1">
							<c:if test="${power1.pId==mp1.powerId }">
								<input type="checkbox" name="add" id="add"
									value="${power1.powerId}" />${power1.powerNikeName}<br>
							</c:if>
						</c:forEach>
					</c:if>
				</c:forEach>
			</div> --%>
		</div>
	</form>

</body>
</html>