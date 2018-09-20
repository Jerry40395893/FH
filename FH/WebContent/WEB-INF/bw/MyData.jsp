<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
  <title>Search result | </title>

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
  <!-- Theme styles END -->
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
              <h3><input type="button" value="内心独白"></h3>
              <h3><input type="button" value="我的照片"></h3>
              <h3><input type="button" value="我的地图"></h3>
              <h3><input type="button" value="详细资料"></h3>
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
                          <h1>我的 <em>资料</em></h1>
                        </div>
                      </div>
                    </div>
                    <!-- BEGIN PRODUCT LIST -->
                  </div>
                  <h1>&nbsp;</h1>
                  
                  
                  
                  
                  
                  <table colspan = "3" width="450" cellpadding="0" cellspacing="0" class="f-table">
					<tr>
						<td class="item"><span style="color:#666;">昵称：</span></td>
						<!--如果手机没有验证-->
																				<td id="show_nickname" style="color:#666;"><input type="text">
							
																			</td>
						
					</tr>
					<tr>
						<td class="item"><span style="color:#666;">性别：</span></td>
						<td>
		   
                        
						</td>
					</tr>
					<tr>
						<td class="item"><span class="ico_stars">*</span><span style="color:#666;">出生日期：</span></td>
						<td>
							<span class="item-txt">
								1995-10-27
							</span><span class="item-hint">*若需修改请联系客服010-57835066</span>
						</td>
						
					</tr>
					<tr>
						<td class="item"> <span style="color:#666;">生肖：</span></td>
						<td>猪</td>
					</tr>
					<tr>
						<td class="item"> <span style="color:#666;">星座：</span></td>
						<td>天蝎座</td>
					</tr>
					<tr>
						<td class="item"><span class="ico_stars">*</span><span style="color:#666;">身高：</span></td>
						<td>
							<span class="item-txt2">
							<input type="text" name="height" id="height">
							</span>
							
						</td>
					</tr>
					<tr>
						<td class="item"><span class="ico_stars">*</span><span style="color:#666;">学历：</span></td>
						<td>
							<span class="item-txt2">
								<input type="text" name="doctor" id="doctor">
							</span>
							
						</td>
					</tr>
					<tr>
						<td class="item"><span class="ico_stars">*</span><span style="color:#666;">婚姻状况：</span></td>
						<td>
							<span class="item-txt2">
								<select name="married" id="married" onChange="select_changed();"  >
								<option value="0">--请选择--</option>
								<option label="未婚" value="1">未婚</option>
<option label="离异" value="2">离异</option>
<option label="丧偶" value="3">丧偶</option>

							</select>
							</span>
														
						</td>
					</tr>
					<tr>
						<td class="item"><a id="l_pos" name="l_pos"></a><span class="ico_stars">*</span><span >有无子女：</span></td>
						<td>
							<select name="children" id="children" onChange="select_changed();"  >
								<option value="0">--请选择--</option>
								<option label="无小孩" value="1">无小孩</option>
<option label="有小孩归自己" value="2">有小孩归自己</option>
<option label="有小孩归对方" value="3">有小孩归对方</option>

							</select>
						</td>
					</tr>
					<tr >
						<td class="item"><span class="ico_stars">*</span><span style="color:#666;">所在地区：</span></td>
						<td>
							<select name="work_location" id="profile_location" class="select1" onchange="build_second(this.value,'profile_sublocation',LOK);select_changed();" ></select>&nbsp;&nbsp;<select name="work_sublocation" id="profile_sublocation" class="select2" onChange="document.getElementById('change_area_div').style.display='';select_changed()" ></select>							<script type="text/javascript">init_location(35, 3502, 'profile');</script>
						</td>
					</tr>
					<tr>
						<td class="item"><span class="ico_stars">*</span><span >户口：</span></td>
						<td><select onchange="build_second(this.value,'home_sublocation',LOK);select_changed();"  class="select1" id="home_location" name="home_location"></select>&nbsp;&nbsp;<select onchange="select_changed()"  class="select2" id="home_sublocation" name="home_sublocation"></select></td>
						<!--<script type="text/javascript">build_select("home_location","home_sublocation",LSK,LOK,"");</script>-->
						<script type="text/javascript">init_location(0, 0, 'home');</script>
					</tr>
					<tr>
						<td class="item"><span class="ico_stars">*</span><span  >血型：</span></td>
						<td>
							<select name="bloodtype" id="bloodtype" onChange="select_changed();"  >
								<option value="0">--请选择--</option>
								<option label="A型" value="1">A型</option>
<option label="B型" value="2">B型</option>
<option label="O型" value="3">O型</option>
<option label="AB型" value="4">AB型</option>
<option label="其它" value="5">其它</option>
<option label="保密" value="6">保密</option>

							</select>
						</td>
					</tr>
					<tr>
						<td class="item"><span class="ico_stars">*</span><span>民族：</span></td>
						<td>
							<select name="nation" id="nation"  onChange="select_changed();"><option value="0">--请选择--</option><option label="汉族" value="1">汉族</option>
