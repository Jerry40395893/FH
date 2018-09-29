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
                          <h1>婚姻<em>观念</em></h1>
                        </div>
                      </div>
                    </div>
                    <!-- BEGIN PRODUCT LIST -->
                  </div>
                  <h1>&nbsp;</h1>
                  
               <form id="form_base" name="form_base" action="<%=basePath%>user/qx/savaMarriage.action" method="post" >
               
               <table width="480" cellpadding="0" cellspacing="0">
						
					<tr>
						<td class="item m_select112"><span class="ico_stars">*</span><span style="color:#666;">国籍：</span></td>
						<td>
						    <select name="nation" id="nation" >
							    <option value="0">--请选择--</option>
							    <option label="中国大陆" value="中国大陆" selected="selected">中国大陆</option>
<option label="中国台湾" value="中国台湾">中国台湾</option>
<option label="中国香港" value="中国香港">中国香港</option>
<option label="中国澳门" value="中国澳门">中国澳门</option>
<option label="韩国" value="韩国">韩国</option>
<option label="朝鲜" value="朝鲜">朝鲜</option>
<option label="印度" value="印度">印度</option>
<option label="印度尼西亚" value="印度尼西亚">印度尼西亚</option>
<option label="美国" value="美国">美国</option>
<option label="加拿大" value="加拿大">加拿大</option>
<option label="日本" value="日本">日本</option>
<option label="俄罗斯" value="俄罗斯">俄罗斯</option>
<option label="英国" value="英国">英国</option>
<option label="德国" value="德国">德国</option>
<option label="意大利" value="意大利">意大利</option>
<option label="法国" value="法国">法国</option>
<option label="芬兰" value="芬兰">芬兰</option>
<option label="瑞典" value="瑞典">瑞典</option>
<option label="瑞士" value="瑞士">瑞士</option>
<option label="南非" value="南非">南非</option>
<option label="蒙古" value="蒙古">蒙古</option>
<option label="越南" value="越南">越南</option>
<option label="缅甸" value="缅甸">缅甸</option>
<option label="泰国" value="泰国">泰国</option>
<option label="老挝" value="老挝">老挝</option>
<option label="菲律宾" value="菲律宾">菲律宾</option>
<option label="西班牙" value="西班牙">西班牙</option>
<option label="葡萄牙" value="葡萄牙">葡萄牙</option>
<option label="阿尔巴尼亚" value="阿尔巴尼亚">阿尔巴尼亚</option>
<option label="阿尔及利亚" value="阿尔及利亚">阿尔及利亚</option>
<option label="阿富汗" value="阿富汗">阿富汗</option>
<option label="阿根廷" value="阿根廷">阿根廷</option>
<option label="阿拉伯联合酋长国" value="阿拉伯联合酋长国">阿拉伯联合酋长国</option>
<option label="阿拉伯叙利亚共和国" value="阿拉伯叙利亚共和国">阿拉伯叙利亚共和国</option>
<option label="阿鲁巴" value="阿鲁巴">阿鲁巴</option>
<option label="阿曼" value="阿曼">阿曼</option>
<option label="阿塞拜疆" value="阿塞拜疆">阿塞拜疆</option>
<option label="埃及" value="埃及">埃及</option>
<option label="埃塞俄比亚" value="埃塞俄比亚">埃塞俄比亚</option>
<option label="爱尔兰" value="爱尔兰">爱尔兰</option>
<option label="爱沙尼亚" value="爱沙尼亚">爱沙尼亚</option>
<option label="安道尔" value="安道尔">安道尔</option>
<option label="安哥拉" value="安哥拉">安哥拉</option>
<option label="安圭拉" value="安圭拉">安圭拉</option>
<option label="安提瓜和巴布达" value="安提瓜和巴布达">安提瓜和巴布达</option>
<option label="奥地利" value="奥地利">奥地利</option>
<option label="澳大利亚" value="澳大利亚">澳大利亚</option>
<option label="巴巴多斯" value="巴巴多斯">巴巴多斯</option>
<option label="巴布亚新几内亚" value="巴布亚新几内亚">巴布亚新几内亚</option>
<option label="巴哈马" value="巴哈马">巴哈马</option>
<option label="巴基斯坦" value="巴基斯坦">巴基斯坦</option>
<option label="巴勒斯坦" value="巴勒斯坦">巴勒斯坦</option>
<option label="巴拉圭" value="巴拉圭">巴拉圭</option>
<option label="巴林" value="巴林">巴林</option>
<option label="巴拿马" value="巴拿马">巴拿马</option>
<option label="巴西" value="巴西">巴西</option>
<option label="白俄罗斯" value="白俄罗斯">白俄罗斯</option>
<option label="百慕大" value="百慕大">百慕大</option>
<option label="保加利亚" value="保加利亚">保加利亚</option>
<option label="北马里亚纳" value="北马里亚纳">北马里亚纳</option>
<option label="贝宁" value="贝">贝宁</option>
<option label="比利时" value="比利时">比利时</option>
<option label="冰岛" value="冰岛">冰岛</option>
<option label="波多黎各" value="波多黎各">波多黎各</option>
<option label="波兰" value="波兰">波兰</option>
<option label="波斯尼亚和黑塞哥维那" value="波斯尼亚和黑塞哥维那">波斯尼亚和黑塞哥维那</option>
<option label="玻利维亚" value="玻利维亚">玻利维亚</option>
<option label="伯利兹" value="伯利兹">伯利兹</option>
<option label="博茨瓦纳" value="博茨瓦纳">博茨瓦纳</option>
<option label="不丹" value="不丹">不丹</option>
<option label="布基纳法索" value="布基纳法索">布基纳法索</option>
<option label="布隆迪" value="布隆迪">布隆迪</option>
<option label="布维岛" value="布维岛">布维岛</option>
<option label="赤道几内亚" value="赤道几内亚">赤道几内亚</option>
<option label="大阿拉伯利比亚民众国" value="大阿拉伯利比亚民众国">大阿拉伯利比亚民众国</option>
<option label="丹麦" value="丹麦">丹麦</option>
<option label="东帝汶" value="东帝汶">东帝汶</option>
<option label="多哥" value="多哥">多哥</option>
<option label="多米尼加共和国" value="多米尼加共和国">多米尼加共和国</option>
<option label="多米尼克" value="多米尼克">多米尼克</option>
<option label="厄瓜多尔" value="厄瓜多尔">厄瓜多尔</option>
<option label="厄立特里亚" value="厄立特里亚">厄立特里亚</option>
<option label="法罗群岛" value="法罗群岛">法罗群岛</option>
<option label="梵蒂冈城国" value="梵蒂冈城国">梵蒂冈城国</option>
<option label="斐济" value="斐济">斐济</option>
<option label="佛得角" value="佛得角">佛得角</option>
<option label="冈比亚" value="冈比亚">冈比亚</option>
<option label="刚果" value="刚果">刚果</option>
<option label="哥伦比亚" value="哥伦比亚">哥伦比亚</option>
<option label="哥斯达黎加" value="哥斯达黎加">哥斯达黎加</option>
<option label="格林纳达" value="格林纳达">格林纳达</option>
<option label="格陵兰" value="格陵兰">格陵兰</option>
<option label="格鲁吉亚" value="格鲁吉亚">格鲁吉亚</option>
<option label="古巴" value="古巴">古巴</option>
<option label="关岛" value="关岛">关岛</option>
<option label="圭亚那" value="圭亚那">圭亚那</option>
<option label="哈萨克斯坦" value="哈萨克斯坦">哈萨克斯坦</option>
<option label="海地" value="海地">海地</option>
<option label="荷兰" value="荷兰">荷兰</option>
<option label="荷属安的列斯" value="荷属安的列斯">荷属安的列斯</option>
<option label="赫德和麦克唐纳群岛" value="赫德和麦克唐纳群岛">赫德和麦克唐纳群岛</option>
<option label="洪都拉斯" value="洪都拉斯">洪都拉斯</option>
<option label="基里巴斯" value="基里巴斯">基里巴斯</option>
<option label="吉布提" value="吉布提">吉布提</option>
<option label="吉尔吉斯斯坦" value="吉尔吉斯斯坦">吉尔吉斯斯坦</option>
<option label="几内亚" value="几内亚">几内亚</option>
<option label="几内亚比绍" value="几内亚比绍">几内亚比绍</option>
<option label="加纳" value="加纳">加纳</option>
<option label="加蓬" value="加蓬">加蓬</option>
<option label="柬埔寨" value="柬埔寨">柬埔寨</option>
<option label="捷克共和国" value="捷克共和国">捷克共和国</option>
<option label="津巴布韦" value="津巴布韦">津巴布韦</option>
<option label="喀麦隆" value="喀麦隆">喀麦隆</option>
<option label="卡塔尔" value="卡塔尔">卡塔尔</option>
<option label="开曼群岛" value="开曼群岛">开曼群岛</option>
<option label="科摩罗" value="科摩罗">科摩罗</option>
<option label="科特迪瓦" value="科特迪瓦">科特迪瓦</option>
<option label="科威特" value="科威特">科威特</option>
<option label="克罗地亚" value="克罗地亚">克罗地亚</option>
<option label="肯尼亚" value="肯尼亚">肯尼亚</option>
<option label="库克群岛" value="库克群岛">库克群岛</option>
<option label="拉脱维亚" value="拉脱维亚">拉脱维亚</option>
<option label="莱索托" value="莱索托">莱索托</option>
<option label="黎巴嫩" value="黎巴嫩">黎巴嫩</option>
<option label="立陶宛" value="立陶宛">立陶宛</option>
<option label="利比里亚" value="利比里亚">利比里亚</option>
<option label="列支敦士登" value="列支敦士登">列支敦士登</option>
<option label="卢森堡" value="卢森堡">卢森堡</option>
<option label="卢旺达" value="卢旺达">卢旺达</option>
<option label="罗马尼亚" value="罗马尼亚">罗马尼亚</option>
<option label="马达加斯加" value="马达加斯加">马达加斯加</option>
<option label="马尔代夫" value="马尔代夫">马尔代夫</option>
<option label="马耳他" value="马耳他">马耳他</option>
<option label="马拉维" value="马拉维">马拉维</option>
<option label="马来西亚" value="马来西亚">马来西亚</option>
<option label="马里" value="马里">马里</option>
<option label="马绍尔群岛" value="马绍尔群岛">马绍尔群岛</option>
<option label="毛里求斯" value="毛里求斯">毛里求斯</option>
<option label="毛利塔尼亚" value="毛利塔尼亚">毛利塔尼亚</option>
<option label="蒙特塞拉特" value="蒙特塞拉特">蒙特塞拉特</option>
<option label="孟加拉国" value="孟加拉国">孟加拉国</option>
<option label="秘鲁" value="秘鲁">秘鲁</option>
<option label="密克罗尼西亚联邦" value="密克罗尼西亚联邦">密克罗尼西亚联邦</option>
<option label="摩尔多瓦" value="摩尔多瓦">摩尔多瓦</option>
<option label="摩洛哥" value="摩洛哥">摩洛哥</option>
<option label="摩纳哥" value="摩纳哥">摩纳哥</option>
<option label="莫桑比克" value="莫桑比克">莫桑比克</option>
<option label="墨西哥" value="墨西哥">墨西哥</option>
<option label="纳米比亚" value="纳米比亚">纳米比亚</option>
<option label="南极洲" value="南极洲">南极洲</option>
<option label="南斯拉夫" value="南斯拉夫">南斯拉夫</option>
<option label="瑙鲁" value="瑙鲁">瑙鲁</option>
<option label="尼泊尔" value="尼泊尔">尼泊尔</option>
<option label="尼加拉瓜" value="尼加拉瓜">尼加拉瓜</option>
<option label="尼日尔" value="尼日尔">尼日尔</option>
<option label="尼日利亚" value="尼日利亚">尼日利亚</option>
<option label="纽埃" value="纽埃">纽埃</option>
<option label="挪威" value="挪威">挪威</option>
<option label="诺福克岛" value="诺福克岛">诺福克岛</option>
<option label="帕劳群岛" value="帕劳群岛">帕劳群岛</option>
<option label="皮特凯恩" value="皮特凯恩">皮特凯恩</option>
<option label="前南斯拉夫马其顿共和国" value="前南斯拉夫马其顿共和国">前南斯拉夫马其顿共和国</option>
<option label="萨尔瓦多" value="萨尔瓦多">萨尔瓦多</option>
<option label="萨摩亚" value="萨摩亚">萨摩亚</option>
<option label="塞拉利昂" value="塞拉利昂">塞拉利昂</option>
<option label="塞内加尔" value="塞内加尔">塞内加尔</option>
<option label="塞浦路斯" value="塞浦路斯">塞浦路斯</option>
<option label="塞舌尔" value="塞舌尔">塞舌尔</option>
<option label="沙特阿拉伯" value="沙特阿拉伯">沙特阿拉伯</option>
<option label="圣诞岛" value="圣诞岛">圣诞岛</option>
<option label="圣多美和普林西比" value="圣多美和普林西比">圣多美和普林西比</option>
<option label="圣赫勒拿" value="圣赫勒拿">圣赫勒拿</option>
<option label="圣基茨和尼维斯" value="圣基茨和尼维斯">圣基茨和尼维斯</option>
<option label="圣卢西亚" value="圣卢西亚">圣卢西亚</option>
<option label="圣马力诺" value="圣马力诺">圣马力诺</option>
<option label="斯里兰卡" value="斯里兰卡">斯里兰卡</option>
<option label="斯洛伐克共和国" value="斯洛伐克共和国">斯洛伐克共和国</option>
<option label="斯洛文尼亚" value="斯洛文尼亚">斯洛文尼亚</option>
<option label="斯瓦尔巴岛和扬马延岛" value="斯瓦尔巴岛和扬马延岛">斯瓦尔巴岛和扬马延岛</option>
<option label="斯威士兰" value="斯威士兰">斯威士兰</option>
<option label="苏丹" value="苏丹">苏丹</option>
<option label="苏里南" value="苏里南">苏里南</option>
<option label="所罗门群岛" value="所罗门群岛">所罗门群岛</option>
<option label="索马里" value="索马里">索马里</option>
<option label="塔吉克斯坦" value="塔吉克斯坦">塔吉克斯坦</option>
<option label="坦桑尼亚" value="坦桑尼亚">坦桑尼亚</option>
<option label="汤加" value="汤加">汤加</option>
<option label="特克斯和凯科斯群岛" value="特克斯和凯科斯群岛">特克斯和凯科斯群岛</option>
<option label="特立尼达和多巴哥" value="特立尼达和多巴哥">特立尼达和多巴哥</option>
<option label="突尼斯" value="突尼斯">突尼斯</option>
<option label="图瓦卢" value="图瓦卢">图瓦卢</option>
<option label="土耳其" value="土耳其">土耳其</option>
<option label="土库曼斯坦" value="土库曼斯坦">土库曼斯坦</option>
<option label="托克劳" value="托克劳">托克劳</option>
<option label="瓦努阿图" value="瓦努阿图">瓦努阿图</option>
<option label="危地马拉" value="危地马拉">危地马拉</option>
<option label="委内瑞拉" value="委内瑞拉">委内瑞拉</option>
<option label="文莱" value="文莱">文莱</option>
<option label="乌干达" value="乌干达">乌干达</option>
<option label="乌克兰" value="乌克兰">乌克兰</option>
<option label="乌拉圭" value="乌拉圭">乌拉圭</option>
<option label="乌兹别克斯坦" value="乌兹别克斯坦">乌兹别克斯坦</option>
<option label="西撒哈拉" value="西撒哈拉">西撒哈拉</option>
<option label="希腊" value="希腊">希腊</option>
<option label="新加坡" value="新加坡">新加坡</option>
<option label="新西兰" value="新西兰">新西兰</option>
<option label="匈牙利" value="匈牙利">匈牙利</option>
<option label="牙买加" value="牙买加">牙买加</option>
<option label="亚美尼亚" value="亚美尼亚">亚美尼亚</option>
<option label="也门" value="也门">也门</option>
<option label="伊拉克" value="伊拉克">伊拉克</option>
<option label="伊朗伊斯兰共和国" value="伊朗伊斯兰共和国">伊朗伊斯兰共和国</option>
<option label="以色列" value="以色列">以色列</option>
<option label="约旦" value="约旦">约旦</option>
<option label="赞比亚" value="赞比亚">赞比亚</option>
<option label="扎伊尔" value="扎伊尔">扎伊尔</option>
<option label="乍得" value="乍得">乍得</option>
<option label="直布罗陀" value="直布罗陀">直布罗陀</option>
<option label="智利" value="智利">智利</option>
<option label="中非共和国 " value="中非共和国">中非共和国 </option>
<option label="圣文森特和格林纳丁斯" value="圣文森特和格林纳丁斯">圣文森特和格林纳丁斯</option>
<option label="法属波利尼西亚" value="法属波利尼西亚">法属波利尼西亚</option>
<option label="毛里塔尼亚" value="毛里塔尼亚">毛里塔尼亚</option>
<option label="新喀里多尼亚" value="新喀里多尼亚">新喀里多尼亚</option>
<option label="曼岛" value="曼岛">曼岛</option>
<option label="科科斯群岛" value="科科斯群岛">科科斯群岛</option>

							</select>
						</td>
					</tr>
					<tr>
						<td class="item m_select112"><span >个性特征：</span></td>
						<td>
							<select id="character" name="character"   >
								<option value="0" selected="selected">--请选择--</value>
								<option label="非常内向" value="非常内向">非常内向</option>
