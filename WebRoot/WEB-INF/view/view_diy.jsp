<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<!-- 自定义参数 -->
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
<!-- 引入 ECharts 文件 -->
<script src="${pageContext.request.contextPath }/echarts/echarts.js"></script>

<!-- 图表保存功能 -->
  	<script type="text/javascript" src="highCharts/exporting.js"></script>
  	<script type="text/javascript" src="highCharts/highcharts-zh_CN.js"></script>
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
						<li class="active">定制查看</li>
					</ul>
					<!-- .breadcrumb -->

					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon"> <input type="text"
								placeholder="Search ..." class="nav-search-input"
								id="nav-search-input" autocomplete="off" /> <i
								class="icon-search nav-search-icon"></i> </span>
						</form>
					</div>
					<!-- #nav-search -->
				</div>

				<!-- 布局效果2 -->
				<div class="page-content">
					<div class="row">
						<div class="col-xs-12">
							<div class="widget-box">
								<div class="widget-header">
									<h4 class="smaller">条件</h4>
								</div>
								<div class="widget-body">
									<div class="widget-main">
										<div class="control-group">
											<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
											<div id="main"
												style="min-width: 310px; height: 400px; margin: 0 auto;"></div>
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

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		
		function activeLastPointToolip(chart) {
		    var points = chart.series[0].points;
		    chart.tooltip.refresh(points[points.length -1]);
		}
		
		/* 折线图 */
		Highcharts.chart('main',{

			chart: {
		        type: 'line',
		        animation: Highcharts.svg, // don't animate in old IE
		        marginRight: 10,
		        events: {
		            load: function () {
		                // set up the updating of the chart each second
		                var series = this.series[0],
		                series2=this.series[1],
		                series3=this.series[2],
		                series4=this.series[3],
		                series5=this.series[4],
		                series6=this.series[5],
		                    chart = this;
		                setInterval(function () {
		                    var x = (new Date()).getTime(), // current time
		                        y = Math.random();
		                    var x1 = (new Date()).getTime(), // current time
		                        y1 = Math.random();
		                    var x2 = (new Date()).getTime(), // current time
		                        y2 = Math.random();
	                        var x3 = (new Date()).getTime(), // current time
	                        	y3 = Math.random();
	                        var x4 = (new Date()).getTime(), // current time
	                        	y4 = Math.random();
	                        var x5 = (new Date()).getTime(), // current time
	                        	y5 = Math.random();
	                        var x6 = (new Date()).getTime(), // current time
	                        	y6 = Math.random();
		                    series.addPoint([x, y], true, true);
		                    series2.addPoint([x1,y1],true,true);
		                    series3.addPoint([x2,y2],true,true);
		                    series4.addPoint([x3,y3],true,true);
		                    series5.addPoint([x4,y4],true,true);
		                    series6.addPoint([x5,y5],true,true);
		                    activeLastPointToolip(chart);
		                }, 10000);
		            }
		        }
		    },
		    title: {
		    /* 表名 */
		        text: '温度检测折线图'
		    },
		    subtitle: {
		    /* 二级表 */
		        text: '来源:zzuli'
		    },
		    xAxis: {
		    	title:{
		    		text:'min(分钟)'
		    	},
		    	tickPixelInterval: 150,
		    	crosshair: true,//定位线
		    	/* 横坐标 */
		        /* categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'] */
		    },
		    yAxis: {
		    	/* 纵坐标单位 */
		        title: {
		            text: 'Temperature (°C)'
		        }
		    },
		    toolbox: {
		        feature: {
		            saveAsImage: {}
		        }
		    },
		    tooltip: {
	            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
	            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
	            '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
	            footerFormat: '</table>',
	            /* shared: true, */
	            useHTML: true
	        },
		    
			 plotOptions: {
	            column: {
	                pointPadding: 0.2,
	                borderWidth: 0
	            }
	        },
		    
		    /* 折线属性 */
		    /* plotOptions: {
		        line: {
		            dataLabels: {
		                enabled: true
		            },
		            enableMouseTracking: false
		        }
		    }, */
		    /* 节点值 */
		    series: [{
		        name: '温度',/* 线名 */
		       data: (function () {
		            // generate an array of random data
		            var data = [],
		                time = (new Date()).getTime(),
		                i;
		            for (i = -19; i <= 0; i += 1) {
		                data.push({
		                    x: time + i * 1000,
		                    y: Math.random()
		                });
		            }
		            return data;
		        }())
		    }, {
		        name: '湿度',
		         data: (function () {
		            // generate an array of random data
		            var data = [],
		                time = (new Date()).getTime(),
		                i;
		            for (i = -19; i <= 0; i += 1) {
		                data.push({
		                    x: time + i * 1000,
		                    y: Math.random()
		                });
		            }
		            return data;
		        }())
		    }, {
		        name: 'PM2.5',
		         data: (function () {
		            // generate an array of random data
		            var data = [],
		                time = (new Date()).getTime(),
		                i;
		            for (i = -19; i <= 0; i += 1) {
		                data.push({
		                    x: time + i * 1000,
		                    y: Math.random()
		                });
		            }
		            return data;
		        }())
		    }, {
		        name: '烟雾',
		         data: (function () {
		            // generate an array of random data
		            var data = [],
		                time = (new Date()).getTime(),
		                i;
		            for (i = -19; i <= 0; i += 1) {
		                data.push({
		                    x: time + i * 1000,
		                    y: Math.random()
		                });
		            }
		            return data;
		        }())
		    }, {
		        name: '光强',
		         data: (function () {
		            // generate an array of random data
		            var data = [],
		                time = (new Date()).getTime(),
		                i;
		            for (i = -19; i <= 0; i += 1) {
		                data.push({
		                    x: time + i * 1000,
		                    y: Math.random()
		                });
		            }
		            return data;
		        }())
		    }, {
		        name: '噪声',
		         data: (function () {
		            // generate an array of random data
		            var data = [],
		                time = (new Date()).getTime(),
		                i;
		            for (i = -19; i <= 0; i += 1) {
		                data.push({
		                    x: time + i * 1000,
		                    y: Math.random()
		                });
		            }
		            return data;
		        }())
		    }
		    ]
		},function(c) {
		    activeLastPointToolip(c);
		});
	
		/* var myChart = echarts.init(document.getElementById('main'));
		option = {
	    title: {
	        text: '校园环境检测'
	    },
	    tooltip: {
	        trigger: 'axis'
	    },
	    legend: {
	        data:['温度','湿度','PM2.5','烟雾','光强']
	    },
	    grid: {
	        left: '3%',
	        right: '4%',
	        bottom: '3%',
	        containLabel: true
	    },
	    toolbox: {
	        feature: {
	            saveAsImage: {}
	        }
	    },
	    xAxis: {
	        type: 'category',
	        boundaryGap: false,
	        data: ['周一','周二','周三','周四','周五','周六','周日']
	    },
	    yAxis: {
	        type: 'value'
	    },
	    series: [
	        {
	            name:'温度',
	            type:'line',
	            stack: '总量',
	            data:[120, 132, 101, 134, 90, 230, 210]
	        },
	        {
	            name:'湿度',
	            type:'line',
	            stack: '总量',
	            data:[220, 182, 191, 234, 290, 330, 310]
	        },
	        {
	            name:'PM2.5',
	            type:'line',
	            stack: '总量',
	            data:[150, 232, 201, 154, 190, 330, 410]
	        },
	        {
	            name:'烟雾',
	            type:'line',
	            stack: '总量',
	            data:[320, 332, 301, 334, 390, 330, 320]
	        },
	        {
	            name:'光强',
	            type:'line',
	            stack: '总量',
	            data:[820, 932, 901, 934, 1290, 1330, 1320]
	        }
	    ]
	};
		myChart.setOption(option); */
	</script>
</body>
</html>
