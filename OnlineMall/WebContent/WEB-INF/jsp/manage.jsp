<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>商城后台</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
	<meta content="yes" name="apple-mobile-web-app-capable">
	<meta content="black" name="apple-mobile-web-app-status-bar-style">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/ace-rtl.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/ace-skins.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/ace.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/ace-rtl.min.css">
	
	<script src="js/ace-extra.min.js"></script>
	<script src="<%=path%>/js/jquery-1.6.2.min.js"></script>
	<script src="<%=path%>/js/ace.min.js"></script>
  </head>
  
  <body>
		<div class="navbar navbar-default" id="navbar">
			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="<%=path%>/index.jsp" class="navbar-brand">
						<small>
							后台管理
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div>

		<div class="main-container" id="main-container">
			<div class="main-container-inner">
				<div class="sidebar" id="sidebar">
		
			<ul class="nav nav-list">
				<li class="active">
					<a href="">
						<i class="icon-home"></i>
						<span class="menu-text"> 商城设置 </span>
					</a>
				</li>
		
				<li>
					<a href="javascript:void(0)">
						<i class="icon-list"></i>
						<span class="menu-text"> 界面设置 </span>
					</a>
				</li>
		
				<li>
					<a href="javascript:void(0)">
						<i class="icon-gift"></i>
						<span class="menu-text"> 商品管理 </span>
					</a>
				</li>
				
				<li>
					<a href="javascript:void(0)">
						<i class="icon-calendar"></i>
						<span class="menu-text"> 订单管理 </span>
					</a>
				</li>
				
				<li>
					<a href="javascript:void(0)">
						<i class="icon-group"></i>
						<span class="menu-text"> 邮箱管理 </span>
					</a>
				</li>
		
			</ul><!-- /.nav-list -->
		
			<div class="sidebar-collapse" id="sidebar-collapse">
				<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
			</div>
		
		</div>

		<div class="main-content">
			<div class="breadcrumbs" id="breadcrumbs">
				<ul class="breadcrumb">
					<li><i class="icon-home home-icon"></i> <a href="javascript:void(0);">商城设置</a></li>
					<li class="active">商城设置</li>
				</ul>
			</div>
			<div id="content_main">
				<iframe src="<%=path%>/inc/UImanage.jsp" id="main_iframe" name="main_iframe" style="width: 100%;" frameborder="0" onload="iFrameHeight()" scrolling="yes" height="276"></iframe>
				<script type="text/javascript" language="javascript"> 

					function iFrameHeight() {
						var ifm = document.getElementById("main_iframe");
						var subWeb = document.frames ? document.frames["main_iframe"].document
								: ifm.contentDocument;
						if (ifm != null && subWeb != null) {
							ifm.height = subWeb.body.scrollHeight;
						}
					}
				</script>


			</div>
		</div>

	</div>
</div>
		<script type="text/javascript">
		/* 菜单管理 */
		$('.nav.nav-list li').eq(1).click(function() {
			$('.nav.nav-list li').removeClass('active');
			$(this).addClass('active');
			$('#breadcrumbs ul li').eq(1).html('界面设置');
			$('#main_iframe').attr("src","<%=path%>/inc/UImanage.jsp");
		});
		/* 商品管理 */
		$('.nav.nav-list li').eq(2).click(function() {
			$('.nav.nav-list li').removeClass('active');
			$(this).addClass('active');
			$('#breadcrumbs ul li').eq(1).html('商品管理');
			$('#main_iframe').attr("src","<%=path%>/inc/UImanage.jsp");
		});
		/* 订单管理 */
		$('.nav.nav-list li').eq(3).click(function() {
			$('.nav.nav-list li').removeClass('active');
			$(this).addClass('active');
			$('#breadcrumbs ul li').eq(1).html('订单管理');
			$('#main_iframe').attr("src","<%=path%>/inc/UImanage.jsp");
		});
		/* 邮箱管理 */
		$('.nav.nav-list li').eq(4).click(function() {
			$('.nav.nav-list li').removeClass('active');
			$(this).addClass('active');
			$('#breadcrumbs ul li').eq(1).html('邮箱管理');
			$('#main_iframe').attr("src","<%=path%>/inc/UImanage.jsp");
		});

		</script>
		
  </body>
</html>
