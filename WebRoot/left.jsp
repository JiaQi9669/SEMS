<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>环境监测系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!-- basic styles -->
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

	<!--[if IE 7]>
	  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
	<![endif]-->

	<!-- page specific plugin styles -->

	<!-- fonts -->

	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

	<!-- ace styles -->

	<link rel="stylesheet" href="assets/css/ace.min.css" />
	<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
	<link rel="stylesheet" href="assets/css/ace-skins.min.css" />

	<!--[if lte IE 8]>
	  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
	<![endif]-->

	<!-- inline styles related to this page -->

	<!-- ace settings handler -->

	<script src="assets/js/ace-extra.min.js"></script>

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->

  </head>
  
  <body>
    <div class="sidebar" id="sidebar">
				<script type="text/javascript">
					try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
				</script>

				<ul class="nav nav-list">
					<li class="active open">
						<a href="viewindex">
							<i class="icon-dashboard"></i>
							<span class="menu-text"> 信息统计 </span>
						</a>
						<ul class="submenu">
							<li>
								<a href="viewmap">
									<i class="icon-double-angle-right"></i>
									实况浏览
								</a>
							</li>
								
							<li>
								<a href="viewtime">
									<i class="icon-double-angle-right"></i>
									实时统计
								</a>
							</li>
							
							<li>
								<a href="viewall">
									<i class="icon-double-angle-right"></i>
									综合统计
								</a>
							</li>

							<li>
								<a href="viewdiy">
									<i class="icon-double-angle-right"></i>
									自定义
								</a>
							</li>
							
							<li>
								<a href="viewmax" >
									<i class="icon-double-angle-right"></i>
									超标统计
								</a>
							</li>
						</ul>
					</li>

					<li class="active open">
						<a href="admindevice">
							<i class="icon-cogs"></i>
							<span class="menu-text"> 综合管理 </span>
						</a>
						
						<ul class="submenu">
							<li>
								<a href="admindevice">
									<i class="icon-double-angle-right"></i>
									设备管理
								</a>
							</li>
								
							<li>
								<a href="admindeviceupdata">
									<i class="icon-double-angle-right"></i>
									设备统计
								</a>
							</li>
							
							<li>
								<a href="admindata">
									<i class="icon-double-angle-right"></i>
									环境参数
								</a>
							</li>
						
						</ul>
					</li>
					
					<li class="active open">
						<a href="adminperson">
							<i class="icon-group"></i>
							<span class="menu-text"> 人员管理 </span>
						</a>
						<ul class="submenu">
							
							<li>
								<a href="adminperson">
									<i class="icon-double-angle-right"></i>
									人员管理
								</a>
							</li>
							
							<li>
								<a href="adminpass">
									<i class="icon-double-angle-right"></i>
									密码设置
								</a>
							</li>
						
						</ul>
					</li>
						
				</ul><!-- /.nav-list -->
					
				<div class="sidebar-collapse" id="sidebar-collapse">
					<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
				</div>
				<script type="text/javascript">
					try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
				</script>
			</div>

  </body>
</html>