<option label="有点内向" value="有点内向">有点内向</option>
<option label="内外向平衡" value="内外向平衡">内外向平衡</option>
<option label="有点外向" value="有点外向">有点外向</option>
<option label="非常外向" value="非常外向">非常外向</option>

							</select>
						</td>
					</tr>
					<!-- 新增项“幽默感” start-->
					<tr>
						<td class="item m_select112"><span >幽默感：</span></td>
						<td>
							<select id="humor" name="humor" >
								<option value="0" selected="selected">--请选择--</option>
								<option label="没有幽默感" value="没有幽默感">没有幽默感</option>
<option label="有点幽默感" value="有点幽默感">有点幽默感</option>
<option label="幽默风趣" value="幽默风趣">幽默风趣</option>
<option label="经常带来欢笑" value="经常带来欢笑">经常带来欢笑</option>

							</select>
						</td>
					</tr>
					<!-- 新增项“幽默感” end-->

					<!-- 新增项“脾气” start-->
					<tr>
						<td class="item m_select112"><span >脾气：</span></td>
						<td>
							<select id="temper" name="temper"  >
								<option value="0" selected="selected">--请选择--</option>
								<option label="脾气很好" value="脾气很好">脾气很好</option>
<option label="很少发脾气" value="很少发脾气">很少发脾气</option>
<option label="偶尔会憋不住" value="偶尔会憋不住">偶尔会憋不住</option>
<option label="经常发脾气" value="经常发脾气">经常发脾气</option>
<option label="火气一点就着" value="火气一点就着">火气一点就着</option>

							</select>
						</td>
					</tr>
					<!-- 新增项“脾气” end-->
					<!-- 新增项“ 对待感情 ” start-->
					<tr>
						<td class="item m_select112"><span >对待感情：</span></td>
						<td>
							<select id="feeling" name="feeling"  >
								<option value="0" selected="selected">--请选择--</option>
								<option label="人生得意须尽欢" value="人生得意须尽欢">人生得意须尽欢</option>
