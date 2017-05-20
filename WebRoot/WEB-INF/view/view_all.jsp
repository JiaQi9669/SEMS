<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<!-- 总体对比 -->
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

<!-- 图表保存功能 -->
<script type="text/javascript" src="highCharts/exporting.js"></script>
<script type="text/javascript" src="highCharts/highcharts-zh_CN.js"></script>

<style type="text/css">
.dropdown-submenu {
	position: relative;
}

.dropdown-submenu>.dropdown-menu {
	top: 0;
	left: 100%;
	margin-top: -6px;
	margin-left: -1px;
	-webkit-border-radius: 0 6px 6px 6px;
	-moz-border-radius: 0 6px 6px;
	border-radius: 0 6px 6px 6px;
}

.dropdown-submenu:hover>.dropdown-menu {
	display: block;
}

.dropdown-submenu>a:after {
	display: block;
	content: " ";
	float: right;
	width: 0;
	height: 0;
	border-color: transparent;
	border-style: solid;
	border-width: 5px 0 5px 5px;
	border-left-color: #ccc;
	margin-top: 5px;
	margin-right: -10px;
}

.dropdown-submenu:hover>a:after {
	border-left-color: #fff;
}

.dropdown-submenu.pull-left {
	float: none;
}

.dropdown-submenu.pull-left>.dropdown-menu {
	left: -100%;
	margin-left: 10px;
	-webkit-border-radius: 6px 0 6px 6px;
	-moz-border-radius: 6px 0 6px 6px;
	border-radius: 6px 0 6px 6px;
}
</style>

</head>

<body>

	<!-- 组装头部 -->
	<jsp:include page="/head.jsp"></jsp:include>


	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
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
						try {
							ace.settings.check('breadcrumbs', 'fixed')
						} catch (e) {
						}
					</script>

					<ul class="breadcrumb">
						<li><i class="icon-home home-icon"></i> <a href="#">首页</a></li>
						<li class="active">综合统计</li>
					</ul>
					<!-- .breadcrumb -->
				</div>

				<!-- 布局效果2 -->
				<div class="page-content">
					<div class="row">
						<div class="col-xs-12">
							<div class="widget-box">
								<div class="widget-header">
									<h4 class="smaller">综合统计</h4>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<!-- 下拉选项 -->
									<div class="btn-group">
										<!-- <button type="button" class="btn btn-default">原始</button>   -->
										<button type="button" class="btn btn-default  dropdown-toggle"
											data-toggle="dropdown">
											条件参数<span class="icon-caret-down"></span>
										</button>
										<ul class="dropdown-menu" role="menu"
											aria-labelledby="dropdownMenu">
											<li class="dropdown-submenu"><a>同参数各点</a>
												<ul class="dropdown-menu">
													<li><a href="#">温度</a></li>
													<li><a href="#">湿度</a></li>
													<li><a href="#">PM2.5</a></li>
													<li><a href="#">烟雾</a></li>
													<li><a href="#">光照</a></li>
													<li><a href="#">噪声</a></li>
												</ul></li>
											<li class="dropdown-submenu"><a>同点各参数</a>
												<ul class="dropdown-menu">
													<li><a href="#">点1</a></li>
													<li><a href="#">点2</a></li>
													<li><a href="#">点3</a></li>
													<li><a href="#">点4</a></li>
													<li><a href="#">点5</a></li>
												</ul></li>
											<li class="divider"></li>
											<li class="dropdown-submenu"><a>平均值统计</a>
												<ul class="dropdown-menu">
													<li><a href="#">日平均</a></li>
													<li><a href="#">周平均</a></li>
													<li><a href="#">月平均</a></li>
												</ul></li>
										</ul>
									</div>
									<div class="btn-group"
										style="vertical-align: middle;padding: 0px;margin: 0px;padding-top: 10px;"
										id="nav-search">
										<form class="form-search">
											<span class="input-icon"> <input type="text"
												placeholder="请输入信息" class="nav-search-input"
												id="nav-search-input" autocomplete="off" /> <i
												class="icon-search nav-search-icon"></i> </span>
										</form>
									</div>
								</div>
								<div class="widget-body">
									<div class="widget-main">
										<div class="control-group">
											<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
											<div id="container"
												style="min-width: 310px; height: 400px; margin: 0 auto"></div>

											<div class="form-actions center">
												<button type="button" class="btn btn-sm btn-success">
													Submit <i class="icon-arrow-right icon-on-right bigger-110"></i>
												</button>
											</div>
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
		window.jQuery
				|| document
						.write("<script src='assets/js/jquery-2.0.3.min.js'>"
								+ "<"+"script>");
	</script>

	<!-- <![endif]-->

	<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"script>");
</script>
<![endif]-->

	<script type="text/javascript">
		if ("ontouchend" in document)
			document
					.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"script>");
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

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		Highcharts.chart('container',
			{
				chart : {
					type : 'column'
				},
				title : {
					text : '校园环境监测综合统计'
				},
				subtitle : {
					text : '数据来源: zzuli'
				},
				xAxis : {
					/* categories : [ '一月', '二月', '三月', '四月', '五月',
							'六月', '七月', '八月', '九月', '十月', '十一月',
							'十二月' ], */
					categories : [ <% 
						for(int i=0;i<12;i++){
							if(i!=11){
								int temp=((i+new Date().getMonth()+2)%12);
								if(temp==0)temp=12;
								out.print("\'"+temp+"月\'");
								out.print(",");
							}else{
								out.print("\'本月\'");
							}
						}
					  %> ],
					crosshair : true
				},
				yAxis : {
					min : 0,
					title: {
				    	text: '降雨量 (mm)'
					}
				},
				toolbox : {
					feature : {
						saveAsImage : {}
					}
				},
				tooltip : {
					headerFormat : '<span style="font-size:10px">{point.key}</span><table>',
					pointFormat : '<tr><td style="color:{series.color};padding:0">{series.name}: </td>'
							+ '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
					footerFormat : '</table>',
					shared : true,
					useHTML : true
				},
				plotOptions : {
					column : {
						pointPadding : 0.2,
						borderWidth : 0
					}
				},
				series : [
						{
							name : '温度',
							data : [ 49.9, 71.5, 106.4, 129.2,
									144.0, 176.0, 135.6, 148.5,
									216.4, 194.1, 95.6, 54.4 ]
						},
						{
							name : '湿度',
							data : [ 83.6, 78.8, 98.5, 93.4, 106.0,
									84.5, 105.0, 104.3, 91.2, 83.5,
									106.6, 92.3 ]
						},
						{
							name : 'PM2.5',
							data : [ 48.9, 38.8, 39.3, 41.4, 47.0,
									48.3, 59.0, 59.6, 52.4, 65.2,
									59.3, 51.2 ]
						},
						{
							name : '烟雾',
							data : [ 42.4, 33.2, 34.5, 39.7, 52.6,
									75.5, 57.4, 60.4, 47.6, 39.1,
									46.8, 51.1 ]
						},
						{
							name : '光照',
							data : [ 42.4, 33, 34.5, 39.7, 52.6,
									5.5, 57.4, 6.4, 47.6, 39.1,
									46.8, 1.1 ]
						},
						{
							name : '噪声',
							data : [ 4.4, 33.2, 34.5, 39.7, 2.6,
									75.5, 57.4, 60.4, 4.6, 3.1,
									46.8, 51.1 ]
						} ]
			});
	</script>

</body>
</html>
