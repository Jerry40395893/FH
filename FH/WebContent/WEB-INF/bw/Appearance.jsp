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
    
    	 var figure="${Appearance.figure}";
    	 $("select[name='figure']").find("option[value='"+figure+"']").attr("selected",true);
    	
    	 var feature="${Appearance.feature}";
    	 $("select[name='feature']").find("option[value='"+feature+"']").attr("selected",true);
    	 
    	 var eyes="${Appearance.eyes}";
    	 $("select[name='eyes']").find("option[value='"+eyes+"']").attr("selected",true);
    	 
    	 var hair="${Appearance.hair}";
    	 $("select[name='hair']").find("option[value='"+hair+"']").attr("selected",true);
    	 
    	 var skin="${Appearance.skin}";
    	 $("select[name='skin']").find("option[value='"+skin+"']").attr("selected",true);
    	 
    	 var skinColor="${Appearance.skinColor}";
    	 $("select[name='skinColor']").find("option[value='"+skinColor+"']").attr("selected",true);
    	 
    	 var muscle="${Appearance.muscle}";
    	 $("select[name='muscle']").find("option[value='"+muscle+"']").attr("selected",true);
    	 
    	 var healthy="${Appearance.healthy}";
    	 $("select[name='healthy']").find("option[value='"+healthy+"']").attr("selected",true);
    	 
    	 var hairType="${Appearance.hairType}";
    	 $("select[name='hairType']").find("option[value='"+hairType+"']").attr("selected",true);
    	 
    	 var eyeType="${Appearance.eyeType}";
    	 $("select[name='eyeType']").find("option[value='"+eyeType+"']").attr("selected",true);
    	 
    	 var hairLength="${Appearance.hairLength}";
    	 $("select[name='hairLength']").find("option[value='"+hairLength+"']").attr("selected",true);
    	 
    	 
    	 var checkeds = "${Appearance.wearStyle}";
    	    //拆分为字符串数组
    	   
    	    console.log(checkeds)
    	    var checkArray =checkeds.split(",");
    	    //获得所有的复选框对象
    	    var checkBoxAll = $("input[name='wearStyle']");
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
                          <h1>外贸<em>体型</em></h1>
                        </div>
                      </div>
                    </div>
                    <!-- BEGIN PRODUCT LIST -->
                  </div>
                  <h1>&nbsp;</h1>
                  
                  
                  <form id="form_base" name="form_base" action="<%=basePath%>user/qx/savaAppearance.action" method="post" >


									<table width="482" cellpadding="0" cellspacing="0">
										<tr>
											<td class="item"><span>体重：</span></td>
											<td width="370"><input type="text" maxlength=3
												name="weight" id="weight" value="${Appearance.weight}"
												 />&nbsp;公斤</td>
										</tr>
										<tr>
											<td class="item"><span>体型：</span></td>
											<td><select name="figure" id="figure">
													<option value="0">--请选择--</option>
													<option label="苗条型" value="苗条型">苗条型</option>
													<option label="匀称型" value="匀称型">匀称型</option>
													<option label="高挑型" value="高挑型">高挑型</option>
													<option label="丰满型" value="丰满型">丰满型</option>
													<option label="健壮型" value="健壮型">健壮型</option>
													<option label="魁梧型" value="魁梧型">魁梧型</option>
													<option label="运动型" value="运动型">运动型</option>
													<option label="曲线型" value="曲线型">曲线型</option>
													<option label="高大型" value="高大型">高大型</option>

											</select></td>
										</tr>
										<tr>
											<td class="item"><span>脸型：</span></td>
											<td><select name="feature" id="feature">
													<option value="0">--请选择--</option>
													<option label="圆脸型" value="圆脸型">圆脸型</option>
													<option label="方脸型" value="方脸型">方脸型</option>
													<option label="长脸型" value="长脸型">长脸型</option>
													<option label="瓜子脸型" value="瓜子脸型">瓜子脸型</option>
													<option label="鸭蛋脸型" value="鸭蛋脸型">鸭蛋脸型</option>
													<option label="国字脸型" value="国字脸型">国字脸型</option>
													<option label="三角脸型" value="三角脸型">三角脸型</option>
													<option label="菱形脸型" value="菱形脸型">菱形脸型</option>
													<option label="保密" value="保密">保密</option>
											</select></td>
										</tr>
										<tr>
											<td class="item"><span>眼睛：</span></td>
											<td><select name="eyes" id="eyes" >
													<option value="0">--请选择眼色--</option>
													<option label="黑色" value="黑色">黑色</option>
													<option label="蓝色" value="蓝色">蓝色</option>
													<option label="浅褐色" value="浅褐色">浅褐色</option>
													<option label="棕色" value="棕色">棕色</option>
													<option label="灰色" value="灰色">灰色</option>
													<option label="绿色" value="绿色">绿色</option>
													<option label="特殊颜色" value="特殊颜色">特殊颜色</option>

											</select> <select name="eyeType" id="eyeType">
													<option value="0" selected="selected">--请选择眼型--</option>
													<option label="标准眼" value="标准眼">标准眼</option>
													<option label="丹凤眼" value="丹凤眼">丹凤眼</option>
													<option label="细长眼" value="细长眼">细长眼</option>
													<option label="眯缝眼" value="眯缝眼">眯缝眼</option>
													<option label="三角眼" value="三角眼">三角眼</option>
													<option label="深眼窝" value="深眼窝">深眼窝</option>
													<option label="双眼皮大眼睛" value="双眼皮大眼睛">双眼皮大眼睛</option>

											</select></td>
										</tr>
										<tr>
											<td class="item"><span>头发：</span></td>
											<td><select name="hair" id="hair">
													<option value="0" selected="selected">--请选择发色--</option>
													<option label="黑色" value="黑色">黑色</option>
													<option label="金色" value="金色">金色</option>
													<option label="褐色" value="褐色">褐色</option>
													<option label="栗色" value="栗色">栗色</option>
													<option label="灰色" value="灰色">灰色</option>
													<option label="红色" value="红色">红色</option>
													<option label="白色" value="白色">白色</option>
													<option label="挑染" value="挑染">挑染</option>
													<option label="光头" value="光头">光头</option>

											</select> <select name="hairType" id="hairType"
												class="om_select128" onchange="select_changed()">
													<option value="0" selected="selected">--请选择发型--</option>
													<option label="顺直" value="顺直">顺直</option>
													<option label="大卷" value="大卷">大卷</option>
													<option label="小卷" value="小卷">小卷</option>
													<option label="微卷" value="微卷">微卷</option>

											</select> <select name="hairLength" id="hairLength">
													<option value="0" selected="selected">--请选择发长--</option>
													<option label="平头" value="平头">平头</option>
													<option label="短发" value="短发">短发</option>
													<option label="中长发" value="中长发">中长发</option>
													<option label="长发" value="长发">长发</option>
													<option label="其他" value="其他">其他</option>

											</select></td>
										</tr>
										<tr>
											<td class="item"><span>皮肤：</span></td>
											<td><select name="skin" id="skin">
													<option value="0" selected="selected">--请选择--</option>
													<option label="皮肤光滑" value="皮肤光滑">皮肤光滑</option>
													<option label="皮肤白皙" value="皮肤白皙">皮肤白皙</option>
													<option label="皮肤细腻" value="皮肤细腻">皮肤细腻</option>
													<option label="皮肤暗黄" value="皮肤暗黄">皮肤暗黄</option>
													<option label="皮肤粗糙" value="皮肤粗糙">皮肤粗糙</option>
													<option label="皮肤敏感" value="皮肤敏感">皮肤敏感</option>

											</select></td>
										</tr>
										<tr>
											<td class="item"><span>肤色：</span></td>
											<td><select name="skinColor" id="skinColor">
													<option value="0" selected="selected">--请选择--</option>
													<option label="小麦肤色" value="小麦肤色">小麦肤色</option>
													<option label="黝黑肤色" value="黝黑肤色">黝黑肤色</option>
													<option label="健康肤色" value="健康肤色">健康肤色</option>
													<option label="亮白肤色" value="亮白肤色">亮白肤色</option>

											</select></td>
										</tr>
										<tr>
											<td class="item"><span>肌肉：</span></td>
											<td><select name="muscle" id="muscle">
													<option value="0" selected="selected">--请选择--</option>
													<option label="肌肉发达" value="肌肉发达">肌肉发达</option>
													<option label="有少量肌肉" value="有少量肌肉">有少量肌肉</option>
													<option label="没有肌肉" value="没有肌肉">没有肌肉</option>

											</select></td>
										</tr>
										<tr>
											<td class="item"><span>健康情况：</span></td>
											<td><select name="healthy" id="healthy">
													<option value="0" selected="selected">--请选择--</option>
													<option label="运动健将" value="运动健将">运动健将</option>
													<option label="结实健壮" value="结实健壮">结实健壮</option>
													<option label="身体健康" value="身体健康">身体健康</option>
													<option label="体质一般" value="体质一般">体质一般</option>
													<option label="体弱多病" value="体弱多病">体弱多病</option>
													<option label="身体残疾" value="身体残疾">身体残疾</option>

											</select></td>
										</tr>
										<tr>
											<td class="item l-title"><span>穿着风格：</span></td>
											<td>
												<dl >
													
														<label><input name="wearStyle" id="wearStyle" type="checkbox"
															value="休闲风格" >休闲风格</label>
													
													
														<label><input  name="wearStyle" id="wearStyle" type="checkbox"
															value="商务风格" >商务风格</label>
												
														<label><input  name="wearStyle" id="wearStyle" type="checkbox"
															value="运动风格" >运动风格</label>
													<br/>
													
														<label><input  name="wearStyle" id="wearStyle" type="checkbox"
															value="英伦风格" >英伦风格</label>
													
													
														<label><input  name="wearStyle" id="wearStyle" type="checkbox"
															value="非主流风格" >非主流风格</label>
													
													
														<label><input  name="wearStyle" id="wearStyle" type="checkbox"
															value="复古风格" >复古风格</label>
													<br/>
													
														<label><input  name="wearStyle" id="wearStyle" type="checkbox"
															value="混搭风格" >混搭风格</label>
													
												</dl>
											</td>
										</tr>
										<tr>
											<td>&nbsp;</td>
											<td><input type="submit" class="save" value="保存" />
												<input type="button" value="跳过此页" /></td>
										</tr>
									</table>




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