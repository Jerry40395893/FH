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
                          <h1>工作<em>学习</em></h1>
                        </div>
                      </div>
                    </div>
                    <!-- BEGIN PRODUCT LIST -->
                  </div>
                  <h1>&nbsp;</h1>
                  
                  
                  <form id="form_base" name="form_base" action="<%=basePath%>user/qx/Work.action" method="post" >
			
			
			
			
			<table width="467" cellpadding="0" cellspacing="0">
					<tr>
						<td class="item item105"><span class="ico_stars">*</span><span >职业职位：</span></td>
						<td>
							<select id="postion" name="postion" >
								<option value="0">--请选择--</option>
								<option label="在校学生" value="在校学生">在校学生</option>
<option label="计算机/互联网/IT" value="计算机/互联网/IT">计算机/互联网/IT</option>
<option label="电子/半导体/仪表仪器" value="电子/半导体/仪表仪器">电子/半导体/仪表仪器</option>
<option label="通信技术" value="通信技术">通信技术</option>
<option label="销售" value="销售">销售</option>
<option label="市场拓展" value="市场拓展">市场拓展</option>
<option label="公关/商务" value="公关/商务">公关/商务</option>
<option label="采购/贸易" value="采购/贸易">采购/贸易</option>
<option label="客户服务/技术支持" value="客户服务/技术支持">客户服务/技术支持</option>
<option label="人力资源/行政/后勤" value="人力资源/行政/后勤">人力资源/行政/后勤</option>
<option label="高级管理" value="高级管理">高级管理</option>
<option label="生产/加工/制造" value="生产/加工/制造">生产/加工/制造</option>
<option label="质控/安检" value="质控/安检">质控/安检</option>
<option label="工程机械" value="工程机械">工程机械</option>
<option label="技工" value="技工">技工</option>
<option label="财会/审计/统计" value="财会/审计/统计">财会/审计/统计</option>
<option label="金融/证券/投资/保险" value="金融/证券/投资/保险">金融/证券/投资/保险</option>
<option label="房地产/装修/物业" value="房地产/装修/物业">房地产/装修/物业</option>
<option label="仓储/物流" value="仓储/物流">仓储/物流</option>
<option label="交通/运输" value="交通/运输">交通/运输</option>
<option label="普通劳动力/家政服务" value="普通劳动力/家政服务">普通劳动力/家政服务</option>
<option label="普通服务行业" value="普通服务行业">普通服务行业</option>
<option label="航空服务业" value="航空服务业">航空服务业</option>
<option label="教育/培训" value="教育/培训">教育/培训</option>
<option label="咨询/顾问" value="咨询/顾问">咨询/顾问</option>
<option label="学术/科研" value="学术/科研">学术/科研</option>
<option label="法律" value="法律">法律</option>
<option label="设计/创意" value="设计/创意">设计/创意</option>
<option label="文学/传媒/影视" value="文学/传媒/影视">文学/传媒/影视</option>
<option label="餐饮/旅游" value="餐饮/旅游">餐饮/旅游</option>
<option label="化工" value="化工">化工</option>
<option label="能源/地质勘查" value="能源/地质勘查">能源/地质勘查</option>
<option label="医疗/护理" value="医疗/护理">医疗/护理</option>
<option label="保健/美容" value="保健/美容">保健/美容</option>
<option label="生物/制药/医疗器械" value="生物/制药/医疗器械">生物/制药/医疗器械</option>
<option label="体育工作者" value="体育工作者">体育工作者</option>
<option label="翻译" value="翻译">翻译</option>
<option label="公务员/国家干部" value="公务员/国家干部">公务员/国家干部</option>
<option label="私营业主" value="私营业主">私营业主</option>
<option label="农/林/牧/渔业" value="农/林/牧/渔业">农/林/牧/渔业</option>
<option label="自由职业者" value="自由职业者">自由职业者</option>
<option label="其他" value="其他">其他</option>

							</select>
						</td>
					</tr>
					<tr>
						<td class="item item105"><span class="ico_stars">*</span><span >公司行业：</span></td>
						<td><select id="industry" name="industry"  >
						<option value="0">--请选择--</option><option label="计算机（软件、硬件、服务）" value="计算机（软件、硬件、服务）">计算机（软件、硬件、服务）</option>
