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
                          <h1>工作<em>学习</em></h1>
                        </div>
                      </div>
                    </div>
                    <!-- BEGIN PRODUCT LIST -->
                  </div>
                  <h1>&nbsp;</h1>
                  
                  
                  <form id="form_base" name="form_base" action="profile_postdo_new.php?action=economy" method="post" onsubmit="return cal();">
			
			
			
			
			<table width="467" cellpadding="0" cellspacing="0">
					<tr>
						<td class="item item105"><span class="ico_stars">*</span><span >职业职位：</span></td>
						<td>
							<select id="job" name="job" onChange="select_changed()" class="om_select195" >
								<option value="0">--请选择--</option>
								<option label="在校学生" value="1">在校学生</option>
<option label="计算机/互联网/IT" value="2">计算机/互联网/IT</option>
<option label="电子/半导体/仪表仪器" value="3">电子/半导体/仪表仪器</option>
<option label="通信技术" value="4">通信技术</option>
<option label="销售" value="5">销售</option>
<option label="市场拓展" value="6">市场拓展</option>
<option label="公关/商务" value="7">公关/商务</option>
<option label="采购/贸易" value="8">采购/贸易</option>
<option label="客户服务/技术支持" value="9">客户服务/技术支持</option>
<option label="人力资源/行政/后勤" value="10">人力资源/行政/后勤</option>
<option label="高级管理" value="11">高级管理</option>
<option label="生产/加工/制造" value="12">生产/加工/制造</option>
<option label="质控/安检" value="13">质控/安检</option>
<option label="工程机械" value="14">工程机械</option>
<option label="技工" value="15">技工</option>
<option label="财会/审计/统计" value="16">财会/审计/统计</option>
<option label="金融/证券/投资/保险" value="17">金融/证券/投资/保险</option>
<option label="房地产/装修/物业" value="18">房地产/装修/物业</option>
<option label="仓储/物流" value="19">仓储/物流</option>
<option label="交通/运输" value="43">交通/运输</option>
<option label="普通劳动力/家政服务" value="20">普通劳动力/家政服务</option>
<option label="普通服务行业" value="21">普通服务行业</option>
<option label="航空服务业" value="22">航空服务业</option>
<option label="教育/培训" value="23">教育/培训</option>
<option label="咨询/顾问" value="24">咨询/顾问</option>
<option label="学术/科研" value="25">学术/科研</option>
<option label="法律" value="26">法律</option>
<option label="设计/创意" value="27">设计/创意</option>
<option label="文学/传媒/影视" value="28">文学/传媒/影视</option>
<option label="餐饮/旅游" value="29">餐饮/旅游</option>
<option label="化工" value="30">化工</option>
<option label="能源/地质勘查" value="31">能源/地质勘查</option>
<option label="医疗/护理" value="32">医疗/护理</option>
<option label="保健/美容" value="33">保健/美容</option>
<option label="生物/制药/医疗器械" value="34">生物/制药/医疗器械</option>
<option label="体育工作者" value="35">体育工作者</option>
<option label="翻译" value="36">翻译</option>
<option label="公务员/国家干部" value="37">公务员/国家干部</option>
<option label="私营业主" value="38">私营业主</option>
<option label="农/林/牧/渔业" value="39">农/林/牧/渔业</option>
<option label="自由职业者" value="41">自由职业者</option>
<option label="其他" value="42">其他</option>

							</select>
						</td>
					</tr>
					<tr>
						<td class="item item105"><span class="ico_stars">*</span><span >公司行业：</span></td>
						<td><select id="rank_condition" name="rank_condition" onChange="select_changed()" class="om_select195" ><option value="0">--请选择--</option><option label="计算机（软件、硬件、服务）" value="1">计算机（软件、硬件、服务）</option>
