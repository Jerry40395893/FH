<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName()
    + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>Home</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">

<link href="<%=basePath %>css/bootstrap.css" rel="stylesheet">
<link href="<%=basePath %>css/font-awesome.css" rel="stylesheet">
<link href="<%=basePath %>css/flexslider.css" rel="stylesheet">
<link href="<%=basePath %>css/prettyPhoto.css" rel="stylesheet">
<link href="<%=basePath %>css/isotope.css" rel="stylesheet">
<link href="<%=basePath %>css/animate.css" rel="stylesheet">
<link href="<%=basePath %>css/style.css" rel="stylesheet">

<script src="<%=basePath %>js/jquery.js"></script>
<script src="<%=basePath %>js/jquery-migrate-1.2.1.min.js"></script>
<script src="<%=basePath %>js/jquery.easing.1.3.js"></script>
<script src="<%=basePath %>js/superfish.js"></script>
<script src="<%=basePath %>js/jquery.flexslider.js"></script>
<script src="<%=basePath %>js/jquery.sticky.js"></script>
<script src="<%=basePath %>js/jquery.queryloader2.js"></script>
<script src="<%=basePath %>js/jquery.appear.js"></script>
<script src="<%=basePath %>js/jquery.ui.totop.js"></script>
<script src="<%=basePath %>js/jquery.equalheights.js"></script>
<script src="<%=basePath %>js/jquery.caroufredsel.js"></script>
<script src="<%=basePath %>js/jquery.touchSwipe.min.js"></script>
<script src="<%=basePath %>js/jquery.parallax-1.1.3.resize.js"></script>
<script src="<%=basePath %>js/SmoothScroll.js"></script>
<script src="<%=basePath %>js/jquery.prettyPhoto.js"></script>
<script src="<%=basePath %>js/jquery.isotope.min.js"></script>
<script src="<%=basePath %>js/cform.js"></script>
<script src="<%=basePath %>js/scripts.js"></script>
<script src="<%=basePath %>js/bootstrap.min.js"></script>


</head>
<body class="onepage front" data-spy="scroll" data-target="#top1" data-offset="71">

<div id="load"></div>

<div id="main">
   <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您好,请<a href="www.baidu.com">登录</a> &nbsp;&nbsp;
  <a href=""> 免费注册</a></div>
<div id="top1">
<div class="top1_wrapper">
  
<div class="container">

<div class="top1 clearfix">

<header>
  <div class="logo_wrapper">
    <a href="#home" class="logo scroll-to">
      <img src="<%=basePath %>images/logo.png" alt="" class="img-responsive">
    </a>
  </div>
</header>



<div class="search-form-wrapper clearfix">

</div>



</div>

</div>
</div>

<div class="top2_wrapper" id="top2">
<div class="container">

<div class="top2 clearfix">



<div class="navbar navbar_ navbar-default">
  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
    <span class="sr-only">Toggle navigation</span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
  </button>
  <div class="navbar-collapse navbar-collapse_ collapse">
    <ul class="nav navbar-nav sf-menu clearfix">
      <li class="active"><a href="#home">首页</a></li>
      <li class="sub-menu sub-menu-1"><a href="#about">我的佳缘</a>
   
      </li>
      <li class="sub-menu sub-menu-1"><a href="#services">搜索</a>
      
      </li>
      <li><a href="#prices">活动</a></li>
      <li><a href="#gallery">晒幸福</a></li>
      
    </ul>
  </div>
</div>

<div class="social_wrapper">

</div>

</div>

</div>
</div>

</div>

<div id="home">

<div id="slider_wrapper">
  <div id="slider">
    <div id="flexslider">
    
      <ul class="slides clearfix">
      
        <li>
        
          <img src="<%=basePath %>images/slide01.jpg" alt="">
        </li>
        <li>
          <img src="<%=basePath %>images/slide02.jpg" alt="">
        </li>
        <li>
          <img src="<%=basePath %>images/slide03.jpg" alt="">
        </li>

      </ul>
    </div>
  </div>