<option label="通信、电信" value="通信、电信">通信、电信</option>
<option label="互联网" value="互联网">互联网</option>
<option label="电子（半导体、仪器、自动化）" value="电子（半导体、仪器、自动化）">电子（半导体、仪器、自动化）</option>
<option label="金融服务（会计/审计，银行，保险）" value="金融服务（会计/审计，银行，保险）">金融服务（会计/审计，银行，保险）</option>
<option label="金融/投资/证券" value="金融/投资/证券">金融/投资/证券</option>
<option label="贸易（进出口,批发,零售）" value="贸易（进出口,批发,零售）">贸易（进出口,批发,零售）</option>
<option label="快速消费品（食品,饮料,化妆品）" value="快速消费品（食品,饮料,化妆品）">快速消费品（食品,饮料,化妆品）</option>
<option label="服装/纺织/皮革" value="服装/纺织/皮革">服装/纺织/皮革</option>
<option label="家具/家电/工艺品/玩具" value="家具/家电/工艺品/玩具">家具/家电/工艺品/玩具</option>
<option label="办公用品及设备" value="办公用品及设备">办公用品及设备</option>
<option label="医疗，医药" value="医疗，医药">医疗，医药</option>
<option label="广告/公关/市场推广/会展" value="广告/公关/市场推广/会展">广告/公关/市场推广/会展</option>
<option label="影视/媒体/出版/印刷/包装" value="影视/媒体/出版/印刷/包装">影视/媒体/出版/印刷/包装</option>
<option label="房地产相关" value="房地产相关">房地产相关</option>
<option label="家居/室内设计/装潢" value="家居/室内设计/装潢">家居/室内设计/装潢</option>
<option label="服务（咨询，人力资源）" value="服务（咨询，人力资源）">服务（咨询，人力资源）</option>
<option label="法律相关" value="法律相关">法律相关</option>
<option label="教育/培训" value="教育/培训">教育/培训</option>
<option label="学术/科研" value="学术/科研">学术/科研</option>
<option label="酒店/餐饮业" value="酒店/餐饮业">酒店/餐饮业</option>
<option label="旅游" value="旅游">旅游</option>
<option label="娱乐/休闲/体育" value="娱乐/休闲/体育">娱乐/休闲/体育</option>
<option label="美容/保健" value="美容/保健">美容/保健</option>
<option label="交通（运输、物流、航天、航空）" value="交通（运输、物流、航天、航空）">交通（运输、物流、航天、航空）</option>
<option label="汽车及零配件" value="汽车及零配件">汽车及零配件</option>
<option label="农业" value="农业">农业</option>
<option label="政府/非盈利机构" value="政府/非盈利机构">政府/非盈利机构</option>
<option label="其他行业" value="其他行业">其他行业</option>
</select></td>
					</tr>
					<tr>
						<td class="item item105"><span class="ico_stars">*</span><span >公司类型：</span></td>
						<td><select id="cpanyStyle" name="cpanyStyle"   >
						<option value="0">--请选择--</option><option label="政府机关" value="政府机关">政府机关</option>
<option label="事业单位 " value="事业单位">事业单位 </option>
<option label="外企企业 " value="外企企业">外企企业 </option>
<option label="世界500强 " value="世界500强">世界500强 </option>
<option label="上市公司 " value="上市公司">上市公司 </option>
<option label="国有企业 " value="国有企业">国有企业 </option>
<option label="私营企业 " value="私营企业">私营企业 </option>
<option label="自有公司" value="自有公司">自有公司</option>
</select></td>
					</tr>
					<tr>
						<td class="item item105"><span class="ico_stars">*</span><span >福利待遇：</span></td>
						<td><select id="welfare" name="welfare"  ><option value="0">--请选择--</option>
						<option label="福利优越" value="福利优越">福利优越</option>
