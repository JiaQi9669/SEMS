<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<!-- 密码修改 -->
<title>校园环境监测系统</title>

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

<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

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

<script src="highCharts/highcharts.js"></script>

</head>

<body>

	<!-- 组装头部 -->
	<jsp:include page="/head.jsp"></jsp:include>


	<div class="main-container" id="main-container">
		<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

		<div class="main-container-inner">
			<a class="menu-toggler" id="menu-toggler" href="#"> <span
				class="menu-text"></span> </a>

			<!-- 组装左侧菜单 -->
			<jsp:include page="/left.jsp"></jsp:include>

			<div class="main-content">
				<!-- 布局显示效果 -->
				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

					<ul class="breadcrumb">
						<li><i class="icon-home home-icon"></i> <a href="#">首页</a></li>
						<li class="active">我的密码</li>
					</ul>
					<!-- .breadcrumb -->
				</div>
				
				<!-- 布局效果2 -->
				<div class="page-content">
					
					<div class="row">
						<div class="col-xs-12">
							<div class="widget-box">
								<div class="widget-header">
									<h4 class="smaller">修改密码</h4>
								</div>
								<div class="widget-body">
									<div class="widget-main">
										<div class="control-group">
											<!-- <label class="control-label bolder blue">修改密码</label> -->
											
											<div class="form-actions center">
												<form action="adminupdata" method="post">
													<label>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：&nbsp;</label><input name="pass" type="text" placeholder="请输入您的密码" 
													onfocus="document.getElementById('pass11').hidden=true;" 
													onclick="document.getElementById('pass11').hidden=true;"
													onblur="if(pass.value == null || pass.value == ''){document.getElementById('pass11').hidden=false;}"/>
													<label  id="pass11" hidden="true" style="color: red;">原密码不能为空！</label><br><br>
													
													<label>新&nbsp;密&nbsp;码：&nbsp;</label><input name="passNew" type="password" placeholder="请输入您的新密码" 
													onfocus="document.getElementById('pass12').hidden=true;" 
													onclick="document.getElementById('pass12').hidden=true;"
													onblur="if(passNew.value == null || passNew.value == ''){document.getElementById('pass12').hidden=false;}"/>
													<label  id="pass12" hidden="true" style="color: red;">新密码不能为空！</label><br><br>
													
													<label>确认密码：</label><input name="passNew2" type="password" placeholder="请再次输入您的新密码"
													onfocus="document.getElementById('pass13').hidden=true;" 
													onclick="document.getElementById('pass13').hidden=true;document.getElementById('pass14').hidden=true;"
													onblur="if(passNew2.value == null || passNew2.value == ''){document.getElementById('pass13').hidden=false;}else{if(passNew.value != passNew2.value){document.getElementById('pass14').hidden=false;}}"/>
													<label  id="pass13" hidden="true" style="color: red;">确认密码不能为空！</label>
													<label  id="pass14" hidden="true" style="color: red;">两次密码不一致！</label><br><br>
													
													<input type="submit" class="btn btn-sm btn-success" value="立即修改 " 
													 onclick="if((pass.value != null && pass.value != '')&&(passNew.value != null && passNew.value != '')&&(passNew.value == passNew2.value)){ if(confirm('确定添加新学生吗？')==true){this.submit(); }else{return false;} }else{alert('请检查信息填写是否完整！');return false; }"/>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- /.page-content -->
			</div>
			<!-- /.main-content -->
		</div>
		<!-- /.main-container-inner -->

		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="icon-double-angle-up icon-only bigger-110"></i> </a>
	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->

	<!--[if !IE]> -->

	<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script> -->

	<!-- <![endif]-->

	<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

	<!--[if !IE]> -->

	<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"script>");
		</script>

	<!-- <![endif]-->

	<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"script>");
</script>
<![endif]-->

	<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"script>");
		</script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/typeahead-bs2.min.js"></script>

	<!-- page specific plugin scripts -->

	<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->

	<script src="assets/js/jquery-ui-1.10.3.custom.min.js"></script>
	<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
	<script src="assets/js/jquery.slimscroll.min.js"></script>
	<script src="assets/js/jquery.easy-pie-chart.min.js"></script>
	<script src="assets/js/jquery.sparkline.min.js"></script>
	<script src="assets/js/flot/jquery.flot.min.js"></script>
	<script src="assets/js/flot/jquery.flot.pie.min.js"></script>
	<script src="assets/js/flot/jquery.flot.resize.min.js"></script>

	<!-- ace scripts -->

	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
</body>
</html>
