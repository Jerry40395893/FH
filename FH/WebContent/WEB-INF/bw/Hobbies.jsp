<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

    
    <%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>我的资料</title>

  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <meta content=" description" name="description">
  <meta content=" keywords" name="keywords">
  <meta content="keenthemes" name="author">

  <meta property="og:site_name" content="-CUSTOMER VALUE-">
  <meta property="og:title" content="-CUSTOMER VALUE-">
  <meta property="og:description" content="-CUSTOMER VALUE-">
  <meta property="og:type" content="website">
  <meta property="og:image" content="-CUSTOMER VALUE-"><!-- link to image for socio -->
  <meta property="og:url" content="-CUSTOMER VALUE-">

  <link rel="shortcut icon" href="favicon.ico">

  

  <!-- Global styles START -->          
  <link href="<%=basePath%>assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="<%=basePath%>assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Global styles END --> 
   
  <!-- Page level plugin styles START -->
  <link href="<%=basePath%>assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
  <link href="<%=basePath%>assets/plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
  <link href="<%=basePath%>assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
  
  <link href="<%=basePath%>assets/plugins/rateit/src/rateit.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin styles END -->

  <!-- Theme styles START -->
  <link href="<%=basePath%>assets/pages/css/components.css" rel="stylesheet">
  <link href="<%=basePath%>assets/corporate/css/style.css" rel="stylesheet">
  <link href="<%=basePath%>assets/pages/css/style-shop.css" rel="stylesheet" type="text/css">
  <link href="<%=basePath%>assets/corporate/css/style-responsive.css" rel="stylesheet">
  <link href="<%=basePath%>assets/corporate/css/themes/red.css" rel="stylesheet" id="style-color">
  <link href="<%=basePath%>assets/corporate/css/custom.css" rel="stylesheet">
  <script type = "text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
  <!-- Theme styles END -->
  
  
   <script type="text/javascript">

   
 $(document).ready(function(){

	
	$("#area_Name").change(function(){
		
     	$.ajax({
			url:"<%=basePath%>user/qx/school.action",
			data:"area_Name="+$("#area_Name").val(),
			dataType:"json",
			type:"post",
			
			success:function(redata){
			
				$("#graduation").find("option").remove();
				
				$("#graduation").append("<option>"+"--请选择--"+"</option>");
				$.each(redata,function(i,item){
					
					$("#graduation").append("<option value="+item.school_Name+">"+item.school_Name+"</option>");
				});
			}
		}); 		
	});

	
	var postion="${work.postion}";
	 $("select[name='postion']").find("option[value='"+postion+"']").attr("selected",true);
	 
	 var industry="${work.industry}";
	 $("select[name='industry']").find("option[value='"+industry+"']").attr("selected",true);
	 
	 var cpanyStyle="${work.cpanyStyle}";
	 $("select[name='cpanyStyle']").find("option[value='"+cpanyStyle+"']").attr("selected",true);
	 
	 var welfare="${work.welfare}";
	 $("select[name='welfare']").find("option[value='"+welfare+"']").attr("selected",true);
	 
	 var workStage="${work.workStage}";
	 $("select[name='workStage']").find("option[value='"+workStage+"']").attr("selected",true);
	 
	 var changeWork="${work.changeWork}";
	 $("select[name='changeWork']").find("option[value='"+changeWork+"']").attr("selected",true);
	 
	 var wortSea="${work.wortSea}";
	 $("select[name='wortSea']").find("option[value='"+wortSea+"']").attr("selected",true);
	 
	 var workHome="${work.workHome}";
	 $("select[name='workHome']").find("option[value='"+workHome+"']").attr("selected",true);
	
	 var graduation="${work.graduation}";
	 $("#graduation").append("<option value="+graduation+" selected>"+graduation+"</option>");
	/*  $("select[name='graduation']").find("option[value='"+graduation+"']").attr("selected",true); */
	 
	 var majorStyle="${work.majorStyle}";
	 $("select[name='majorStyle']").find("option[value='"+majorStyle+"']").attr("selected",true);
	 
	 var area_Name="${work.area_Name}";
	 $("select[name='area_Name']").find("option[value='"+area_Name+"']").attr("selected",true);
	 
	 
	 var checkeds = "${work.language}";
	    //拆分为字符串数组
	   
	    console.log(checkeds)
	    var checkArray =checkeds.split(",");
	    //获得所有的复选框对象
	    var checkBoxAll = $("input[name='language']");
	     //alert("获取到的value：" + checkBoxAll); 
	    //alert("获取到的value：" + checkValue); 
	    //获得所有复选框的value值，然后，用checkArray中的值和他们比较，如果有，则说明该复选框被选中
	    for(var i=0;i<checkArray.length;i++){
	    //获取所有复选框对象的value属性，然后，用checkArray[i]和他们匹配，如果有，则说明他应被选中
	     
	    $.each(checkBoxAll,function(j,checkbox){
	    //获取复选框的value属性
	    var checkValue=$(checkbox).val();
	   
	    if(checkArray[i]==checkValue){
	    $(checkbox).attr("checked",true);
	    }
	    })
	    }
	
})