<option label="奖金丰厚" value="奖金丰厚">奖金丰厚</option>
<option label="事业稳定上升" value="事业稳定上升">事业稳定上升</option>
<option label="事业刚起步" value="事业刚起步">事业刚起步</option>
<option label="投资高回报" value="投资高回报">投资高回报</option>
</select></td>
					</tr>
					<tr>
						<td class="item item105"><span class="ico_stars">*</span><span >工作状态：</span></td>
						<td><select id="workStage" name="workStage" >
						<option value="0">--请选择--</option><option label="轻松稳定" value="轻松稳定">轻松稳定</option>
<option label="朝九晚五" value="朝九晚五">朝九晚五</option>
<option label="偶尔加班" value="偶尔加班">偶尔加班</option>
<option label="经常加班" value="经常加班">经常加班</option>
<option label="偶尔出差" value="偶尔出差">偶尔出差</option>
<option label="经常出差" value="经常出差">经常出差</option>
<option label="经常有应酬" value="经常有应酬">经常有应酬</option>
<option label="工作时间自由" value="工作时间自由">工作时间自由</option>
</select></td>
					</tr>
					<tr>
						<td class="item item105"><span >调动工作可能性：</span></td>
						<td>
							<select id="changeWork" name="changeWork"  >
								<option value="0">--请选择--</option>
								<option label="完全无可能" value="完全无可能">完全无可能</option>
<option label="未来几年几乎没可能" value="未来几年几乎没可能">未来几年几乎没可能</option>
<option label="未来几年有可能" value="未来几年有可能">未来几年有可能</option>
<option label="最近即将调动" value="最近即将调动">最近即将调动</option>

							</select>
						</td>
					</tr>
					<tr>
						<td class="item item105"><span >海外工作可能性：</span></td>
						<td>
							<select id="wortSea" name="wortSea" >
								<option value="0">--请选择--</option>
								<option label="完全无可能" value="完全无可能">完全无可能</option>
<option label="未来几年几乎没可能" value="未来几年几乎没可能">未来几年几乎没可能</option>
<option label="未来几年有可能" value="未来几年有可能">未来几年有可能</option>
<option label="最近即将调动" value="最近即将调动">最近即将调动</option>

							</select>
						</td>
					</tr>
					<tr>
						<td class="item item105"><span >事业与家庭：</span></td>
						<td>
							<select id="workHome" name="workHome"   >
								<option value="0">--请选择--</option>
								<option label="一切以家庭为重" value="一切以家庭为重">一切以家庭为重</option>
<option label="会为家庭牺牲事业" value="会为家庭牺牲事业">会为家庭牺牲事业</option>
<option label="尽量均衡事业与家庭" value="尽量均衡事业与家庭">尽量均衡事业与家庭</option>
<option label="会为事业牺牲家庭利益" value="会为事业牺牲家庭利益">会为事业牺牲家庭利益</option>
<option label="事业第一" value="事业第一">事业第一</option>

							</select>
						</td>
					</tr>
				</table>
				<h1 style="margin-top:10px;">学习</h1>
				<table style="margin-bottom:200px;" cellpadding="0" cellspacing="0">
					<tr>
						<td class="item item105"><span class="ico_stars">*</span><span >毕业学校：</span></td>
						<td><select   id="area_Name" name="area_Name"  style="width:100px">
						<option value="0">--保密--</option>
						<option label="北京" value="北京">北京</option>