<option label="是否投入真情要看情况" value="是否投入真情要看情况">是否投入真情要看情况</option>
<option label="一向认真对待感情" value="一向认真对待感情">一向认真对待感情</option>
<option label="憎恨虚情假意 用情不专的人" value="憎恨虚情假意 用情不专的人">憎恨虚情假意 用情不专的人</option>

							</select>
						</td>
					</tr>
					<!-- 新增项“脾气” end-->
					<!-- 变更“是否要小孩” start-->
					<tr>
						<td class="item m_select112"><span class="ico_stars">*</span><span >是否要小孩：</span></td>
						<td>
							<select name="chriden" id="chriden"  >
								<option value="0">--请选择--</option>
								<option label="想要孩子" value="想要孩子">想要孩子</option>
<option label="要不要都行" value="要不要都行">要不要都行</option>
<option label="不要孩子" value="不要孩子">不要孩子</option>
<option label="视情况而定" value="视情况而定">视情况而定</option>

							</select>
						</td>
					</tr>
					<!-- 变更“是否要小孩” end-->
					<tr>
						<td class="item m_select112"><span >何时结婚：</span></td>
						<td>
							<select id="marryTime" name="marryTime"  >
								<option value="0" selected="selected">--请选择--</option>
								<option label="接受闪婚" value="接受闪婚">接受闪婚</option>