<option label="通信、电信" value="2">通信、电信</option>
<option label="互联网" value="3">互联网</option>
<option label="电子（半导体、仪器、自动化）" value="4">电子（半导体、仪器、自动化）</option>
<option label="金融服务（会计/审计，银行，保险）" value="5">金融服务（会计/审计，银行，保险）</option>
<option label="金融/投资/证券" value="6">金融/投资/证券</option>
<option label="贸易（进出口,批发,零售）" value="7">贸易（进出口,批发,零售）</option>
<option label="快速消费品（食品,饮料,化妆品）" value="8">快速消费品（食品,饮料,化妆品）</option>
<option label="服装/纺织/皮革" value="9">服装/纺织/皮革</option>
<option label="家具/家电/工艺品/玩具" value="10">家具/家电/工艺品/玩具</option>
<option label="办公用品及设备" value="11">办公用品及设备</option>
<option label="医疗，医药" value="12">医疗，医药</option>
<option label="广告/公关/市场推广/会展" value="13">广告/公关/市场推广/会展</option>
<option label="影视/媒体/出版/印刷/包装" value="14">影视/媒体/出版/印刷/包装</option>
<option label="房地产相关" value="15">房地产相关</option>
<option label="家居/室内设计/装潢" value="16">家居/室内设计/装潢</option>
<option label="服务（咨询，人力资源）" value="17">服务（咨询，人力资源）</option>
<option label="法律相关" value="18">法律相关</option>
<option label="教育/培训" value="19">教育/培训</option>
<option label="学术/科研" value="20">学术/科研</option>
<option label="酒店/餐饮业" value="21">酒店/餐饮业</option>
<option label="旅游" value="22">旅游</option>
<option label="娱乐/休闲/体育" value="23">娱乐/休闲/体育</option>
<option label="美容/保健" value="24">美容/保健</option>
<option label="交通（运输、物流、航天、航空）" value="25">交通（运输、物流、航天、航空）</option>
<option label="汽车及零配件" value="26">汽车及零配件</option>
<option label="农业" value="27">农业</option>
<option label="政府/非盈利机构" value="28">政府/非盈利机构</option>
<option label="其他行业" value="29">其他行业</option>
</select></td>
					</tr>
					<tr>
						<td class="item item105"><span class="ico_stars">*</span><span >公司类型：</span></td>
						<td><select id="company" name="company" onChange="select_changed()" class="om_select195"  ><option value="0">--请选择--</option><option label="政府机关" value="1">政府机关</option>
<option label="事业单位 " value="2">事业单位 </option>
<option label="外企企业 " value="3">外企企业 </option>
<option label="世界500强 " value="4">世界500强 </option>
<option label="上市公司 " value="5">上市公司 </option>
<option label="国有企业 " value="6">国有企业 </option>
<option label="私营企业 " value="7">私营企业 </option>
<option label="自有公司" value="8">自有公司</option>
</select></td>
					</tr>
					<tr>
						<td class="item item105"><span class="ico_stars">*</span><span >福利待遇：</span></td>
						<td><select id="welfare" name="welfare" onChange="select_changed()" class="om_select195" ><option value="0">--请选择--</option><option label="福利优越" value="10">福利优越</option>
<option label="奖金丰厚" value="20">奖金丰厚</option>
<option label="事业稳定上升" value="30">事业稳定上升</option>
<option label="事业刚起步" value="40">事业刚起步</option>
<option label="投资高回报" value="50">投资高回报</option>
</select></td>
					</tr>
					<tr>
						<td class="item item105"><span class="ico_stars">*</span><span >工作状态：</span></td>
						<td><select id="rank_desire" name="rank_desire" onChange="select_changed()" class="om_select195" ><option value="0">--请选择--</option><option label="轻松稳定" value="1">轻松稳定</option>
<option label="朝九晚五" value="2">朝九晚五</option>
<option label="偶尔加班" value="3">偶尔加班</option>
<option label="经常加班" value="4">经常加班</option>
<option label="偶尔出差" value="5">偶尔出差</option>
<option label="经常出差" value="6">经常出差</option>
<option label="经常有应酬" value="7">经常有应酬</option>
<option label="工作时间自由" value="8">工作时间自由</option>
</select></td>
					</tr>
					<tr>
						<td class="item item105"><span >调动工作可能性：</span></td>
						<td>
							<select id="transferred" name="work_change" onChange="select_changed()" class="om_select195" >
								<option value="0">--请选择--</option>
								<option label="完全无可能" value="1">完全无可能</option>
<option label="未来几年几乎没可能" value="2">未来几年几乎没可能</option>
<option label="未来几年有可能" value="3">未来几年有可能</option>
<option label="最近即将调动" value="4">最近即将调动</option>

							</select>
						</td>
					</tr>
					<tr>
						<td class="item item105"><span >海外工作可能性：</span></td>
						<td>
							<select id="overseas-work" name="overseas_work" onChange="select_changed()" class="om_select195" >
								<option value="0">--请选择--</option>
								<option label="完全无可能" value="1">完全无可能</option>