<option label="天津" value="天津市">天津市</option>
<option label="河北" value="河北省">河北省</option>
<option label="山西" value="山西省">山西省</option>
<option label="内蒙古" value="内蒙古">内蒙古</option>
<option label="辽宁" value="辽宁省">辽宁省</option>
<option label="吉林" value="吉林省">吉林省</option>
<option label="黑龙江" value="黑龙江省">黑龙江省</option>
<option label="上海" value="上海市">上海市</option>
<option label="江苏" value="江苏省">江苏省</option>
<option label="浙江" value="浙江省">浙江省</option>
<option label="安徽" value="安徽省">安徽省</option>
<option label="福建" value="福建省">福建省</option>
<option label="江西" value="江西省">江西省</option>
<option label="山东" value="山东省">山东省</option>
<option label="河南" value="河南省">河南省</option>
<option label="湖北" value="湖北省">湖北省</option>
<option label="湖南" value="湖南省">湖南省</option>
<option label="广东" value="广东省">广东省</option>
<option label="广西" value="广西省">广西省</option>
<option label="海南" value="海南省">海南省</option>
<option label="重庆" value="重庆市">重庆市</option>
<option label="四川" value="四川省">四川省</option>
<option label="贵州" value="贵州省">贵州省</option>
<option label="云南" value="云南省">云南省</option>
<option label="西藏" value="西藏">西藏</option>
<option label="陕西" value="陕西省">陕西省</option>
<option label="甘肃" value="甘肃省">甘肃省</option>
<option label="青海" value="青海省">青海省</option>
<option label="宁夏" value="宁夏">宁夏</option>
<option label="新疆" value="新疆">新疆</option>
<!-- <option label="台湾" value="台湾">台湾</option>
<option label="香港" value="香港">香港</option>
<option label="澳门" value="澳门">澳门</option>
<option label="钓鱼岛" value="钓鱼">钓鱼岛</option> -->
<!-- <option label="美国" value="98">美国</option>
<option label="其他国家" value="99">其他国家</option> -->
</select>&nbsp;&nbsp;<select   id="graduation" name="graduation"  style="width:200px;"><option value="0">--请选择--</option></select></td>
						
					</tr>
					<tr>
						<td class="item item105"><span class="ico_stars">*</span><span >专业类型：</span></td>
						<td><select id="majorStyle" name="majorStyle"   >
						<option value="0">--请选择--</option><option label="计算机类" value="计算机类">计算机类</option>
