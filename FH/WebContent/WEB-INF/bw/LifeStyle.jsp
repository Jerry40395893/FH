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
    
    	 var smoke="${life.smoke}";
    	 $("select[name='smoke']").find("option[value='"+smoke+"']").attr("selected",true);
    	
      	 var drink="${life.drink}";
    	 $("select[name='drink']").find("option[value='"+drink+"']").attr("selected",true);
    	
    	 var exercise="${life.exercise}";
    	 $("select[name='exercise']").find("option[value='"+exercise+"']").attr("selected",true);
    	 
    	 var dietary="${life.dietary}";
    	 $("select[name='dietary']").find("option[value='"+dietary+"']").attr("selected",true);
    	 
    	 var shopping="${life.shopping}";
    	 $("select[name='shopping']").find("option[value='"+shopping+"']").attr("selected",true);
    	 
    	 var church="${life.church}";
    	 $("select[name='church']").find("option[value='"+church+"']").attr("selected",true);
    	 
    	 var rest="${life.rest}";
    	 $("select[name='rest']").find("option[value='"+rest+"']").attr("selected",true);
    	 
    	 var friend="${life.friend}";
    	 $("select[name='friend']").find("option[value='"+friend+"']").attr("selected",true);
    	 
    	 var maxcost="${life.maxcost}";
    	 $("select[name='maxcost']").find("option[value='"+maxcost+"']").attr("selected",true);
    	 
    	 var homework="${life.homework}";
    	 $("select[name='homework']").find("option[value='"+homework+"']").attr("selected",true);
    	 
    	 var dohomework="${life.dohomework}";
    	 $("select[name='dohomework']").find("option[value='"+dohomework+"']").attr("selected",true);
    	 
    	 var likeLevel="${life.likeLevel}";
    	 $("select[name='likeLevel']").find("option[value='"+likeLevel+"']").attr("selected",true);
    	 
    	 var aboutPet="${life.aboutPet}";
    	 $("select[name='aboutPet']").find("option[value='"+aboutPet+"']").attr("selected",true);
    	
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
                          <h1>生活<em>方式</em></h1>
                        </div>
                      </div>
                    </div>
                    <!-- BEGIN PRODUCT LIST -->
                  </div>
                  <h1>&nbsp;</h1>
                  
                  
                  <form id="form_base" name="form_base" action="<%=basePath%>user/qx/lifeStyle.action" method="post">

									<table width="480" cellpadding="0" cellspacing="0">
										<tr>
											<td class="item m_select105"><span class="ico_stars">*</span><span
												style="color: #666;">吸烟：</span></td>
											<td><select id="smoke" name="smoke" style="color: #666;">

													<option value="无">--请选择--</option>
													<option label="不吸，很反感吸烟" value="不吸，很反感吸烟">不吸，很反感吸烟</option>
													<option label="不吸，但不反感" value="不吸，但不反感">不吸，但不反感</option>
													<option label="社交时偶尔吸" value="社交时偶尔吸">社交时偶尔吸</option>
													<option label="每周吸几次" value="每周吸几次">每周吸几次</option>
													<option label="每天都吸" value="每天都吸">每天都吸</option>
													<option label="有烟瘾" value="有烟瘾">有烟瘾</option>
											</select></td>
										</tr>
										<tr>
											<td class="item m_select105"><span class="ico_stars">*</span><span
												style="color: #666;">饮酒：</span></td>
											<td><select id="drink" name="drink" style="color: #666;"><option
														value="0">--请选择--</option>
													<option label="不喝" value="不喝">不喝</option>
													<option label="社交需要时喝" value="社交需要时喝">社交需要时喝</option>
													<option label="有兴致时喝" value="有兴致时喝">有兴致时喝</option>
													<option label="每天都离不开酒" value="每天都离不开酒">每天都离不开酒</option>
											</select></td>
										</tr>
										<tr>
											<td class="item m_select105"><span class="ico_stars">*</span><span
												style="color: #666;">锻炼习惯：</span></td>
											<td><select id="exercise" name="exercise"
												style="color: #666;"><option value="无">--请选择--</option>
													<option label="每天锻炼" value="每天锻炼">每天锻炼</option>
													<option label="每周至少一次" value="每周至少一次">每周至少一次</option>
													<option label="每月几次" value="每月几次">每月几次</option>
													<option label="没时间锻炼" value="没时间锻炼">没时间锻炼</option>
													<option label="集中时间锻炼" value="集中时间锻炼">集中时间锻炼</option>
													<option label="不喜欢锻炼" value="不喜欢锻炼">不喜欢锻炼</option>
											</select></td>
										</tr>
										<tr>
											<td class="item m_select105"><span style="color: #666;">饮食习惯：</span></td>
											<td><select id="dietary" name="dietary"
												style="color: #666;" onchange="select_changed()">
													<option value="无">--请选择--</option>
													<option label="无特殊习惯" value="无特殊习惯">无特殊习惯</option>
													<option label="口味清淡" value="口味清淡">口味清淡</option>
													<option label="无辣不欢" value="无辣不欢">无辣不欢</option>
													<option label="口味偏重" value="口味偏重">口味偏重</option>
													<option label="无肉不欢" value="无肉不欢">无肉不欢</option>
													<option label="习惯吃素" value="习惯吃素">习惯吃素</option>

											</select></td>
										</tr>
										<tr>
											<td class="item m_select105"><span style="color: #666;">逛街购物：</span></td>
											<td><select id="shopping" name="shopping"
												style="color: #666;">
													<option value="无">--请选择--</option>
													<option label="从来不去" value="从来不去">从来不去</option>
													<option label="没办法才去" value="没办法才去">没办法才去</option>
													<option label="偶尔逛逛" value="偶尔逛逛">偶尔逛逛</option>
													<option label="经常逛街" value="经常逛街">经常逛街</option>
													<option label="非常爱逛街" value="非常爱逛街">非常爱逛街</option>
													<option label="不逛就难受" value="不逛就难受">不逛就难受</option>

											</select></td>
										</tr>
										<tr>
											<td class="item m_select105"><span class="ico_stars">*</span><span
												style="color: #666;">宗教信仰：</span></td>
											<td><select id="church" name="church"
												style="color: #666;"><option value="无宗教信仰">--请选择--</option>
													<option label="无宗教信仰" value="无宗教信仰">无宗教信仰</option>
													<option label="大乘佛教显宗" value="大乘佛教显宗">大乘佛教显宗</option>
													<option label="大乘佛教密宗" value="大乘佛教密宗">大乘佛教密宗</option>
													<option label="大乘佛教净宗" value="大乘佛教净宗">大乘佛教净宗</option>
													<option label="小乘佛教" value="小乘佛教">小乘佛教</option>
													<option label="道教" value="道教">道教</option>
													<option label="儒教" value="儒教">儒教</option>
													<option label="基督教天主教派" value="基督教天主教派">基督教天主教派</option>
													<option label="基督教东正教派" value="基督教东正教派">基督教东正教派</option>
													<option label="基督教新教派" value="基督教新教派">基督教新教派</option>
													<option label="犹太教" value="犹太教">犹太教</option>
													<option label="伊斯兰教什叶派" value="伊斯兰教什叶派">伊斯兰教什叶派</option>
													<option label="伊斯兰教逊尼派" value="伊斯兰教逊尼派">伊斯兰教逊尼派</option>
													<option label="印度教" value="印度教">印度教</option>
													<option label="神道教" value="神道教">神道教</option>
													<option label="萨满教" value="萨满教">萨满教</option>
													<option label="其它宗教信仰" value="其它宗教信仰">其它宗教信仰</option>
											</select></td>
										</tr>
										<tr>
											<td class="item m_select105"><span class="ico_stars">*</span><span
												style="color: #666;">作息时间：</span></td>
											<td><select id="rest" name="rest"
												onChange="select_changed()" style="color: #666;"}>>
													<option value="0">--请选择--</option>
													<option label="早睡早起很规律" value="早睡早起很规律">早睡早起很规律</option>
													<option label="经常夜猫子" value="经常夜猫子">经常夜猫子</option>
													<option label="总是早起鸟" value="总是早起鸟">总是早起鸟</option>
													<option label="偶尔懒散一下" value="偶尔懒散一下">偶尔懒散一下</option>
													<option label="没有规律" value="没有规律">没有规律</option>
											</select></td>
										</tr>
										<tr>
											<td class="item m_select105"><span style="color: #666;">交际圈子：</span></td>
											<td><select id="friend" name="friend"
												style="color: #666;">
													<option value="0">--请选择--</option>
													<option label="同学朋友都逐渐疏远了" value="同学朋友都逐渐疏远了">同学朋友都逐渐疏远了</option>
													<option label="平时通过互联网和电话联系" value="平时通过互联网和电话联系">平时通过互联网和电话联系</option>
													<option label="每年参加几次聚会" value="每年参加几次聚会">每年参加几次聚会</option>
													<option label="偶尔主动约会朋友" value="偶尔主动约会朋友">偶尔主动约会朋友</option>
													<option label="经常和朋友见面" value="经常和朋友见面">经常和朋友见面</option>
													<option label="朋友越来越多" value="朋友越来越多">朋友越来越多</option>
													<option label="每天呼朋唤友" value="每天呼朋唤友">每天呼朋唤友</option>

											</select></td>
										</tr>
										<tr>
											<td class="item m_select105"><span style="color: #666;">最大消费：</span></td>
											<td><select id="maxcost" name="maxcost"
												style="color: #666;">
													<option value="0">--请选择--</option>
													<option label="享受美食" value="享受美食">享受美食</option>
													<option label="购置服装" value="购置服装">购置服装</option>
													<option label="购置包包" value="购置包包">购置包包</option>
													<option label="购置美鞋" value="购置美鞋">购置美鞋</option>
													<option label="美容护肤" value="美容护肤">美容护肤</option>
													<option label="健身锻炼" value="健身锻炼">健身锻炼</option>
													<option label="休闲娱乐" value="休闲娱乐">休闲娱乐</option>
													<option label="旅游度假" value="旅游度假">旅游度假</option>
													<option label="出行交通" value="出行交通">出行交通</option>
													<option label="电子产品" value="电子产品">电子产品</option>
													<option label="书本杂志" value="书本杂志">书本杂志</option>
													<option label="教育培训" value="教育培训">教育培训</option>
													<option label="社交交友" value="社交交友">社交交友</option>
													<option label="文化活动" value="文化活动">文化活动</option>
													<option label="电动游戏" value="电动游戏">电动游戏</option>
													<option label="其他" value="其他">其他</option>

											</select></td>
										</tr>
									</table>
									<h3 class="ws_title">家务</h3>
									
									<table>
										<tr>
											<td class="item m_select105"><span style="color: #666;">家务水平等级：</span></td>
											<td><select name="homework" id="homework"
												style="color: #666;">
													<option selected="selected" value="无">--请选择--</option>
													<option label="精通" value="精通">精通</option>
													<option label="会一些" value="会一些">会一些</option>
													<option label="不会" value="不会">不会</option>

											</select></td>
										</tr>
										<tr>
											<td class="item m_select105"><span style="color: #666;">家务分配情况：</span></td>
											<td><select name="dohomework" id="dohomework"
												style="color: #666;">
													<option selected="selected" value="0">--请选择--</option>
													<option label="家务全部都我做" value="家务全部都我做">家务全部都我做</option>
													<option label="夫妻平均分配" value="夫妻平均分配">夫妻平均分配</option>
													<option label="谁有时间谁做" value="谁有时间谁做">谁有时间谁做</option>
													<option label="夫妻各自承担自己擅长的家务" value="夫妻各自承担自己擅长的家务">夫妻各自承担自己擅长的家务</option>

											</select></td>
										</tr>
									</table>
									<h3 class="ws_title">宠物</h3>
									<table>
										<tr>
											<td class="item m_select105"><span style="color: #666;">宠物喜欢程度：</span></td>
											<td><select name="likeLevel" id="likeLevel"
												style="color: #666;">
													<option selected="selected" value="无">--请选择--</option>
													<option label="很喜欢" value="很喜欢">很喜欢</option>
													<option label="还可以" value="还可以">还可以</option>
													<option label="不喜欢" value="不喜欢">不喜欢</option>

											</select></td>
										</tr>
										<tr>
											<td class="item m_select105"><span style="color: #666;">关于宠物：</span></td>
											<td><select name="aboutPet" id="aboutPet"
												style="color: #666;">
													<option selected="selected" value="0">--请选择--</option>
													<option label="我没有养宠物，也不接受对方养" value="我没有养宠物，也不接受对方养">我没有养宠物，也不接受对方养</option>
													<option label="暂时没有养宠物，如果你喜欢我们一起养"
														value="暂时没有养宠物，如果你喜欢我们一起养">暂时没有养宠物，如果你喜欢我们一起养</option>
													<option label="喜欢宠物，家里有养小狗" value="喜欢宠物，家里有养小狗">喜欢宠物，家里有养小狗</option>
													<option label="喜欢宠物，家里有养猫咪" value="喜欢宠物，家里有养猫咪">喜欢宠物，家里有养猫咪</option>
													<option label="喜欢宠物，我养的宠物很特别，好奇的话，来信问问我吧"
														value="喜欢宠物，我养的宠物很特别，好奇的话，来信问问我吧">喜欢宠物，我养的宠物很特别，好奇的话，来信问问我吧</option>

											</select></td>
										</tr>
										<tr>
											<td>&nbsp;</td>
											<td><input type="submit" class="save" value="保存" /><input
												type="button" value="跳过此页" /></td>
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