</div>
</div>

<div id="gallery1">

  <div class="gallery_inner">
    <div class="container">

      <h2 class="mar">交友搜缘分</h2>

      <div id="options" class="clearfix">
        <ul id="filters" class="pagination option-set clearfix" data-option-key="filter">
          <li><a href="#filter" data-option-value="*" class="selected">同城人</a></li>
          <li><a href="#filter" data-option-value=".isotope-filter1">小萝莉</a></li>
          <li><a href="#filter" data-option-value=".isotope-filter2">小正太</a></li>
          <li><a href="#filter" data-option-value=".isotope-filter3">90后</a></li>
          <li><a href="#filter" data-option-value=".isotope-filter4">80后</a></li>
        </ul>
      </div>






    </div>
  </div>




    <div class="gallery_inner2">
    <div class="">

      <div class="isotope-box">
        <div id="container" class="clearfix">
          <ul class="thumbnails" id="isotope-items">
            <li class="element isotope-filter1">
              <div class="thumb-isotope">
                <div class="thumbnail clearfix">
                  <a href="<%=basePath %>images/gallery01.jpg" rel="prettyPhoto[mix]" title="Photo" class="p">
                    <figure>
                    <a href="http://www.baidu.com">
                      <img src="<%=basePath %>images/gallery01.jpg" alt="" class="img1">
                      <img src="<%=basePath %>images/gallery01_over.jpg" alt="" class="img2">
                      <em></em></a>
                    </figure>
                  </a>
                </div>
              </div>
            </li>
            <li class="element isotope-filter2">
              <div class="thumb-isotope">
                <div class="thumbnail clearfix">
                  <a href="<%=basePath %>images/gallery02.jpg" rel="prettyPhoto[mix]" title="Photo" class="p">
                    <figure>
                      <img src="<%=basePath %>images/gallery02.jpg" alt="" class="img1">
                      <img src="<%=basePath %>images/gallery02_over.jpg" alt="" class="img2">
                      <em></em>
                    </figure>
                  </a>
                </div>
              </div>
            </li>
            <li class="element isotope-filter3">
              <div class="thumb-isotope">
                <div class="thumbnail clearfix">
                  <a href="<%=basePath %>images/gallery03.jpg" rel="prettyPhoto[mix]" title="Photo" class="p">
                    <figure>
                      <img src="<%=basePath %>images/gallery03.jpg" alt="" class="img1">
                      <img src="<%=basePath %>images/gallery03_over.jpg" alt="" class="img2">
                      <em></em>
                    </figure>
                  </a>
                </div>
              </div>
            </li>
            <li class="element isotope-filter4">
              <div class="thumb-isotope">
                <div class="thumbnail clearfix">
                  <a href="<%=basePath %>images/gallery04.jpg" rel="prettyPhoto[mix]" title="Photo" class="p">
                    <figure>
                      <img src="<%=basePath %>images/gallery04.jpg" alt="" class="img1">
                      <img src="<%=basePath %>images/gallery04_over.jpg" alt="" class="img2">
                      <em></em>
                    </figure>
                  </a>
                </div>
              </div>
            </li>
            <li class="element isotope-filter1">
              <div class="thumb-isotope">
                <div class="thumbnail clearfix">
                  <a href="<%=basePath %>images/gallery05.jpg" rel="prettyPhoto[mix]" title="Photo" class="p">
                    <figure>
                      <img src="<%=basePath %>images/gallery05.jpg" alt="" class="img1">
                      <img src="<%=basePath %>images/gallery05_over.jpg" alt="" class="img2">
                      <em></em>
                    </figure>
                  </a>
                </div>
              </div>
            </li>
            <li class="element isotope-filter2">
              <div class="thumb-isotope">
                <div class="thumbnail clearfix">
                  <a href="<%=basePath %>images/gallery06.jpg" rel="prettyPhoto[mix]" title="Photo" class="p">
                    <figure>
                      <img src="<%=basePath %>images/gallery06.jpg" alt="" class="img1">
                      <img src="<%=basePath %>images/gallery06_over.jpg" alt="" class="img2">
                      <em></em>
                    </figure>
                  </a>
                </div>
              </div>
            </li>
            <li class="element isotope-filter3">
              <div class="thumb-isotope">
                <div class="thumbnail clearfix">
                  <a href="<%=basePath %>images/gallery07.jpg" rel="prettyPhoto[mix]" title="Photo" class="p">
                    <figure>
                      <img src="<%=basePath %>images/gallery07.jpg" alt="" class="img1">
                      <img src="<%=basePath %>images/gallery07_over.jpg" alt="" class="img2">
                      <em></em>
                    </figure>
                  </a>
                </div>
              </div>
            </li>
            <li class="element isotope-filter4">
              <div class="thumb-isotope">
                <div class="thumbnail clearfix">
                  <a href="<%=basePath %>images/gallery08.jpg" rel="prettyPhoto[mix]" title="Photo" class="p">
                    <figure>
                      <img src="<%=basePath %>images/gallery08.jpg" alt="" class="img1">
                      <img src="<%=basePath %>images/gallery08_over.jpg" alt="" class="img2">
                      <em></em>
                    </figure>
                  </a>
                </div>
              </div>
            </li>
            <li class="element isotope-filter1">
              <div class="thumb-isotope">
                <div class="thumbnail clearfix">
                  <a href="<%=basePath %>images/gallery09.jpg" rel="prettyPhoto[mix]" title="Photo" class="p">
                    <figure>
                      <img src="<%=basePath %>images/gallery09.jpg" alt="" class="img1">
                      <img src="<%=basePath %>images/gallery09_over.jpg" alt="" class="img2">
                      <em></em>
                    </figure>
                  </a>
                </div>
              </div>
            </li>
            <li class="element isotope-filter2">
              <div class="thumb-isotope">
                <div class="thumbnail clearfix">
                  <a href="<%=basePath %>images/gallery10.jpg" rel="prettyPhoto[mix]" title="Photo" class="p">
                    <figure>
                      <img src="<%=basePath %>images/gallery10.jpg" alt="" class="img1">
                      <img src="<%=basePath %>images/gallery10_over.jpg" alt="" class="img2">
                      <em></em>
                    </figure>
                  </a>
                </div>
              </div>
            </li>
            <li class="element isotope-filter3">
              <div class="thumb-isotope">
                <div class="thumbnail clearfix">
                  <a href="<%=basePath %>images/gallery11.jpg" rel="prettyPhoto[mix]" title="Photo" class="p">
                    <figure>
                      <img src="<%=basePath %>images/gallery11.jpg" alt="" class="img1">
                      <img src="<%=basePath %>images/gallery11_over.jpg" alt="" class="img2">
                      <em></em>
                    </figure>
                  </a>
                </div>
              </div>
            </li>
            <li class="element isotope-filter4">
              <div class="thumb-isotope">
                <div class="thumbnail clearfix">
                  <a href="<%=basePath %>images/gallery12.jpg" rel="prettyPhoto[mix]" title="Photo" class="p">
                    <figure>
                      <img src="<%=basePath %>images/gallery12.jpg" alt="" class="img1">
                      <img src="<%=basePath %>images/gallery12_over.jpg" alt="" class="img2">
                      <em></em>
                    </figure>
                  </a>
                </div>
              </div>
            </li>
          </ul>
        </div>
      </div>

    </div>
  </div>

</div>

<div id="bot2" class="clearfix">
<div class="container">
<div class="bot2_inner clearfix">Copyright &copy; 2018.Company name All rights reserved</div>
</div>
</div>

</div>

</body>
</html>