<option label="未来几年几乎没可能" value="2">未来几年几乎没可能</option>
<option label="未来几年有可能" value="3">未来几年有可能</option>
<option label="最近即将调动" value="4">最近即将调动</option>

							</select>
						</td>
					</tr>
					<tr>
						<td class="item item105"><span >事业与家庭：</span></td>
						<td>
							<select id="work-family" name="workorfamily" onChange="select_changed()" class="om_select195"  >
								<option value="0">--请选择--</option>
								<option label="一切以家庭为重" value="1">一切以家庭为重</option>
<option label="会为家庭牺牲事业" value="2">会为家庭牺牲事业</option>
<option label="尽量均衡事业与家庭" value="3">尽量均衡事业与家庭</option>
<option label="会为事业牺牲家庭利益" value="4">会为事业牺牲家庭利益</option>
<option label="事业第一" value="5">事业第一</option>

							</select>
						</td>
					</tr>
				</table>
				<h1 style="margin-top:10px;">学习</h1>
				<table style="margin-bottom:200px;" cellpadding="0" cellspacing="0">
					<tr>
						<td class="item item105"><span class="ico_stars">*</span><span >毕业学校：</span></td>
						<td><select   id="uni_location" name="uni_location" onChange="select_changed();change_school(this.value, 'university');" style="width:100px" class="om_select195"><option value="0">--保密--</option><option label="北京" value="11">北京</option>
<option label="天津" value="12">天津</option>
<option label="河北" value="13">河北</option>
<option label="山西" value="14">山西</option>
<option label="内蒙古" value="15">内蒙古</option>
<option label="辽宁" value="21">辽宁</option>
<option label="吉林" value="22">吉林</option>
<option label="黑龙江" value="23">黑龙江</option>
<option label="上海" value="31">上海</option>
<option label="江苏" value="32">江苏</option>
<option label="浙江" value="33">浙江</option>
<option label="安徽" value="34">安徽</option>
<option label="福建" value="35">福建</option>
<option label="江西" value="36">江西</option>
<option label="山东" value="37">山东</option>
<option label="河南" value="41">河南</option>
<option label="湖北" value="42">湖北</option>
<option label="湖南" value="43">湖南</option>
<option label="广东" value="44">广东</option>
<option label="广西" value="45">广西</option>
<option label="海南" value="46">海南</option>
<option label="重庆" value="50">重庆</option>
<option label="四川" value="51">四川</option>
<option label="贵州" value="52">贵州</option>
<option label="云南" value="53">云南</option>
<option label="西藏" value="54">西藏</option>
<option label="陕西" value="61">陕西</option>
<option label="甘肃" value="62">甘肃</option>
<option label="青海" value="63">青海</option>
<option label="宁夏" value="64">宁夏</option>
<option label="新疆" value="65">新疆</option>
<option label="台湾" value="71">台湾</option>
<option label="香港" value="81">香港</option>
<option label="澳门" value="82">澳门</option>
<option label="钓鱼岛" value="83">钓鱼岛</option>
<option label="美国" value="98">美国</option>
<option label="其他国家" value="99">其他国家</option>
</select>&nbsp;&nbsp;<select   id="university" name="university" onChange="select_changed()" style="width:200px;"><option value="0">--请选择--</option></select></td>
						<script type="text/javascript">
						change_school(0,'university');
						my_getbyid('university').value = '0';
						</script>	
					</tr>
					<tr>
						<td class="item item105"><span class="ico_stars">*</span><span >专业类型：</span></td>
						<td><select id="speciality" name="speciality" onChange="select_changed()" class="om_select195"  ><option value="0">--请选择--</option><option label="计算机类" value="1">计算机类</option>