<option label="顺其自然" value="顺其自然">顺其自然</option>
<option label="一年内" value="一年内">一年内</option>
<option label="两年内" value="两年内">两年内</option>
<option label="三年以上" value="三年以上">三年以上</option>

							</select>
						</td>
					</tr>
					<!-- 新增项“ 是否接受异地恋 ” start-->
					<tr>
						<td class="item m_select112"><span >是否接受异地恋：</span></td>
						<td>
							<select id="relationship" name="relationship"  >
								<option value="0" selected="selected">--请选择--</option>
								<option label="不能接受" value="不能接受">不能接受</option>
<option label="能接受" value="能接受">能接受</option>
<option label="视情况而定" value="视情况而定">视情况而定</option>

							</select>
						</td>
					</tr>
					<!-- 新增项“ 是否接受异地恋 ” end-->	
					<!-- 新增项“ 理想婚姻 ” start-->				
					<tr>
						<td class="item m_select112" valign="top" >理想婚姻：</td>
						<td><textarea id="marryMsg"   name="marryMsg" rows="5" cols="50"  ></textarea> </td>
					</tr>
										<!-- 新增项“ 理想婚姻 ” end-->					
				</table>				
			
			<!-- 关于自己结束 -->
			<!-- 关于家庭 开始 -->
			<div class="base_info">
				<h3 class="ws_title2" id="about_family">关于家庭</h3>
				<table width="480" cellpadding="0" cellspacing="0">
					<tr>
						<td class="item m_select112"><span class="ico_stars">*</span><span >愿与对方父母同住：</span></td>
						<td>
							<select  name="liveParent" id="liveParent" >
								<option value="0" selected="selected" >--请选择--</option>
								<option label="愿意" value="愿意">愿意</option>