<option label="电子信息类" value="电子信息类">电子信息类</option>
<option label="中文类" value="中文类">中文类</option>
<option label="外文类" value="外文类">外文类</option>
<option label="经济学类" value="经济学类">经济学类</option>
<option label="金融学类" value="金融学类">金融学类</option>
<option label="管理类" value="管理类">管理类</option>
<option label="市场营销类" value="市场营销类">市场营销类</option>
<option label="法学类" value="法学类">法学类</option>
<option label="教育类" value="教育类">教育类</option>
<option label="社会学类" value="社会学类">社会学类</option>
<option label="历史类" value="历史类">历史类</option>
<option label="哲学类" value="哲学类">哲学类</option>
<option label="艺术类" value="艺术类">艺术类</option>
<option label="图书馆类" value="图书馆类">图书馆类</option>
<option label="情报档案类" value="情报档案类">情报档案类</option>
<option label="政治类" value="政治类">政治类</option>
<option label="数学类" value="数学类">数学类</option>
<option label="统计类" value="统计类">统计类</option>
<option label="物理类" value="物理类">物理类</option>
<option label="化学类" value="化学类">化学类</option>
<option label="生物类" value="生物类">生物类</option>
<option label="食品类" value="食品类">食品类</option>
<option label="医学类" value="医学类">医学类</option>
<option label="环境类" value="环境类">环境类</option>
<option label="地理类" value="地理类">地理类</option>
<option label="建筑类" value="建筑类">建筑类</option>
<option label="测绘类" value="测绘类">测绘类</option>
<option label="电气类" value="电气类">电气类</option>
<option label="机械类" value="机械类">机械类</option>
</select></td>
					</tr>
					<tr>
						<td class="item item105" valign="top"><span >语言能力：</span></td>
						<td id="em_language_edit" >
  <ul >
	<li><label for="language_1"  ><input type="checkbox" name="language" id="language" value="中文(普通话)" />&nbsp;中文(普通话)</label></li> 
	<li><label for="language_2"  ><input type="checkbox" name="language" id="language" value="中文(广东话)" />&nbsp;中文(广东话)</label></li> 
	<li><label for="language_3"  ><input type="checkbox" name="language" id="language" value="英语" />&nbsp;英语</label></li> 
	<li><label for="language_4"  ><input type="checkbox" name="language" id="language" value="法语" />&nbsp;法语</label></li> 
	<li><label for="language_5"  ><input type="checkbox" name="language" id="language" value="日语" />&nbsp;日语</label></li> 
	<li><label for="language_6"  ><input type="checkbox" name="language" id="language" value="韩语" />&nbsp;韩语</label></li> 
	<li><label for="language_7"  ><input  type="checkbox" name="language" id="language" value="德语" />&nbsp;德语</label></li> 
	<li><label for="language_8"  ><input  type="checkbox" name="language" id="language" value="意大利语" />&nbsp;意大利语</label></li> 
    <li><label for="language_9"  ><input  type="checkbox" name="language" id="language" value="俄语" />&nbsp;俄语</label></li> 
	<li><label for="language_10"  ><input  type="checkbox" name="language" id="language" value="芬兰语" />&nbsp;芬兰语</label></li> 
	<li><label for="language_11"  ><input  type="checkbox" name="language" id="language" value="荷兰语" />&nbsp;荷兰语</label></li> 
	<li><label for="language_12"  ><input  type="checkbox" name="language" id="language" value="葡萄牙语" />&nbsp;葡萄牙语</label></li> 
	<li><label for="language_13"  ><input  type="checkbox" name="language" id="language" value="西班牙语" />&nbsp;西班牙语</label></li> 
	<li><label for="language_14"  ><input  type="checkbox" name="language" id="language" value="越南语" />&nbsp;越南语</label></li> 
	<li><label for="language_15"  ><input  type="checkbox" name="language" id="language" value="阿拉伯语" />&nbsp;阿拉伯语</label></li> 
	<li><label for="language_16"  ><input  type="checkbox" name="language" id="language" value="泰国语" />&nbsp;泰国语</label></li> 
    <li><label for="language_17"  ><input  type="checkbox" name="language" id="language" value="印度尼希亚语" />&nbsp;印度尼希亚语</label></li> 
	<li><label for="language_18"  ><input  type="checkbox" name="language" id="language" value="印度语" />&nbsp;印度语</label></li> 
	<li><label for="language_19"  ><input  type="checkbox" name="language" id="language" value="丹麦语" />&nbsp;丹麦语</label></li> 
	<li><label for="language_20"  ><input  type="checkbox" name="language" id="language" value="希腊语" />&nbsp;希腊语</label></li> 
	<li><label for="language_21"  ><input  type="checkbox" name="language" id="language" value="伊朗语" />&nbsp;伊朗语</label></li> 
	<li><label for="language_22"  ><input  type="checkbox" name="language" id="language" value="匈牙利语" />&nbsp;匈牙利语</label></li> 
	<li><label for="language_23"  ><input  type="checkbox" name="language" id="language" value="土耳其语" />&nbsp;土耳其语</label></li> 
	<li><label for="language_24"  ><input  type="checkbox" name="language" id="language" value="挪威语" />&nbsp;挪威语</label></li> 
	<li><label for="language_25"  ><input  type="checkbox" name="language" id="language" value="捷克语" />&nbsp;捷克语</label></li> 
	<li><label for="language_26"  ><input  type="checkbox" name="language" id="language" value="波兰语" />&nbsp;波兰语</label></li> 
	<li><label for="language_27"  ><input  type="checkbox" name="language" id="language" value="瑞典语" />&nbsp;瑞典语</label></li> 
	<li><label for="language_28"  ><input  type="checkbox" name="language" id="language" value="缅甸语" />&nbsp;缅甸语</label></li> 
	<li><label for="language_29"  ><input  type="checkbox" name="language" id="language" value="罗马尼亚语" />&nbsp;罗马尼亚语</label></li> 
	<li><label for="language_30"  ><input  type="checkbox" name="language" id="language" value="其它" />&nbsp;其它</label></li> 
															</ul>
						</td>
					</tr>
					<tr><td>&nbsp;</td><td><input type="submit" class="save" value="保存"  /><input type="button" value="跳过此页"  /></td></tr>
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