<option label="电子信息类" value="2">电子信息类</option>
<option label="中文类" value="3">中文类</option>
<option label="外文类" value="4">外文类</option>
<option label="经济学类" value="5">经济学类</option>
<option label="金融学类" value="6">金融学类</option>
<option label="管理类" value="7">管理类</option>
<option label="市场营销类" value="8">市场营销类</option>
<option label="法学类" value="9">法学类</option>
<option label="教育类" value="10">教育类</option>
<option label="社会学类" value="11">社会学类</option>
<option label="历史类" value="12">历史类</option>
<option label="哲学类" value="13">哲学类</option>
<option label="艺术类" value="14">艺术类</option>
<option label="图书馆类" value="15">图书馆类</option>
<option label="情报档案类" value="16">情报档案类</option>
<option label="政治类" value="17">政治类</option>
<option label="数学类" value="18">数学类</option>
<option label="统计类" value="19">统计类</option>
<option label="物理类" value="20">物理类</option>
<option label="化学类" value="21">化学类</option>
<option label="生物类" value="22">生物类</option>
<option label="食品类" value="23">食品类</option>
<option label="医学类" value="24">医学类</option>
<option label="环境类" value="25">环境类</option>
<option label="地理类" value="26">地理类</option>
<option label="建筑类" value="27">建筑类</option>
<option label="测绘类" value="28">测绘类</option>
<option label="电气类" value="29">电气类</option>
<option label="机械类" value="30">机械类</option>
</select></td>
					</tr>
					<tr>
						<td class="item item105" valign="top"><span >语言能力：</span></td>
						<td id="em_language_edit" >
							<ul >
																	<li><label for="language_1"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_1" value="1" />&nbsp;中文(普通话)</label></li> 
																	<li><label for="language_2"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_2" value="2" />&nbsp;中文(广东话)</label></li> 
																	<li><label for="language_3"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_3" value="3" />&nbsp;英语</label></li> 
																	<li><label for="language_4"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_4" value="4" />&nbsp;法语</label></li> 
																	<li><label for="language_5"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_5" value="5" />&nbsp;日语</label></li> 
																	<li><label for="language_6"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_6" value="6" />&nbsp;韩语</label></li> 
																	<li><label for="language_7"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_7" value="7" />&nbsp;德语</label></li> 
																	<li><label for="language_8"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_8" value="8" />&nbsp;意大利语</label></li> 
																	<li><label for="language_9"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_9" value="9" />&nbsp;俄语</label></li> 
																	<li><label for="language_10"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_10" value="10" />&nbsp;芬兰语</label></li> 
																	<li><label for="language_11"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_11" value="11" />&nbsp;荷兰语</label></li> 
																	<li><label for="language_12"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_12" value="12" />&nbsp;葡萄牙语</label></li> 
																	<li><label for="language_13"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_13" value="13" />&nbsp;西班牙语</label></li> 
																	<li><label for="language_14"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_14" value="14" />&nbsp;越南语</label></li> 
																	<li><label for="language_15"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_15" value="15" />&nbsp;阿拉伯语</label></li> 
																	<li><label for="language_16"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_16" value="16" />&nbsp;泰国语</label></li> 
																	<li><label for="language_17"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_17" value="17" />&nbsp;印度尼希亚语</label></li> 
																	<li><label for="language_18"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_18" value="18" />&nbsp;印度语</label></li> 
																	<li><label for="language_19"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_19" value="19" />&nbsp;丹麦语</label></li> 
																	<li><label for="language_20"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_20" value="20" />&nbsp;希腊语</label></li> 
																	<li><label for="language_21"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_21" value="21" />&nbsp;伊朗语</label></li> 
																	<li><label for="language_22"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_22" value="22" />&nbsp;匈牙利语</label></li> 
																	<li><label for="language_23"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_23" value="23" />&nbsp;土耳其语</label></li> 
																	<li><label for="language_24"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_24" value="24" />&nbsp;挪威语</label></li> 
																	<li><label for="language_25"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_25" value="25" />&nbsp;捷克语</label></li> 
																	<li><label for="language_26"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_26" value="26" />&nbsp;波兰语</label></li> 
																	<li><label for="language_27"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_27" value="27" />&nbsp;瑞典语</label></li> 
																	<li><label for="language_28"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_28" value="28" />&nbsp;缅甸语</label></li> 
																	<li><label for="language_29"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_29" value="29" />&nbsp;罗马尼亚语</label></li> 
																	<li><label for="language_30"  ><input 
									onclick="check_count(this, 5)" type="checkbox" 
									name="language[]" id="language_30" value="30" />&nbsp;其它</label></li> 
															</ul>
						</td>
					</tr>
					<tr><td>&nbsp;</td><td><input type="submit" class="save" value="保存并继续" onmousedown="send_jy_pv2('editprofile|save_work|m|182580144');" /><input type="button" value="跳过此页" class="skip" onClick="skip();" onmousedown="send_jy_pv2('editprofile|skip_work|m|182580144');" /></td></tr>
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