<option label="不愿意" value="不愿意">不愿意</option>
<option label="视情况而定" value="视情况而定">视情况而定</option>

							</select>
						</td>
					</tr>
					<tr>
						<td class="item m_select112"><span class="ico_stars">*</span><span >家中排行：</span></td>
						<td>
							<select  name="ranking" id="ranking"  >
								<option value="0" selected="selected" >--请选择--</option>
								<option label="独生子女" value="独生子女">独生子女</option>
<option label="老大" value="老大">老大</option>
<option label="老二" value="老二">老二</option>
<option label="老三" value="老三">老三</option>
<option label="老四" value="老四">老四</option>
<option label="老五及更小" value="老五及更小">老五及更小</option>
<option label="老幺" value="7">老幺</option>

							</select>
						</td>
					</tr>
					<tr>
						<td class="item m_select112"   >兄弟姐妹：</td>
						<td>
							
					<input type="checkbox" id="brother" name="brother" value="哥哥"  /><label for="elder-brother"> 哥哥</label>
																
					<input type="checkbox" id="brother" name="brother" value="姐姐"  /><label for="elder-sister">  姐姐</label>
									
					<input type="checkbox" id="brother" name="brother" value="弟弟"  /><label for="younger-brother"> 弟弟</label>
									
					<input type="checkbox" id="brother" name="brother" value="妹妹"  /><label for="younger-sister"> 妹妹</label>
		
						</td>
					</tr>
					<tr>
						<td class="item m_select112"><span >父母情况：</span></td>
						<td>
							<select  name="parentMsg" id="parentMsg" class="om_select195" >
								<option value="0" selected="selected" >--请选择--</option>
								<option label="父母健在" value="父母健在">父母健在</option>