<option label="藏族" value="2">藏族</option>
<option label="朝鲜族" value="3">朝鲜族</option>
<option label="蒙古族" value="4">蒙古族</option>
<option label="回族" value="5">回族</option>
<option label="满族" value="6">满族</option>
<option label="维吾尔族" value="7">维吾尔族</option>
<option label="壮族" value="8">壮族</option>
<option label="彝族" value="9">彝族</option>
<option label="苗族" value="10">苗族</option>
<option label="其它民族" value="11">其它民族</option>
</select>
						</td>
					</tr>						
					<tr>
						<td class="item"><span class="ico_stars">*</span><span  style="color:#666;">月薪：</span></td>
						<td>
																																																					<input type="text" id="salary" name="salary">
																																																																			
						</td>
					</tr>
					<tr>
						<td class="item"><span class="ico_stars">*</span><span >居住情况：</span></td>
						<td>
							<select id="house" name="house" onChange="select_changed();" >
								<option value="0">--请选择--</option>
																	<option label="暂未购房" value="1">暂未购房</option>
<option label="需要时购置" value="8">需要时购置</option>
<option label="已购房（有贷款）" value="9">已购房（有贷款）</option>
<option label="已购房（无贷款）" value="10">已购房（无贷款）</option>
<option label="与人合租" value="3">与人合租</option>
<option label="独自租房" value="4">独自租房</option>
<option label="与父母同住" value="5">与父母同住</option>
<option label="住亲朋家" value="6">住亲朋家</option>
<option label="住单位房" value="7">住单位房</option>

															</select> 
						</td>
					</tr>
					<tr>
						<td class="item"><span class="ico_stars">*</span><span >购车情况：</span></td>
						<td>
							<select id="auto" name="auto" onChange="select_changed();">
								<option value="0">--请选择--</option>
																	<option label="暂未购车" value="1">暂未购车</option>
<option label="已购车（经济型）" value="3">已购车（经济型）</option>
<option label="已购车（中档型）" value="4">已购车（中档型）</option>
<option label="已购车（豪华型）" value="5">已购车（豪华型）</option>
<option label="单位用车" value="6">单位用车</option>
<option label="需要时购置" value="7">需要时购置</option>

															</select>
						</td>
					</tr>					
				</table>
                
                
                
                <h1>联系信息</h1>
				<h2>以下资料我们将为您保密，不会显示在您的个人资料页面上。</h2>
				<table width="450" cellpadding="0" cellspacing="0">
					<tr>
						<td class="item" width="70"><span >真实姓名：</span></td>
						<td width="360">
															<input type="text" name="true_name" class="text" onChange="select_changed()"/>
													</td>
					</tr>
					<tr>
						<td class="item"><span >身份证号：</span></td>
						<td>
															<input type="text" class="text" id="id_card_id"  name="id_card" value="" onChange="select_changed()" onblur="check_validate('idcard', this.value)" />
													</td>
					</tr>
					<tr>
						<td class="item" style="color:#666;">邮箱：</td>
						<td><a href="validateemail/certificate.php?menu=5">填写邮箱地址并验证>></a></td>
					</tr>
					<tr>
						<td class="item"><span >QQ：</span></td>
						<td><input type="text" class="text" id="qq" name="qq"  value="" onChange="select_changed()" onblur="check_validate('qq', this.value)" /></td>
					</tr>
					<tr>
						<td class="item"><span   >MSN：</span></td>
						<td><input type="text" class="text" id="msn" name="msn"  value="" onChange="select_changed()" onblur="check_validate('msn', this.value)" /></td>
					</tr>
					<tr>
						<td class="item"><span  >通讯地址：</span></td>
						<td><input type="text" class="text" name="address" value="" onChange="select_changed()"/></td>
					</tr>
					<tr>
						<td class="item"><span  >邮政编码：</span></td>
						<td><input type="text"  class="text" name="postcode" value="" onChange="select_changed()" /></td>
					</tr>
					
					<tr style='display:none;'>
					  <td colspan="2">&nbsp;</td>
				    </tr>
					<tr style='display:none;'>
					  <td colspan="2" class="item" style="color:#999898; line-height:1.6; width:439px; ">
					  </td>
				   </tr>
					<tr style='display:none;'>
					  <td class="item"></td>
					  <input type="hidden" name="share" value="1" >
					 <!-- <td class="item" style="width:200px; "><input type="checkbox" name="share" value="1"  style="vertical-align:middle"/> 同意分享</td>-->
				   </tr>
				   
					<tr>
						<td>&nbsp;</td>
						<td><input type="submit" class="save" value="保存并继续" onmousedown="send_jy_pv2('editprofile|save_base|m|182580144');" /><input type="button" value="跳过此页" class="skip" onClick="skip()" onmousedown="send_jy_pv2('editprofile|skip_base|m|182580144');" /></td>
					</tr>
				</table>
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