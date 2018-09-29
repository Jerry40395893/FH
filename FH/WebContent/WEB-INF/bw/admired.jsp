<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>谁赞了我</title>

	<link rel="stylesheet" href="<%=basePath%>css/base.css">
	<link rel="stylesheet" href="<%=basePath%>css/skeleton.css">
	<link rel="stylesheet" href="<%=basePath%>css/screen.css">
   


	<link rel="shortcut icon" href="<%=basePath%>images/favicon.ico">
	<link rel="apple-touch-icon" href="<%=basePath%>images/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="<%=basePath%>images/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="<%=basePath%>images/apple-touch-icon-114x114.png">
    <link href='http://fonts.googleapis.com/css?family=Bitter' rel='stylesheet' type='text/css'>
   <script type="text/javascript">
function first(){
	
	var page=document.getElementById("page").value;
	if(page==null){
	
		return false;
	}
	
	return true;
}
function last(){
	
	var page=document.getElementById("page").value;
	if(page==null){
		
		return false;
	}

	return true;
}
function previous(){
     
	var page=document.getElementById("page").value;
	var lastPage=document.getElementById("totalPage").value;
	if(page==null){
		
		return false;
	}
	page=page-1;
	if(page<=0){
		
		return false;
	}
	
	return ture;
}

function next(){

	var page=document.getElementById("page").value;
	var lastPage=document.getElementById("totalPage").value;
	if(page==null){
		
		return false;
	}
	page=page+1;
	if(page>lastPage){
		
		return false;
	}
	
	return true;
}
</script>
</head>
<body>
<!-- Site Backgrounds
	================================================== -->
	
    <!-- Change to class="poswrapheaderline wide" and class="headerline full" for a full-width header line -->
	<div class="poswrapheaderline"><div class="headerline"></div></div>  
    <!-- Remove or uncomment depending on if you want a background image or tile -->
    <!--<div class="tiledbackground"></div>-->
    <img src="<%=basePath%>images/bg2.jpg" alt="" id="background" />
    <!-- Change to class="poswrapper wide" and class="whitebackground full" for a full-width site background -->
    <div class="poswrapper"><div class="whitebackground"></div></div>

	<div class="container main portfolio4column">
    
        <!-- Header | Logo, Menu
		================================================== -->
	
		<div class="sixteen columns header">
        
			<!--<div class="logo"><a href="index.html"><img src="images/logo.png" alt="" /></a></div>-->
            <div class="logotext">交友网站</div>
            <div class="mainmenu">
                <div id="mainmenu" class="ddsmoothmenu">
                    <ul>
                        <li><a href="<%=basePath%>">主页</a>
                            
                        </li>
                        <li><a href="<%=basePath%>user/qx/showMycompany.action">我的佳缘</a>
                          
                        </li>
                        <li><a href="#">收件箱</a>
                          
                        </li>
                        <li><a href="#">晒幸福</a>
                          
                        <li><a href="#">搜索</a></li>	
                    </ul>
                    <br style="clear: left" />
                </div>
                
                <!-- Responsive Menu -->
                
				<form id="responsive-menu" action="#" method="post">
                    <select>
                        <option value="">Navigation</option>
                    </select>
				</form>
				
            </div>
            <div class="headerdivider"></div>
            
		</div>
		
        <!-- Slider
		================================================== -->
   
        
        <!-- Portfolio Teasers
		================================================== -->
        
       
        
        <div class="sixteen columns row portfolio_filter">
        	<ul>
                <li><a  href="<%=basePath%>user/lxd/showVisit.action?page=1" >我看了谁</a><span>|</span></li>
                
                <li><a href="<%=basePath%>user/lxd/showVisited.action?page=1">谁看了我</a><span>|</span></li>
                <li><a  href="<%=basePath%>user/lxd/showAdmire.action?page=1" >我赞了谁</a><span>|</span></li>
                <li><a  href="<%=basePath%>user/lxd/showAdmired.action?page=1" style="color:#FF0000;">谁赞了我</a><span>|</span></li>
                <li><a  href="<%=basePath%>user/lxd/showFocus.action?page=1">我关注了谁</a><span>|</span></li>
                
                 <li><a  href="<%=basePath%>user/lxd/showFocused.action?page=1">谁关注了我</a></li>
            </ul>
        </div><div class="clear"></div>
        
		<div class="sixteen columns row teasers portfolio">
          
              <c:forEach  items="${visitList}"  var="vl" varStatus="vs" >
              <div class="four columns teaser all-group web-group">
          
               <a target='_BLANK' href="<%=basePath%>user/lxd/toUserInfo.action?userId=${vl.toUserId}&toUserId=${vl.userId}" data-text="查看详细资料" class="hovering">
              
               <c:if test="${vl.photoEntity.URL!=null&&vl.photoEntity.URL!=''}">

				
				<img src="<%=basePath%>${vl.photoEntity.URL}" alt="" class="scale-with-grid" />
				</c:if>
				<c:if test="${vl.photoEntity.URL==null||vl.photoEntity.URL==''}">

				 <img src="<%=basePath%>images/4.jpg" alt="" class="scale-with-grid" />
					</c:if>
               </a>
               <div class="pluswrap">
                  
                   <div class="topline">赞的时间：${vl.time}</div>
                   <div class="subline"><a target='_BLANK' href="<%=basePath%>user/lxd/toUserInfo.action?userId=${vl.userId}&toUserId=${vl.toUserId}">查看资料</a></div>
               </div>
            </div>
              </c:forEach>
            
			
            
			<div class="clear"></div>
		</div>
        <div class="clear"></div>
        <div>
       <input type="hidden" id="page" value="${visitCurrentPage}">
		<input type="hidden"  id="totalPage" value="${visitTotalPage}">
        <span>当前页数：</span><span id="page">${visitCurrentPage}</span>
        
        <span>总页数：</span><span id="totalPage">${visitTotalPage}</span>
       
              <a
				href="<%=basePath%>user/lxd/showAdmired.action?page=1" onclick="return first()">首页</a>
			<a
				href="<%=basePath%>user/lxd/showAdmired.action?page=${visitCurrentPage-1}" onclick="return previous()">上一页</a>
			<a
				href="<%=basePath%>user/lxd/showAdmired.action?page=${visitCurrentPage+1}" onclick="return next()">下一页</a>
			<a
				href="<%=basePath%>user/lxd/showAdmired.action?page=${visitTotalPage}" onclick="return last()">末页</a>
        </div>
        <!-- News
		================================================== -->
        
        

<!-- End Document
================================================== -->
    
<!-- Scripts
================================================== -->
    <script src="<%=basePath%>js/jquery-1.7.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/jquery.animate-colors-min.js" type="text/javascript"></script>
    <!--/***********************************************
    * Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
    * This notice MUST stay intact for legal use
    * Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
    ***********************************************/-->
    <script src="<%=basePath%>js/ddsmoothmenu.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/jquery.cssAnimate.mini.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/jquery.fitvids.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/jquery.flexslider-min.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/jquery.prettyPhoto.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/screen.js" type="text/javascript"></script>
     
    
</body>
</html>