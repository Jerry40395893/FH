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
  //当页面加载完成的时候，自动调用该方法
  
  console.log("888")
    //获得所要回显的值
     
    var checkeds = "${salary.finance}";
    //拆分为字符串数组
   
    console.log(checkeds)
    var checkArray =checkeds.split(",");
    //获得所有的复选框对象
    var checkBoxAll = $("input[name='finance']");
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
    
    
    
    var checkeds1 = "${salary.debt}";
    //拆分为字符串数组
   
    console.log(checkeds1)
    var checkArray1 =checkeds1.split(",");
    //获得所有的复选框对象
    var checkBoxAll1 = $("input[name='debt']");
     //alert("获取到的value：" + checkBoxAll); 
    //alert("获取到的value：" + checkValue); 
    //获得所有复选框的value值，然后，用checkArray中的值和他们比较，如果有，则说明该复选框被选中
    for(var i=0;i<checkArray1.length;i++){
    //获取所有复选框对象的value属性，然后，用checkArray[i]和他们匹配，如果有，则说明他应被选中
     
    $.each(checkBoxAll1,function(j,checkbox){
    //获取复选框的value属性
    var checkValue=$(checkbox).val();
   
    if(checkArray1[i]==checkValue){
    $(checkbox).attr("checked",true);
    }
    })
    }
    
   
    });
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
                          <h1>经济<em>实力</em></h1>
                        </div>
                      </div>
                    </div>
                    <!-- BEGIN PRODUCT LIST -->
                  </div>
                  <h1>&nbsp;</h1>
                  
                  
                <form id="form_base" name="form_base" action="<%=basePath%>user/qx/finance.action" method="post" >
			<table width="100%"  border="0">
  <tr>
    <th width="124" scope="row">投资理财：</th>
    <td width="141">
      <input type="checkbox" name="finance" id="finance" value="银行存款" />
      <label for="checkbox"></label>
    银行存款
    </td>
    <td width="166">    <input type="checkbox" name="finance" id="finance" value="购买基金"/>
      <label for="checkbox"></label>
    购买基金</td>
    <td width="95">    <input type="checkbox" name="finance" id="finance" value="证券投资"/>
      <label for="checkbox"></label>
    证券投资</td>
  </tr>
  <tr>
    <th scope="row" align="center">(可多选)</th>
    <td>    <input type="checkbox" name="finance" id="finance" value="购买保险"/>
      <label for="checkbox"></label>
    购买保险</td>
    <td>    <input type="checkbox" name="finance" id="finance" value="理财产品投资"/>
      <label for="checkbox"></label>
    理财产品投资</td>
    <td>    <input type="checkbox" name="finance" id="finance" value="外汇投资"/>
      <label for="checkbox"></label>外汇投资
    </td>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    <td><input type="checkbox" name="finance" id="finance" value="期货投资"/>
      <label for="checkbox"></label>期货投资
    </td>
    <td><input type="checkbox" name="finance" id="finance" value="贵金属投资" />
     贵金属投资</td>
    <td><input type="checkbox" name="finance" id="finance" value=" 房产投资"/>
     房产投资</td>
  </tr>

  <tr>
    <th scope="row">&nbsp;</th>
    <td><input type="checkbox" name="finance" id="finance" value="收藏品投资"/>
     收藏品投资</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  
     <tr>
    <th scope="row">&nbsp;</th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  
  <tr>
    <th scope="row">外债贷款：</th>
    <td><input type="checkbox" name="debt" id="debt" value="无外债贷款"/>
     无外债贷款</td>
    <td><input type="checkbox" name="debt" id="debt" value="房贷"/>房贷</td>
    <td><input type="checkbox" name="debt" id="debt" value="车贷"/>车贷</td>
  </tr>
  <tr>
    <th scope="row">(可多选)</th>
    <td><input type="checkbox" name="debt" id="debt" value="留学贷款"/>留学贷款</td>
    <td><input type="checkbox" name="debt" id="debt" value="助学贷款"/>助学贷款</td>
    <td><input type="checkbox" name="debt" id="debt" value="个人生产经营性贷款"/>个人生产经营性贷款</td>
  </tr>
 
</table>
			
			
			
	
			
		
			<div >
				<dl><span  >经济观念：</span></dl>
				</dl>
				<dl >
					<select  name="salaryPoint" id="salaryPoint" >
						<option value="0" selected="selected" >--请选择--</option>
						<option label="基本是月光族，及时享乐主义" value="基本是月光族，及时享乐主义">基本是月光族，及时享乐主义</option>
<option label="每月会存点钱，但是也要享受生活" value="每月会存点钱，但是也要享受生活">每月会存点钱，但是也要享受生活</option>
<option label="每月有固定存款，剩余自由分配" value="每月有固定存款，剩余自由分配">每月有固定存款，剩余自由分配</option>
<option label="为了未来努力攒钱，勤俭节约过日子" value="为了未来努力攒钱，勤俭节约过日子">为了未来努力攒钱，勤俭节约过日子</option>

					</select>
				</dl>
			</div>
			<div class="economic_button">
				<input type="submit" value="保存" class="save">
				<input type="button"  value="返回">
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