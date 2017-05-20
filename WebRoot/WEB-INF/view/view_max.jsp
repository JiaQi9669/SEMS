<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <!-- 临界数据查看 -->
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
  	
  	<!-- <style type="text/css">
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
</style> -->
  	
  </head>
  
  <body>
  
  		<!-- 组装头部 -->
  		<jsp:include page="/head.jsp"></jsp:include>
  		
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<!-- 组装左侧菜单 -->
				<jsp:include page="/left.jsp"></jsp:include>

				<div class="main-content">
					<!-- 布局显示效果 -->
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="#">首页</a>
							</li>
							<li class="active">超标记录</li>
						</ul><!-- .breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="icon-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- #nav-search -->
					</div>

					<!-- 布局效果2 -->
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
								<div class="widget-box">
									<div class="widget-header">
										<h4 class="smaller">超标记录</h4>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<!-- 下拉选项 -->
										<div class="btn-group">
											<!-- <button type="button" class="btn btn-default">原始</button>   -->
											<button type="button" class="btn btn-default  dropdown-toggle"
												data-toggle="dropdown">
												条件参数<span class="icon-caret-down"></span>
											</button>
											<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
														<li><a href="#">温度</a></li>
														<li><a href="#">湿度</a></li>
														<li><a href="#">PM2.5</a></li>
														<li><a href="#">烟雾</a></li>
														<li><a href="#">光照</a></li>
														<li><a href="#">噪声</a></li>
												</li>
											</ul>
										</div>
									</div>
									<div class="widget-body">
										<div class="widget-main">
											<div id="zxt" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
										</div>
									</div>
								</div>
							</div>
						</div><!-- /.row -->
					</div>
						
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->

			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>

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

		<script type="text/javascript">
		
		Highcharts.setOptions({
		    global: {
		        useUTC: false
		    }
		});
		var obj;//数据对象
		var date_temp=new Date('2017-01-01');
		
		//加入最新的节点
		function activeLastPointToolip(chart) {
		    var points1 = chart.series[0].points;
		    chart.tooltip.refresh(points1[points1.length -1]);
		    var points2 = chart.series[1].points;
		    chart.tooltip.refresh(points2[points2.length -1]);
		    var points3 = chart.series[2].points;
		    chart.tooltip.refresh(points3[points3.length -1]);
		    var points4 = chart.series[3].points;
		    chart.tooltip.refresh(points4[points4.length -1]);
		    var points5 = chart.series[4].points;
		    chart.tooltip.refresh(points5[points5.length -1]);
		    var points6 = chart.series[5].points;
		    chart.tooltip.refresh(points6[points6.length -1]);
		    asyn();
		}
		
		function asyn(){
			$.ajax({
                    type : "post",
                    url : "${pageContext.request.contextPath}/asynnews",
                    data : {//发出的数据//userName : userName
                    },
                    dataType:"json",
                    success : function(data) {
                    	obj = $.parseJSON(data);  //使用这个方法解析json
		    			//alert(obj.id+","+obj.date);
                        //$('#userName').val("");
                        //location.reload();//重新刷新界面
                    },
                    error : function() {
                        alert("异步请求失败！");
                    }
                });
		};
		
		Highcharts.chart('zxt',{
		    chart: {
		        type: 'spline',
		        animation: Highcharts.svg, // don't animate in old IE
		        marginRight: 10,
		        events: {
		            load: function () {
		                var series1 = this.series[0],
		                series2=this.series[1],
		                series3=this.series[2],
		                series4=this.series[3],
		                series5=this.series[4],
		                series6=this.series[5],
		                    chart = this;
		                setInterval(function () {
		                	var x;
		                	var y1,y2,y3,y4,y5,y6;
		                	
		                	if(new Date(obj.date).getTime()>new Date(date_temp).getTime()){//有效数据的处理
		                		date_temp=obj.date;
		                		x = (new Date(obj.date)).getTime();
		                		y1 = obj.tem;
		                		y2 = obj.hum;
		                		y3 = obj.pm25;
		                		y4 = obj.smog;
		                		y5 = obj.light;
		                		y6 = obj.noise;
		                	}else{//无数据处理
		                		x=new Date().getTime();
		                		date_temp=new Date();
		                		y1=0;
		                		y2=0;
		                		y3=0;
		                		y4=0;
		                		y5=0;
		                		y3=0;
		                	}
		                    series1.addPoint([x, y1], true, true);
		                    series2.addPoint([x, y2], true, true);
		                    series3.addPoint([x, y3], true, true);
		                    series4.addPoint([x, y4], true, true);
		                    series5.addPoint([x, y5], true, true);
		                    series6.addPoint([x, y6], true, true);
		                    activeLastPointToolip(chart);
		                }, 10000);
		            }
		        }
		    },
		    title: {
		        text: '动态模拟实时数据'
		    },
		    subtitle: {
		        text: '数据来源:zzuli'
		    },
		    xAxis: {
		        type: 'datetime',
		        tickPixelInterval: 150,
		        crosshair: true//定位线
		    },
		    yAxis: {
		        title: {
		            text: '值'
		        },
		        plotLines: [{
		            value: 0,
		            width: 1,
		            color: '#808080'
		        }],
		        crosshair: true//定位线
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
	            useHTML: true
	        },
		    
			 plotOptions: {
			 	line: {
	                dataLabels: {
	                    enabled: true          // 开启数据标签
	                },
	            },
	            column: {
	                pointPadding: 0.2,
	                borderWidth: 0
	            }
	        },
		   	exporting: {
		        enabled: true
		    },
		    series: [{
		        name: '温度',
		        data: (function () {
		            var data = [],
		                time = (new Date()).getTime(),
		                i;
		            for (i = -19; i <= 0; i += 1) {
		                data.push({
		                    x: time + i * 10000,
		                    y: Math.abs(20+i)
		                });
		            }
		            return data;
		        }())
		    },{
		        name: '湿度',
		        data: (function () {
		            var data = [],
		                time = (new Date()).getTime(),
		                i;
		            for (i = -19; i <= 0; i += 1) {
		                data.push({
		                    x: time + i * 10000,
		                    y: 1
		                });
		            }
		            return data;
		        }())
		    },{
		        name: 'PM2.5',
		        data: (function () {
		            var data = [],
		                time = (new Date()).getTime(),
		                i;
		            for (i = -19; i <= 0; i += 1) {
		                data.push({
		                    x: time + i * 10000,
		                    y: Math.abs(i)
		                });
		            }
		            return data;
		        }())
		    },{
		        name: '烟雾',
		        data: (function () {
		            var data = [],
		                time = (new Date()).getTime(),
		                i;
		            for (i = -19; i <= 0; i += 1) {
		                data.push({
		                    x: time + i * 10000,
		                    y: 2
		                });
		            }
		            return data;
		        }())
		    },{
		        name: '光照',
		        data: (function () {
		            var data = [],
		                time = (new Date()).getTime(),
		                i;
		            for (i = -19; i <= 0; i += 1) {
		                data.push({
		                    x: time + i * 10000,
		                    y: 3
		                });
		            }
		            return data;
		        }())
		    },{
		        name: '噪声',
		        data: (function () {
		            var data = [],
		                time = (new Date()).getTime(),
		                i;
		            for (i = -19; i <= 0; i += 1) {
		                data.push({
		                    x: time + i * 10000,
		                    y: 4
		                });
		            }
		            return data;
		        }())
		    }
		    ]
		},function(c) {
		    activeLastPointToolip(c);
		});
		
		
		/* 功能备份 */
			//加入最新的节点
		/* function activeLastPointToolip(chart) {
		    var points = chart.series[0].points;
		    chart.tooltip.refresh(points[points.length -1]);
		}
		
		Highcharts.chart('zxt',{
		    chart: {
		        type: 'spline',
		        animation: Highcharts.svg, // don't animate in old IE
		        marginRight: 10,
		        events: {
		            load: function () {
		                // set up the updating of the chart each second
		                var series = this.series[0],
		                series2=this.series[1],
		                series3=this.series[2],
		                    chart = this;
		                setInterval(function () {
		                    var x = (new Date()).getTime(), // current time
		                        y = Math.random();
		                    var x1 = (new Date()).getTime(), // current time
		                        y1 = Math.random();
		                    var x2 = (new Date()).getTime(), // current time
		                        y2 = Math.random();
		                    series.addPoint([x, y], true, true);
		                    series2.addPoint([x1,y1],true,true);
		                    series3.addPoint([x2,y2],true,true);
		                    activeLastPointToolip(chart);
		                }, 10000);
		            }
		        }
		    },
		    title: {
		        text: '动态模拟实时数据'
		    },
		    subtitle: {
		        text: '数据来源:轻院实验室'
		    },
		    xAxis: {
		        type: 'datetime',
		        tickPixelInterval: 150,
		        crosshair: true//定位线
		    },
		    yAxis: {
		        title: {
		            text: '值'
		        },
		        plotLines: [{
		            value: 0,
		            width: 1,
		            color: '#808080'
		        }],
		        crosshair: true//定位线
		    },
		    toolbox: {
		        feature: {
		            saveAsImage: {}
		        }
		    }, */
		    /* tooltip: {
		        formatter: function () {
		            return '<b>' + this.series.name + '</b><br/>' +
		                Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) + '<br/>' +
		                Highcharts.numberFormat(this.y, 2);
		        }
		    }, */
		    
		   /*  tooltip: {
	            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
	            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
	            '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
	            footerFormat: '</table>',
	            // shared: true,
	            useHTML: true
	        },
		    
			 plotOptions: {
			 	line: {
	                dataLabels: {
	                    enabled: true          // 开启数据标签
	                },
	                //enableMouseTracking: false // 关闭鼠标跟踪，对应的提示框、点击事件会失效
	            },
	            column: {
	                pointPadding: 0.2,
	                borderWidth: 0
	            }
	        }, */
		    /* legend: {//图例
		        enabled: false
		    }, */
		   	/* exporting: {
		        enabled: true
		    },
		    series: [{
		        name: '测试数据1',
		        data: (function () {
		            // generate an array of random data
		            var data = [],
		                time = (new Date()).getTime(),
		                i;
		            for (i = -19; i <= 0; i += 1) {
		                data.push({
		                    x: time + i * 1000,
		                    y: Math.random(10)+5
		                });
		            }
		            return data;
		        }())
		    },{
		        name: '测试数据2',
		        data: (function () {
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
		    },{
		        name: '测试数据3',
		        data: (function () {
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
		    }]
		},function(c) {
		    activeLastPointToolip(c);
		}); */
		/* 备份结束 */
	</script>
  </body>
</html>