<option label="单亲家庭" value="单亲家庭">单亲家庭</option>
<option label="父亲健在" value="父亲健在">父亲健在</option>
<option label="母亲健在" value="母亲健在">母亲健在</option>
<option label="父母均离世" value="父母均离世">父母均离世</option>

							</select>
						</td>
					</tr>
					<tr>
						<td class="item m_select112"><span >父母工作：</span></td>
						<td>
							<label class="parent_work">父</label>
							<select  name="parentWork" id="parentWork" >
								<option value="0" selected="selected" >--请选择--</option>
								<option label="政府机关（已退休）" value="政府机关（已退休）">政府机关（已退休）</option>
<option label="政府机关（未退休）" value="政府机关（未退休）">政府机关（未退休）</option>
<option label="事业单位（已退休）" value="事业单位（已退休）">事业单位（已退休）</option>
<option label="事业单位（未退休）" value="事业单位（未退休）">事业单位（未退休）</option>
<option label="外企单位（已退休）" value="外企单位（已退休）">外企单位（已退休）</option>
<option label="外企单位（未退休）" value="外企单位（未退休）">外企单位（未退休）</option>
<option label="世界500强公司（已退休）" value="世界500强公司（已退休）">世界500强公司（已退休）</option>
<option label="世界500强公司（未退休）" value="世界500强公司（未退休）">世界500强公司（未退休）</option>
<option label="上市公司（已退休）" value="上市公司（已退休）">上市公司（已退休）</option>
<option label="上市公司（未退休）" value="上市公司（未退休）">上市公司（未退休）</option>
<option label="国有企业（已退休）" value="国有企业（已退休）">国有企业（已退休）</option>
<option label="国有企业（未退休）" value="国有企业（未退休）">国有企业（未退休）</option>
<option label="私营企业（已退休）" value="私营企业（已退休）">私营企业（已退休）</option>
<option label="私营企业（未退休）" value="私营企业（未退休）">私营企业（未退休）</option>
<option label="自有公司" value="自有公司">自有公司</option>
<option label="无工作" value="无工作">无工作</option>
<option label="其他（已退休）" value="其他（已退休）">其他（已退休）</option>
<option label="其他（未退休）" value="其他（未退休）">其他（未退休）</option>

							</select>
							<br />
							<label >母</label>
							<select  name="motherWork" id="motherWork" >
								<option value="0" selected="selected" >--请选择--</option>
								<option label="政府机关（已退休）" value="政府机关（已退休）">政府机关（已退休）</option>