</script> 
  
  
  
  
  
  
  
  
  
  
  <style type="text/css">
dl,dt,dd,h5,p{
padding:0px;
margin:0px;
font-size:10pt;}
dl{
width:80%;
height:auto;
display:block;
overflow:hidden;
margin:0 auto;
font-size:10pt;
line-height:160%;}
dt,dt a{
	width:100%;
	height:auto;
	display:block;
	font-weight: bold;
	color:#333;
	font-size:10.5pt;
	cursor:pointer;
	text-decoration: none;
}
dt a:hover{
	text-decoration: underline;
	/* color:#F6C; */
}
dd,p{
	text-indent: 2em;
}
</style>
  
  <script>
var number=1; //定义条目数

function LMYC() {
var lbmc;
    for (i=1;i<=number;i++) {
        lbmc = eval('LM' + i);
        lbmc.style.display = 'none';
    }
}
 
function ShowFLT(i) {
    lbmc = eval('LM' + i);
    if (lbmc.style.display == 'none') {
        LMYC();
        lbmc.style.display = '';
    }
    else {
        lbmc.style.display = 'none';
    }
}
</script>
  
 
  
  
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="ecommerce">

  
    <!-- BEGIN STYLE CUSTOMIZER -->
    <div class="color-panel hidden-sm">
      <div class="color-mode-icons icon-color"></div>
      <div class="color-mode-icons icon-color-close"></div>
      <div class="color-mode">
        <p>THEME COLOR</p>
        <ul class="inline">
          <li class="color-red current color-default" data-style="red"></li>
          <li class="color-blue" data-style="blue"></li>
          <li class="color-green" data-style="green"></li>
          <li class="color-orange" data-style="orange"></li>
          <li class="color-gray" data-style="gray"></li>
          <li class="color-turquoise" data-style="turquoise"></li>
        </ul>
      </div>
    </div>
    <!-- END BEGIN STYLE CUSTOMIZER --> 

    <!-- BEGIN TOP BAR -->
    <div class="pre-header">
        <div class="container">
            <div class="row">
                <!-- BEGIN TOP BAR LEFT PART -->
                <div class="col-md-6 col-sm-6 additional-shop-info">
                    <ul class="list-unstyled list-inline">
                        <li><i class="fa fa-phone"></i><span>+1 456 6717</span></li>
                        <!-- BEGIN CURRENCIES -->
                        <li class="shop-currencies">
                            <a href="javascript:void(0);">€</a>
                            <a href="javascript:void(0);">£</a>
                            <a href="javascript:void(0);" class="current">$</a>
                        </li>
                        <!-- END CURRENCIES -->
                        <!-- BEGIN LANGS -->
                        <li class="langs-block">
                            <a href="javascript:void(0);" class="current">English </a>
                            <div class="langs-block-others-wrapper"><div class="langs-block-others">
                              <a href="javascript:void(0);">French</a>
                              <a href="javascript:void(0);">Germany</a>
                              <a href="javascript:void(0);">Turkish</a>
                            </div></div>
                        </li>
                        <!-- END LANGS -->
                    </ul>
                </div>
                <!-- END TOP BAR LEFT PART -->
                <!-- BEGIN TOP BAR MENU -->
                <div class="col-md-6 col-sm-6 additional-nav">
                    <ul class="list-unstyled list-inline pull-right">
                        <li><a href="shop-account.html">My Account</a></li>
                        <li><a href="shop-wishlist.html">My Wishlist</a></li>
                        <li><a href="shop-checkout.html">Checkout</a></li>
                        <li><a href="page-login.html">Log In</a></li>
                    </ul>
                </div>
                <!-- END TOP BAR MENU -->
            </div>
        </div>        
    </div>
    <!-- END TOP BAR -->

    <!-- BEGIN HEADER -->
    <div class="header">
      <div class="container">
        <a class="site-logo" href="shop-index.html"><img src="<%=basePath%>assets/corporate/img/logos/logo-shop-red.png" alt=""></a>
         <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>
       

 











        <!-- BEGIN NAVIGATION -->
        <div class="header-navigation">
          <ul>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                首页
                
              </a>
                
              <!-- BEGIN DROPDOWN MENU -->
             
              <!-- END DROPDOWN MENU -->
            </li>
            <li class="dropdown active">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                我的佳缘
                
              </a>
             
            </li>
            <li><a href="shop-item.html">搜索</a></li>
            <li class="dropdown dropdown100 nav-catalogue">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                活动
                
              </a>
             
            </li>
            <li class="dropdown dropdown-megamenu">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                晒幸福
                
              </a>
                
              
            </li>
            
           
           

            </li>
            <!-- END TOP SEARCH -->
          </ul>
        </div>
        <!-- END NAVIGATION -->
      </div>
    </div>
    <!-- Header END -->

    <div class="main">
      <div class="container">
        <ul class="breadcrumb">
            <li><a href="index.html">首页</a></li>
            <li><a href="">我的佳缘</a></li>
            <li class="active">我的资料</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN SIDEBAR -->
          <div class="sidebar col-md-3 col-sm-5">
            <div class="sidebar-filter margin-bottom-25">
              <h3><input type="button" value="基本资料"></h3>
              <h3><input type="button" value="内心独白" onclick="location.href='<%=basePath%>user/qx/showSoliloquy.action'"></h3>
              <h3><input type="button" value="我的照片" onclick="location.href='<%=basePath%>user/qx/showPhoto.action'"></h3>
              <h3><input type="button" value="我的地图"></h3>
              
              
             <dl>
         <dt onClick=javascript:ShowFLT(1) href="javascript:void(null)"><a href="javascript:;">详细资料</a></dt>
          <dd id=LM1 style="DISPLAY: none">
          <h5><a href="http://51xuediannao.com/HTML+CSS"> 经济实力</a></h5>
          <h5><a href="http://51xuediannao.com/HTML+CSS"> 生活方式</a></h5>
          <h5><a href="http://51xuediannao.com/HTML+CSS"> 工作学习</a></h5>
          <h5><a href="http://51xuediannao.com/HTML+CSS"> 外貌体型</a></h5>
          <h5><a href="http://51xuediannao.com/HTML+CSS"> 婚姻观念</a></h5>
          <h5><a href="http://51xuediannao.com/HTML+CSS"> 兴趣爱好</a></h5>
		</dd>
        
        </dl>
 
              

              
              
              <div class="checkbox-list">
                <input type="button"  value="收件箱">&nbsp;<input type="button" value="谁看过我">
              </div>

            
              
             
            </div>

            <div class="sidebar-products clearfix">
              <h2>服务中心</h2>
              <div class="item">
                
                <h3><a href="shop-item.html">我的账户</a></h3>
                
              </div>
            </div>
          </div>
                   <!-- END SIDEBAR -->
          <!-- BEGIN CONTENT -->
          <div class="col-md-9 col-sm-7">
            <div class="content-search margin-bottom-20">
              <div class="row">
                <div class="col-md-6">
                  <div class="col-md-9 col-sm-7">
                    <div class="content-search margin-bottom-20">
                      <div class="row">
                        <div class="col-md-6">
                          <h1>兴趣<em>爱好</em></h1>
                        </div>
                      </div>
                    </div>
                    <!-- BEGIN PRODUCT LIST -->
                  </div>
                  <h1>&nbsp;</h1>
                  
                  
                  <form id="form_base" name="form_base" action="<%=basePath%>user/qx/savaHobbies.action" method="post" >
			
			
			
			
		
			<!-- 兴趣爱好开始 -->
			   <div class="interest">
				<!-- <h5 >喜欢的体育运动：</h5> -->
				<br/>
				<br/>
				<br/>
				<h3>喜欢的体育运动：</h3><br/>
					<label for="sports_1"><input  type="checkbox" name="sport" id="sport" value="足球"/>&nbsp;足球</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="sports_2"><input  type="checkbox" name="sport" id="sport" value="篮球"/>&nbsp;篮球</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="sports_3"><input  type="checkbox" name="sport" id="sport" value="排球"/>&nbsp;排球</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="sports_4"><input  type="checkbox" name="sport" id="sport" value="网球"/>&nbsp;网球</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="sports_5"><input  type="checkbox" name="sport" id="sport" value="羽毛球"/>&nbsp;羽毛球</label><br />
					<label for="sports_6"><input  type="checkbox" name="sport" id="sport" value="乒乓球"/>&nbsp;乒乓球</label>&nbsp;&nbsp;
					<label for="sports_7"><input  type="checkbox" name="sport" id="sport" value="壁球"/>&nbsp;壁球</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="sports_8"><input  type="checkbox" name="sport" id="sport" value="保龄球"/>&nbsp;保龄球</label>&nbsp;&nbsp;&nbsp;
					<label for="sports_9"><input  type="checkbox" name="sport" id="sport" value="手球"/>&nbsp;手球</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="sports_10"><input  type="checkbox" name="sport" id="sport" value="橄榄球"/>&nbsp;橄榄球</label><br />
					<label for="sports_11"><input  type="checkbox" name="sport" id="sport" value="棒球"/>&nbsp;棒球</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="sports_12"><input  type="checkbox" name="sport" id="sport" value="高尔夫"/>&nbsp;高尔夫</label>&nbsp;&nbsp;
					<label for="sports_13"><input  type="checkbox" name="sport" id="sport" value="健身"/>&nbsp;健身</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="sports_14"><input  type="checkbox" name="sport" id="sport" value="跑步"/>&nbsp;跑步</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="sports_15"><input  type="checkbox" name="sport" id="sport" value="自行车"/>&nbsp;自行车</label><br />
					<label for="sports_16"><input  type="checkbox" name="sport" id="sport" value="摩托车"/>&nbsp;摩托车</label>&nbsp;&nbsp;
					<label for="sports_17"><input  type="checkbox" name="sport" id="sport" value="汽车"/>&nbsp;汽车</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="sports_18"><input  type="checkbox" name="sport" id="sport" value="舞蹈"/>&nbsp;舞蹈</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="sports_19"><input  type="checkbox" name="sport" id="sport" value="体操"/>&nbsp;体操</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="sports_20"><input  type="checkbox" name="sport" id="sport" value="跆拳道"/>&nbsp;跆拳道</label> <br />
					<label for="sports_21"><input  type="checkbox" name="sport" id="sport" value="柔道"/>&nbsp;柔道</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="sports_22"><input  type="checkbox" name="sport" id="sport" value="空手道"/>&nbsp;空手道</label>&nbsp;&nbsp;
					<label for="sports_23"><input  type="checkbox" name="sport" id="sport" value="游泳"/>&nbsp;游泳</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="sports_24"><input  type="checkbox" name="sport" id="sport" value="潜水"/>&nbsp;潜水</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="sports_25"><input  type="checkbox" name="sport" id="sport" value="水上运动"/>&nbsp;水上运动</label><br />
					<label for="sports_26"><input  type="checkbox" name="sport" id="sport" value="航海"/>&nbsp;航海</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="sports_27"><input  type="checkbox" name="sport" id="sport" value="滑雪/滑冰"/>&nbsp;滑雪/滑冰</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="sports_28"><input  type="checkbox" name="sport" id="sport" value="拳击"/>&nbsp;拳击</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="sports_29"><input  type="checkbox" name="sport" id="sport" value="钓鱼"/>&nbsp;钓鱼</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="sports_32"><input  type="checkbox" name="sport" id="sport" value="瑜珈"/>&nbsp;瑜珈</label><br />
					<label for="sports_33"><input  type="checkbox" name="sport" id="sport" value="武术"/>&nbsp;武术</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="sports_30"><input  type="checkbox" name="sport" id="sport" value="其它"/>&nbsp;其它</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="sports_31"><input  type="checkbox" name="sport" id="sport" value="不喜欢运动"/>&nbsp;不喜欢运动</label>
								
				<h3 class="bh3">喜欢的食物：</h3>
				
					<label for="food_1"><input  type="checkbox" name="food" id="food" value="中国菜"/>&nbsp;中国菜</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="food_2"><input  type="checkbox" name="food" id="food" value="印度菜"/>&nbsp;印度菜</label>&nbsp;&nbsp;&nbsp;
					<label for="food_3"><input  type="checkbox" name="food" id="food" value="泰国菜"/>&nbsp;泰国菜</label>&nbsp;&nbsp;&nbsp;
					<label for="food_4"><input  type="checkbox" name="food" id="food" value="法国菜"/>&nbsp;法国菜</label>&nbsp;&nbsp;&nbsp;
					<label for="food_5"><input  type="checkbox" name="food" id="food" value="意大利菜"/>&nbsp;意大利菜</label>&nbsp;&nbsp;&nbsp;
					<label for="food_6"><input  type="checkbox" name="food" id="food" value="俄罗斯菜"/>&nbsp;俄罗斯菜</label>&nbsp;&nbsp;&nbsp;
					<label for="food_7"><input  type="checkbox" name="food" id="food" value="日本菜"/>&nbsp;日本菜</label>&nbsp;&nbsp;&nbsp;
					<label for="food_8"><input  type="checkbox" name="food" id="food" value="烧烤"/>&nbsp;烧烤</label>&nbsp;&nbsp;&nbsp;
					<label for="food_9"><input  type="checkbox" name="food" id="food" value="健康食品"/>&nbsp;健康食品</label>&nbsp;&nbsp;&nbsp;
					<label for="food_10"><input  type="checkbox" name="food" id="food" value="素食"/>&nbsp;素食</label>&nbsp;&nbsp;&nbsp;
					<label for="food_11"><input  type="checkbox" name="food" id="food" value="快餐"/>&nbsp;快餐</label>&nbsp;&nbsp;&nbsp;
					<label for="food_12"><input  type="checkbox" name="food" id="food" value="巧克力和甜点"/>&nbsp;巧克力和甜点</label>&nbsp;&nbsp;&nbsp;
					<label for="food_13"><input  type="checkbox" name="food" id="food" value="其他"/>&nbsp;其他</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label for="food_14"><input  type="checkbox" name="food" id="food" value="无特别爱好"/>&nbsp;无特别爱好</label>
									
				<h3 class="ch3">喜欢的书籍：</h3>
				
					<label for="book_1"><input  type="checkbox" name="book" id="book" value="校园青春"/>&nbsp;校园青春</label>
					<label for="book_2"><input  type="checkbox" name="book" id="book" value="文学"/>&nbsp;文学</label>
					<label for="book_3"><input  type="checkbox" name="book" id="book" value="艺术与摄影"/>&nbsp;艺术与摄影</label>
					<label for="book_4"><input  type="checkbox" name="book" id="book" value="励志与成功"/>&nbsp;励志与成功</label>
					<label for="book_5"><input  type="checkbox" name="book" id="book" value="动漫与幽默"/>&nbsp;动漫与幽默</label>
					<label for="book_6"><input  type="checkbox" name="book" id="book" value="政治与军事"/>&nbsp;政治与军事</label>
					<label for="book_7"><input  type="checkbox" name="book" id="book" value="哲学与宗教"/>&nbsp;哲学与宗教</label>
					<label for="book_8"><input  type="checkbox" name="book" id="book" value="历史传记"/>&nbsp;历史传记</label>
					<label for="book_9"><input  type="checkbox" name="book" id="book" value="运动健身"/>&nbsp;运动健身</label>
					<label for="book_10"><input  type="checkbox" name="book" id="book" value="健康与养生"/>&nbsp;健康与养生</label>
					<label for="book_11"><input  type="checkbox" name="book" id="book" value="烹饪与饮食"/>&nbsp;烹饪与饮食</label>
					<label for="book_12"><input  type="checkbox" name="book" id="book" value="旅游"/>&nbsp;旅游</label>
					<label for="book_13"><input  type="checkbox" name="book" id="book" value="投资理财"/>&nbsp;投资理财</label>
					<label for="book_14"><input  type="checkbox" name="book" id="book" value="婚恋与家庭"/>&nbsp;婚恋与家庭</label>
					<label for="book_15"><input  type="checkbox" name="book" id="book" value="期刊杂志"/>&nbsp;期刊杂志</label>
					<label for="book_16"><input  type="checkbox" name="book" id="book" value="娱乐时尚"/>&nbsp;娱乐时尚</label>
					<label for="book_17"><input  type="checkbox" name="book" id="book" value="人文社科"/>&nbsp;人文社科</label>
					<label for="book_18"><input  type="checkbox" name="book" id="book" value="自然科学"/>&nbsp;自然科学</label>
					<label for="book_19"><input  type="checkbox" name="book" id="book" value="收藏与鉴赏"/>&nbsp;收藏与鉴赏</label>
					<label for="book_20"><input  type="checkbox" name="book" id="book" value="其他"/>&nbsp;其他</label></li>
					<label for="book_21"><input  type="checkbox" name="book" id="book" value="什么都看"/>&nbsp;什么都看</label>
									
			<h3 class="dh3">喜欢的电影：</h3>
				
				<label for="influential_movie_1"><input  type="checkbox" name="movie" id="movie" value="爱情"/>&nbsp;爱情</label>
				<label for="influential_movie_2"><input  type="checkbox" name="movie" id="movie" value="喜剧"/>&nbsp;喜剧</label><
				<label for="influential_movie_3"><input  type="checkbox" name="movie" id="movie" value="动作冒险"/>&nbsp;动作冒险</label>
				<label for="influential_movie_4"><input  type="checkbox" name="movie" id="movie" value="古装武侠"/>&nbsp;古装武侠</label>
				<label for="influential_movie_5"><input  type="checkbox" name="movie" id="movie" value="科幻魔幻"/>&nbsp;科幻魔幻</label>
				<label for="influential_movie_6"><input  type="checkbox" name="movie" id="movie" value="悬疑推理"/>&nbsp;悬疑推理</label>
				<label for="influential_movie_7"><input  type="checkbox" name="movie" id="movie" value="惊悚恐怖"/>&nbsp;惊悚恐怖</label>
				<label for="influential_movie_8"><input  type="checkbox" name="movie" id="movie" value="动画"/>&nbsp;动画</label>
				<label for="influential_movie_9"><input  type="checkbox" name="movie" id="movie" value="战争"/>&nbsp;战争</label>
				<label for="influential_movie_10"><input  type="checkbox" name="movie" id="movie" value="音乐歌舞"/>&nbsp;音乐歌舞</label>
				<label for="influential_movie_11"><input  type="checkbox" name="movie" id="movie" value="纪录片"/>&nbsp;纪录片</label>
				<label for="influential_movie_12"><input  type="checkbox" name="movie" id="movie" value="剧情"/>&nbsp;剧情</label>
				<label for="influential_movie_13"><input  type="checkbox" name="movie" id="movie" value="西部"/>&nbsp;西部</label>
				<label for="influential_movie_14"><input  type="checkbox" name="movie" id="movie" value="历史传记"/>&nbsp;历史传记</label>
				<label for="influential_movie_15"><input  type="checkbox" name="movie" id="movie" value="其他"/>&nbsp;其他</label>
				<label for="influential_movie_16"><input  type="checkbox" name="movie" id="movie" value="什么都看"/>&nbsp;什么都看</label>
								
			<h3 class="eh3">关注的节目：</h3>
				
				<label for="attention_1"><input  type="checkbox" name="chanel" id="chanel" value="政治事件"/>&nbsp;政治事件</label>
				<label for="attention_2"><input  type="checkbox" name="chanel" id="chanel" value="娱乐八卦"/>&nbsp;娱乐八卦</label>
				<label for="attention_3"><input  type="checkbox" name="chanel" id="chanel" value="体育赛事"/>&nbsp;体育赛事</label>
				<label for="attention_4"><input  type="checkbox" name="chanel" id="chanel" value="理财投资"/>&nbsp;理财投资</label>
				<label for="attention_5"><input type="checkbox" name="chanel" id="chanel" value="相声曲艺"/>&nbsp;相声曲艺</label>
				<label for="attention_6"><input  type="checkbox" name="chanel" id="chanel" value="海选活动"/>&nbsp;海选活动</label>
				<label for="attention_7"><input  type="checkbox" name="chanel" id="chanel" value="畅销书"/>&nbsp;畅销书</label>
				<label for="attention_8"><input  type="checkbox" name="chanel" id="chanel" value="影视热片"/>&nbsp;影视热片</label>
				<label for="attention_9"><input  type="checkbox" name="chanel" id="chanel" value="休闲生活"/>&nbsp;休闲生活</label>
				<label for="attention_10"><input  type="checkbox" name="chanel" id="chanel" value="行业发展"/>&nbsp;行业发展</label>
				<label for="attention_11"><input  type="checkbox" name="chanel" id="chanel" value="其他"/>&nbsp;其他</label>
				<label for="attention_12"><input  type="checkbox" name="chanel" id="chanel" value="暂无"/>&nbsp;暂无</label>
									
		 <h3 class="eh4">娱乐休闲：</h3>
				
				<label for="space_1"><input  type="checkbox" name="joke" id="joke" value="饭店"/>&nbsp;饭店</label>
				<label for="space_2"><input  type="checkbox" name="joke" id="joke" value="商场"/>&nbsp;商场</label>
				<label for="space_3"><input  type="checkbox" name="joke" id="joke" value="剧院"/>&nbsp;剧院</label>
				<label for="space_4"><input  type="checkbox" name="joke" id="joke" value="酒吧"/>&nbsp;酒吧</label>
				<label for="space_5"><input  type="checkbox" name="joke" id="joke" value="电影院"/>&nbsp;电影院</label>
				<label for="space_6"><input  type="checkbox" name="joke" id="joke" value="音乐会"/>&nbsp;音乐会</label>
				<label for="space_7"><input  type="checkbox" name="joke" id="joke" value="迪斯科"/>&nbsp;迪斯科</label>
				<label for="space_8"><input  type="checkbox" name="joke" id="joke" value="网吧"/>&nbsp;网吧</label>
				<label for="space_9"><input  type="checkbox" name="joke" id="joke" value="温泉"/>&nbsp;温泉</label>
				<label for="space_10"><input  type="checkbox" name="joke" id="joke" value="图书馆/书店"/>&nbsp;图书馆/书店</label>
				<label for="space_11"><input type="checkbox" name="joke" id="joke" value="咖啡厅"/>&nbsp;咖啡厅</label>
				<label for="space_12"><input  type="checkbox" name="joke" id="joke" value="游乐场"/>&nbsp;游乐场</label>
				<label for="space_13"><input  type="checkbox" name="joke" id="joke" value="卡拉OK"/>&nbsp;卡拉OK</label>
				<label for="space_14"><input  type="checkbox" name="joke" id="joke" value="体育馆"/>&nbsp;体育馆</label>
				<label for="space_15"><input  type="checkbox" name="joke" id="joke" value="逛街"/>&nbsp;逛街</label>
				<label for="space_16"><input  type="checkbox" name="joke" id="joke" value="在自己或朋友家里"/>&nbsp;在自己或朋友家里</label>
				<label for="space_17"><input  type="checkbox" name="joke" id="joke" value="其它"/>&nbsp;其它</label>
				<label for="space_18"><input  type="checkbox" name="joke" id="joke" value="不想说"/>&nbsp;不想说</label>
									
		   <h3 class="eh5">业余爱好：</h3>
				
			<label for="interest_1"><input  type="checkbox" name="hobby" id="hobby" value="网络"/>&nbsp;网络</label>
			<label for="interest_2"><input  type="checkbox" name="hobby" id="hobby" value="汽车"/>&nbsp;汽车</label>
			<label for="interest_3"><input  type="checkbox" name="hobby" id="hobby" value="摄影"/>&nbsp;摄影</label>
			<label for="interest_5"><input  type="checkbox" name="hobby" id="hobby" value="影视"/>&nbsp;影视</label>
			<label for="interest_6"><input  type="checkbox" name="hobby" id="hobby" value="音乐"/>&nbsp;音乐</label>
			<label for="interest_7"><input  type="checkbox" name="hobby" id="hobby" value="写作"/>&nbsp;写作</label>
			<label for="interest_8"><input  type="checkbox" name="hobby" id="hobby" value="购物"/>&nbsp;购物</label>
			<label for="interest_9"><input  type="checkbox" name="hobby" id="hobby" value="手工艺"/>&nbsp;手工艺</label>
			<label for="interest_10"><input  type="checkbox" name="hobby" id="hobby" value="园艺"/>&nbsp;园艺</label>
			<label for="interest_11"><input  type="checkbox" name="hobby" id="hobby" value="舞蹈"/>&nbsp;舞蹈</label>
			<label for="interest_12"><input  type="checkbox" name="hobby" id="hobby" value="展览"/>&nbsp;展览</label>
			<label for="interest_13"><input  type="checkbox" name="hobby" id="hobby" value="烹饪"/>&nbsp;烹饪</label>
			<label for="interest_14"><input  type="checkbox" name="hobby" id="hobby" value="读书"/>&nbsp;读书</label>
			<label for="interest_15"><input  type="checkbox" name="hobby" id="hobby" value="绘画"/>&nbsp;绘画</label>
			<label for="interest_16"><input  type="checkbox" name="hobby" id="hobby" value="计算机"/>&nbsp;计算机</label>
			<label for="interest_17"><input  type="checkbox" name="hobby" id="hobby" value="体育运动"/>&nbsp;体育运动</label>
			<label for="interest_18"><input  type="checkbox" name="hobby" id="hobby" value="旅游"/>&nbsp;旅游</label>
			<label for="interest_19"><input  type="checkbox" name="hobby" id="hobby" value="电子游戏"/>&nbsp;电子游戏</label>
			<label for="interest_20"><input  type="checkbox" name="hobby" id="hobby" value="其它"/>&nbsp;其它</label>
									
		<h3 class="eh6">喜欢的旅游去处：</h3>
				
			<label for="travel_1"><input  type="checkbox" name="travle" id="travle" value="惬意海岛"/>&nbsp;惬意海岛</label>
			<label for="travel_2"><input  type="checkbox" name="travle" id="travle" value="名山古刹"/>&nbsp;名山古刹</label>
			<label for="travel_3"><input  type="checkbox" name="travle" id="travle" value="繁华都市"/>&nbsp;繁华都市</label>
			<label for="travel_4"><input  type="checkbox" name="travle" id="travle" value="风情名城"/>&nbsp;风情名城</label>
			<label for="travel_5"><input  type="checkbox" name="travle" id="travle" value="广袤森林"/>&nbsp;广袤森林</label>
			<label for="travel_6"><input  type="checkbox" name="travle" id="travle" value="高原雪域"/>&nbsp; 高原雪域</label>
			<label for="travel_7"><input  type="checkbox" name="travle" id="travle" value="秀美山水"/>&nbsp;秀美山水</label>
			<label for="travel_8"><input  type="checkbox" name="travle" id="travle" value="历史遗迹"/>&nbsp;历史遗迹</label>
			<label for="travel_9"><input  type="checkbox" name="travle" id="travle" value="江河大川"/>&nbsp;江河大川</label>
			<label for="travel_10"><input  type="checkbox" name="travle" id="travle" value="峻秀峡谷"/>&nbsp;峻秀峡谷</label>
			<label for="travel_11"><input  type="checkbox" name="travle" id="travle" value="小桥流水人家"/>&nbsp;小桥流水人家</label>
			<label for="travel_12"><input  type="checkbox" name="travle" id="travle" value="其他选择"/>&nbsp;其他选择</label>
			<label for="travel_13"><input  type="checkbox" name="travle" id="travle" value="还没想好"/>&nbsp;还没想好</label>
									
				<div style="text-align:center;padding-top:20px;"><input type="submit" class="save" value="保存"  /><input type="button" value="跳过此页" class="skip"  /></div>
			
			<!-- 兴趣爱好结束 -->
			</div>
			
		</form>
			
			
			
			
			
			
			
		
                  
                  
                  
                  
                  
                  
                </div>
              </div>
            </div>
          </div>
          <!-- END SIDEBAR & CONTENT -->
      </div>
    </div>

  
  
    <!--[if lt IE 9]>
    <script src="assets/plugins/respond.min.js"></script>  
    <![endif]-->  
    <script src="<%=basePath%>assets/plugins/jquery.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>assets/plugins/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>      
    <script src="<%=basePath%>assets/corporate/scripts/back-to-top.js" type="text/javascript"></script>
    <script src="<%=basePath%>assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- END CORE PLUGINS -->

    <!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
    <script src="<%=basePath%>assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
    <script src="<%=basePath%>assets/plugins/owl.carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->
    <script src='<%=basePath%>assets/plugins/zoom/jquery.zoom.min.js' type="text/javascript"></script><!-- product zoom -->
    <script src="<%=basePath%>assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->
    <script src="<%=basePath%>assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>assets/plugins/rateit/src/jquery.rateit.js" type="text/javascript"></script>
   

    <script src="<%=basePath%>assets/corporate/scripts/layout.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();    
            Layout.initOWL();
            Layout.initTwitter();
            Layout.initImageZoom();
            Layout.initTouchspin();
            Layout.initUniform();
            Layout.initSliderRange();
        });
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>