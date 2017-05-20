<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<!-- 各节点实时信息查看 -->
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

<!-- <script src="highCharts/highcharts.js"></script> -->

<!-- 引入 ECharts 文件 -->
<script src="${pageContext.request.contextPath }/echarts/echarts.js"></script>
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
						<li class="active">实时环境</li>
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
					<!-- 二级展示头 -->
					<!-- <div class="page-header">
							<h1>
								控制台
								<small>
									<i class="icon-double-angle-right"></i>
									 查看
								</small>
							</h1>
						</div> -->
					<!-- /.page-header -->
					<div class="row">
						<div class="col-xs-12">
							<div class="widget-box">
								<div class="widget-header">
									<h4 class="smaller">条件</h4>
								</div>
								<div class="widget-body">
									<div class="widget-main">
										<!-- 动态数据 -->
										<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
										<div id="main" style="min-width: 310px; height: 400px; margin: 0 auto""></div>

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

		<div class="ace-settings-container" id="ace-settings-container">
			<div class="btn btn-app btn-xs btn-warning ace-settings-btn"
				id="ace-settings-btn">
				<i class="icon-cog bigger-150"></i>
			</div>

			<div class="ace-settings-box" id="ace-settings-box">
				<div>
					<div class="pull-left">
						<select id="skin-colorpicker" class="hide">
							<option data-skin="default" value="#438EB9">#438EB9</option>
							<option data-skin="skin-1" value="#222A2D">#222A2D</option>
							<option data-skin="skin-2" value="#C6487E">#C6487E</option>
							<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
						</select>
					</div>
					<span>&nbsp; 选择皮肤</span>
				</div>

				<div>
					<input type="checkbox" class="ace ace-checkbox-2"
						id="ace-settings-navbar" /> <label class="lbl"
						for="ace-settings-navbar"> 固定导航条</label>
				</div>

				<div>
					<input type="checkbox" class="ace ace-checkbox-2"
						id="ace-settings-sidebar" /> <label class="lbl"
						for="ace-settings-sidebar"> 固定滑动条</label>
				</div>

				<div>
					<input type="checkbox" class="ace ace-checkbox-2"
						id="ace-settings-breadcrumbs" /> <label class="lbl"
						for="ace-settings-breadcrumbs">固定面包屑</label>
				</div>

				<div>
					<input type="checkbox" class="ace ace-checkbox-2"
						id="ace-settings-rtl" /> <label class="lbl"
						for="ace-settings-rtl">切换到左边</label>
				</div>

				<div>
					<input type="checkbox" class="ace ace-checkbox-2"
						id="ace-settings-add-container" /> <label class="lbl"
						for="ace-settings-add-container"> 切换窄屏 <b></b> </label>
				</div>
			</div>
		</div>
		<!-- /#ace-settings-container -->
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
  		/* var myChart = echarts.init(document.getElementById('main'));
  		
  		function splitData(rawData) {
	    var categoryData = [];
	    var values = [];
	    var volumns = [];
	    for (var i = 0; i < rawData.length; i++) {
	        categoryData.push(rawData[i].splice(0, 1)[0]);
	        values.push(rawData[i]);
	        volumns.push(rawData[i][4]);
	    }
	    return {
	        categoryData: categoryData,
	        values: values,
	        volumns: volumns
	    };
	}
	
	function calculateMA(dayCount, data) {
	    var result = [];
	    for (var i = 0, len = data.values.length; i < len; i++) {
	        if (i < dayCount) {
	            result.push('-');
	            continue;
	        }
	        var sum = 0;
	        for (var j = 0; j < dayCount; j++) {
	            sum += data.values[i - j][1];
	        }
	        result.push(+(sum / dayCount).toFixed(3));
	    }
	    return result;
	}
	
	$.get('http://echarts.baidu.com/data/asset/data/stock-DJI.json', function (rawData) {
	
	    var data = splitData(rawData);
	
	    myChart.setOption(option = {
	        backgroundColor: '#eee',
	        animation: true,
	        legend: {
	            bottom: 10,
	            left: 'center',
	            data: ['Dow-Jones index', 'MA5', 'MA10', 'MA20', 'MA30']
	        },
	        tooltip: {
	            trigger: 'axis',
	            axisPointer: {
	                type: 'cross'
	            },
	            backgroundColor: 'rgba(245, 245, 245, 0.8)',
	            borderWidth: 1,
	            borderColor: '#ccc',
	            padding: 10,
	            textStyle: {
	                color: '#000'
	            },
	            position: function (pos, params, el, elRect, size) {
	                var obj = {top: 10};
	                obj[['left', 'right'][+(pos[0] < size.viewSize[0] / 2)]] = 30;
	                return obj;
	            },
	            extraCssText: 'width: 170px'
	        },
	        axisPointer: {
	            link: {xAxisIndex: 'all'},
	            label: {
	                backgroundColor: '#777'
	            }
	        },
	        toolbox: {
	            feature: {
	                dataZoom: {
	                    yAxisIndex: false
	                },
	                brush: {
	                    type: ['lineX', 'clear']
	                }
	            }
	        },
	        brush: {
	            xAxisIndex: 'all',
	            brushLink: 'all',
	            outOfBrush: {
	                colorAlpha: 0.1
	            }
	        },
	        grid: [
	            {
	                left: '10%',
	                right: '8%',
	                height: '50%'
	            },
	            {
	                left: '10%',
	                right: '8%',
	                top: '63%',
	                height: '16%'
	            }
	        ],
	        xAxis: [
	            {
	                type: 'category',
	                data: data.categoryData,
	                scale: true,
	                boundaryGap : false,
	                axisLine: {onZero: false},
	                splitLine: {show: false},
	                splitNumber: 20,
	                min: 'dataMin',
	                max: 'dataMax',
	                axisPointer: {
	                    z: 100
	                }
	            },
	            {
	                type: 'category',
	                gridIndex: 1,
	                data: data.categoryData,
	                scale: true,
	                boundaryGap : false,
	                axisLine: {onZero: false},
	                axisTick: {show: false},
	                splitLine: {show: false},
	                axisLabel: {show: false},
	                splitNumber: 20,
	                min: 'dataMin',
	                max: 'dataMax',
	                axisPointer: {
	                    label: {
	                        formatter: function (params) {
	                            var seriesValue = (params.seriesData[0] || {}).value;
	                            return params.value
	                            + (seriesValue != null
	                                ? '\n' + echarts.format.addCommas(seriesValue)
	                                : ''
	                            );
	                        }
	                    }
	                }
	            }
	        ],
	        yAxis: [
	            {
	                scale: true,
	                splitArea: {
	                    show: true
	                }
	            },
	            {
	                scale: true,
	                gridIndex: 1,
	                splitNumber: 2,
	                axisLabel: {show: false},
	                axisLine: {show: false},
	                axisTick: {show: false},
	                splitLine: {show: false}
	            }
	        ],
	        dataZoom: [
	            {
	                type: 'inside',
	                xAxisIndex: [0, 1],
	                start: 98,
	                end: 100
	            },
	            {
	                show: true,
	                xAxisIndex: [0, 1],
	                type: 'slider',
	                top: '85%',
	                start: 98,
	                end: 100
	            }
	        ],
	        series: [
	            {
	                name: 'Dow-Jones index',
	                type: 'candlestick',
	                data: data.values,
	                itemStyle: {
	                    normal: {
	                        borderColor: null,
	                        borderColor0: null
	                    }
	                },
	                tooltip: {
	                    formatter: function (param) {
	                        param = param[0];
	                        return [
	                            'Date: ' + param.name + '<hr size=1 style="margin: 3px 0">',
	                            'Open: ' + param.data[0] + '<br/>',
	                            'Close: ' + param.data[1] + '<br/>',
	                            'Lowest: ' + param.data[2] + '<br/>',
	                            'Highest: ' + param.data[3] + '<br/>'
	                        ].join('');
	                    }
	                }
	            },
	            {
	                name: 'MA5',
	                type: 'line',
	                data: calculateMA(5, data),
	                smooth: true,
	                lineStyle: {
	                    normal: {opacity: 0.5}
	                }
	            },
	            {
	                name: 'MA10',
	                type: 'line',
	                data: calculateMA(10, data),
	                smooth: true,
	                lineStyle: {
	                    normal: {opacity: 0.5}
	                }
	            },
	            {
	                name: 'MA20',
	                type: 'line',
	                data: calculateMA(20, data),
	                smooth: true,
	                lineStyle: {
	                    normal: {opacity: 0.5}
	                }
	            },
	            {
	                name: 'MA30',
	                type: 'line',
	                data: calculateMA(30, data),
	                smooth: true,
	                lineStyle: {
	                    normal: {opacity: 0.5}
	                }
	            },
	            {
	                name: 'Volumn',
	                type: 'bar',
	                xAxisIndex: 1,
	                yAxisIndex: 1,
	                data: data.volumns
	            }
	        ]
	    }, true);
	
	    // myChart.on('brushSelected', renderBrushed);
	
	    // function renderBrushed(params) {
	    //     var sum = 0;
	    //     var min = Infinity;
	    //     var max = -Infinity;
	    //     var countBySeries = [];
	    //     var brushComponent = params.brushComponents[0];
	
	    //     var rawIndices = brushComponent.series[0].rawIndices;
	    //     for (var i = 0; i < rawIndices.length; i++) {
	    //         var val = data.values[rawIndices[i]][1];
	    //         sum += val;
	    //         min = Math.min(val, min);
	    //         max = Math.max(val, max);
	    //     }
	
	    //     panel.innerHTML = [
	    //         '<h3>STATISTICS:</h3>',
	    //         'SUM of open: ' + (sum / rawIndices.length).toFixed(4) + '<br>',
	    //         'MIN of open: ' + min.toFixed(4) + '<br>',
	    //         'MAX of open: ' + max.toFixed(4) + '<br>'
	    //     ].join(' ');
	    // }
	
	    myChart.dispatchAction({
	        type: 'brush',
	        areas: [
	            {
	                brushType: 'lineX',
	                coordRange: ['2016-06-02', '2016-06-20'],
	                xAxisIndex: 0
	            }
	        ]
	    });
	}); */
  		
  		var myChart = echarts.init(document.getElementById('main'));
  		
    	var base = new Date();
		//var oneDay = 24 * 3600 * 1000;//天
		var oneDay = 1* 3600 * 1000;//小时
		var date = [];//时间数组
		var data = [1];//假数据
		var now = new Date(base);//包装日期
		var temp=1;
		
		function addData(shift){
			temp++;
			if(temp>23)temp=0;
			console.log(temp);
			now.setHours(now.getHours () + temp);
			console.log(now.getHours ());
			now = [now.getMonth()+1, now.getDate(),now.getHours()].join('/');
			console.log(now);
			date.push(now);
			data.push((Math.random() - 0.4) * 10 + data[data.length-1]);
			console.log("date"+date);
			if (shift) {
		        date.shift();
		        data.shift();
		    }
			now = new Date(new Date(now)); 
			console.log("最后的数据"+now);
		}
		
		
		//循环加入数据
		for (var i = 1; i <100; i++) {
		    addData();
		}
		
		option = {
			 title : {
		        text: '校园环境实时数据',
		        subtext: '数据来源：郑州轻工业学院',
		        x: 'center',
		        align: 'right'
		    },
		    xAxis: {
		    	name: '分钟(min)',
		        type: 'category',
		        boundaryGap: false,
		        data: date
		    },
		    yAxis: {
		    	name: '温度(tem)',
		        boundaryGap: [0, '50%'],
		        type: 'value'
		    },
		    series: [
		        {
		            name:'成交',
		            type:'line',
		            smooth:true,
		            symbol: 'none',
		            stack: 'a',
		            areaStyle: {
		                normal: {}
		            },
		            data: data
		        }
		    ]
		};
		
		//线程
		setInterval(function () {
		    addData(true);
		    
		    myChart.setOption({
		        xAxis: {
		            data: date//加入时间
		        },
		        series: [{
		            name:'成交',
		            data: data//加入数据
		        }]
		    });
		}, 10000);
		
		myChart.setOption(option);
    </script>
</body>
</html>