<option label="政府机关（未退休）" value="政府机关（未退休）">政府机关（未退休）</option>
<option label="事业单位（已退休）" value="事业单位（已退休）">事业单位（已退休）</option>
<option label="事业单位（未退休）" value="事业单位（未退休）">事业单位（未退休）</option>
<option label="外企单位（已退休）" value="外企单位（已退休）">外企单位（已退休）</option>
<option label="外企单位（未退休）" value="外企单位（未退休）">外企单位（未退休）</option>
<option label="世界500强公司（已退休）" value="世界500强公司（已退休）">世界500强公司（已退休）</option>
<option label="世界500强公司（未退休）" value="世界500强公司（未退休）">世界500强公司（未退休）</option>
<option label="上市公司（已退休）" value="上市公司（已退休）">上市公司（已退休）</option>
<option label="上市公司（未退休）" value="上市公司（未退休）">上市公司（未退休）</option>
<option label="国有企业（已退休）" value="国有企业（已退休）">国有企业（已退休）</option>
<option label="国有企业（未退休）" value="国有企业（未退休）">国有企业（未退休）</option>
<option label="私营企业（已退休）" value="私营企业（已退休）">私营企业（已退休）</option>
<option label="私营企业（未退休）" value="私营企业（未退休）">私营企业（未退休）</option>
<option label="自有公司" value="自有公司">自有公司</option>
<option label="无工作" value="无工作">无工作</option>
<option label="其他（已退休）" value="其他（已退休）">其他（已退休）</option>
<option label="其他（未退休）" value="其他（未退休）">其他（未退休）</option>

							</select>
						</td>
					</tr>
					<tr>
						<td class="item m_select112"><span >父母经济情况：</span></td>
						<td>
							<select  name="parentSalary" id="parentSalary" >
								<option value="0" selected="selected" >--请选择--</option>
								<option label="均有退休金" value="均有退休金">均有退休金</option>
<option label="均无退休金" value="均无退休金">均无退休金</option>
<option label="只有父亲有退休金" value="只有父亲有退休金">只有父亲有退休金</option>
<option label="只有母亲有退休金" value="只有母亲有退休金">只有母亲有退休金</option>

							</select>
						</td>
					</tr>
					<tr>
						<td class="item m_select112"><span >父母医保情况：</span></td>
						<td>
							<select  name="parentInsurance" id="parentInsurance"  >
								<option value="0" selected="selected" >--请选择--</option>
								<option label="均有医疗保险" value="均有医疗保险">均有医疗保险</option>
<option label="均无医疗保险" value="均无医疗保险">均无医疗保险</option>
<option label="只有父亲有医疗保险" value="只有父亲有医疗保险">只有父亲有医疗保险</option>
<option label="只有母亲有医疗保险" value="只有母亲有医疗保险">只有母亲有医疗保险</option>

							</select>
						</td>
					</tr>
					<tr><td>&nbsp;</td><td><input type="submit" class="save" value="保存"  /><input type="button" value="跳过此页" /></td></tr>
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