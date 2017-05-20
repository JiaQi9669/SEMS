<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <!-- 地图查看 -->
    <title>校园环境监测系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  </head>
  
  <body>
  
  		<!-- 组装头部 -->
  		<jsp:include page="/head.jsp"></jsp:include>
  		
  		
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed');}catch(e){}
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
							try{ace.settings.check('breadcrumbs' , 'fixed');}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="#">首页</a>
							</li>
							<li class="active">校园环境</li>
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
									<!-- 地图控件加入 -->
									<div id="allmap"></div>
									<!-- <div class="widget-header">
										<h4 class="smaller">条件</h4>
									</div>
									<div class="widget-body">
										<div class="widget-main">
											<div class="control-group">
													
											</div>
										</div>
									</div> -->
								</div>
							</div>
						</div>
						
						
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->

			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->
		
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
	
	<script src="highCharts/highcharts.js"></script>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=74FDNzLdC64Hw4tlrZGwv3hGH3jn6fbc"></script>
	<style type="text/css">
		body, html,#allmap {width: 100%;height: 100%;overflow: hidden;margin:0;font-family:"微软雅黑";}
		.page-content{
			padding:0px 15px 0px;
		}
	</style>
  	<!-- <script type="text/javascript" src="js/jquery.min.js"></script> -->

		<!-- basic scripts -->

		<!--[if !IE]> -->

		<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script> -->

		<!-- <![endif]-->

		<!--[if IE]>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<![endif]-->

		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='js/jquery.min.js'>"+"<"+"script>");
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
		
		var obj;//实时数据
		var label;
		var label_flag=false;
		var center;
		
		/* var opts = {
		  width : 100,     // 信息窗口宽度
		  height: 70,     // 信息窗口高度
		  title : "--" , // 信息窗口标题
		  enableMessage:true,//设置允许信息窗发送短息
		  message:"---"
		}; */
		
		/* if(!new BMap.Map("allmap",{mapType:BMAP_HYBRID_MAP})){//检查网络
			alert("无法连接网络，请检查");
		} */
		// 百度地图API功能
		var map = new BMap.Map("allmap",{mapType:BMAP_HYBRID_MAP}); //BMAP_SATELLITE_MAP 卫星图 // 创建Map实例
		
		//添加节点
		function createPoint(objs,myWindow){
			//添加节点
			var point = new BMap.Point(parseFloat(objs.device.tudex),parseFloat(objs.device.tudey));
			//alert(parseFloat(objs.device.tudex)+"-"+parseFloat(objs.device.tudey));
			map.centerAndZoom(point,17);
			var marker = new BMap.Marker(point);  // 创建标注
			map.addOverlay(marker);
			//追踪中心点
			/* if(parseFloat(objs.device.tudex)==113.515489&&parseFloat(objs.device.tudey)==34.817429){
				center=point;
				map.panTo(point);
				//alert("center");
			} */
			
			// 设置地图中心点
            //mMapController.setCenter(myPoint);
			marker.addEventListener("mouseover", function(){ 
			map.openInfoWindow(myWindow,point); //开启信息窗口
			});
			marker.addEventListener("mouseout", function(){
				if(!label_flag){
					if(myWindow){
						myWindow.close();
					}
				}
			});
			marker.addEventListener("click", function(){
				label_flag=!label_flag;
			});
		}
		
		//自启动实例
		window.onload=function(){
			asyn();
			setInterval(function(){
				asyn();
			}, 10000);
		};
		
		//异步加载数据
		function asyn(){
			$.ajax({
                    type : "post",
                    url : "${pageContext.request.contextPath}/asynmaps",
                    data : {//发出的数据//userName : userName
                    },
                    dataType:"json",
                    success : function(data) {
                    	obj = $.parseJSON(data);
                    	var temp;
                    	//交换节点
                    	for(var i=0;i<obj.maps.length;i++){
                    		if(i!=(obj.maps.length-1)){
	                    		if(parseFloat(obj.maps[i].device.tudex)==113.515489&&parseFloat(obj.maps[i].device.tudey)==34.817429){
									temp=obj.maps[i];
									obj.maps[i]=obj.maps[obj.maps.length-1];
									obj.maps[obj.maps.length-1]=temp;
								}
							}
                    	}
                    	
                    	for(var i=0;i<obj.maps.length;i++){
                    		var opts = {
								  width : 130,     // 信息窗口宽度
								  height: 100,     // 信息窗口高度
								  title : "<b>"+obj.maps[i].device.name+"</b>  "+obj.maps[i].date , // 信息窗口标题
								  enableMessage:true,//设置允许信息窗发送短息
								  message: obj.maps[i].device.name
								};
                    		//var infoWindow = new BMap.InfoWindow("<label style='color:blue;'>温度：</label>"+obj.maps[i].tem+"&nbsp;&nbsp;<label style='color:blue;'>湿度：</label>"+obj.maps[i].hum+"&nbsp;&nbsp;<label style='color:blue;'>PM2.5：</label>"+obj.maps[i].pm25+"<br><label style='color:blue;'>烟雾：</label>"+obj.maps[i].smog+"&nbsp;&nbsp;<label style='color:blue;'>光照：</label>"+obj.maps[i].light+"&nbsp;&nbsp;<label style='color:blue;'>噪声：</label>"+obj.maps[i].noise, opts);
                    		createPoint(obj.maps[i],new BMap.InfoWindow("<label style='color:blue;'>温度：</label>"+obj.maps[i].tem+"&nbsp;&nbsp;<label style='color:blue;'>湿度：</label>"+obj.maps[i].hum+"&nbsp;&nbsp;<label style='color:blue;'>PM2.5：</label>"+obj.maps[i].pm25+"<br><label style='color:blue;'>烟雾：</label>"+obj.maps[i].smog+"&nbsp;&nbsp;<label style='color:blue;'>光照：</label>"+obj.maps[i].light+"&nbsp;&nbsp;<label style='color:blue;'>噪声：</label>"+obj.maps[i].noise+"<br><a href='viewtime'>实时数据</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href='viewall'>综合统计</a>", opts));
                    	};
                    },
                    error : function() {
                        alert("异步请求失败！");
                    }
                });
		};
		
		/* //通用设置
		var opts = {
		  width : 100,     // 信息窗口宽度
		  height: 70,     // 信息窗口高度
		  title : "--" , // 信息窗口标题
		  enableMessage:true,//设置允许信息窗发送短息
		  message:"---"
		};
		
		
		//加入定位点-动态追踪-图书馆（中心）
		var point = new BMap.Point(113.515489, 34.817429);
		map.centerAndZoom(point,17);
		var marker = new BMap.Marker(point);  // 创建标注
		map.addOverlay(marker);               // 将标注添加到地图中
		
		//提示窗口
		var infoWindow = new BMap.InfoWindow("----", opts);  // 创建信息窗口对象 
		
		marker.addEventListener("mouseover", function(){ 
			map.openInfoWindow(infoWindow,point); //开启信息窗口
		});
		marker.addEventListener("mouseout", function(){
			if(!label_flag){
				if(infoWindow){
					infoWindow.close();
				}
			}
		});
		marker.addEventListener("click", function(){
			label_flag=!label_flag;
		}); */
		
		/* //南门
		var point01=new BMap.Point(113.515731, 34.814576);
		map.centerAndZoom(point01,17);
		var marker01 = new BMap.Marker(point01);  // 创建标注
		map.addOverlay(marker01);
		var label = new BMap.Label("南门检测设备<br>温度：10<br>湿度：100<br>PM2.5：99<br>光照：100",{offset:new BMap.Size(20,-10)});
		marker01.setLabel(label);
		marker01.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
	
		//北门
		var point02=new BMap.Point(113.515426, 34.820563);
		map.centerAndZoom(point02,17);
		var marker02 = new BMap.Marker(point02);  // 创建标注
		map.addOverlay(marker02);
		marker02.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
	
		//西门
		var point03=new BMap.Point(113.512354, 34.81717);
		map.centerAndZoom(point03,17);
		var marker03 = new BMap.Marker(point03);  // 创建标注
		map.addOverlay(marker03);
		marker03.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
	
		//东门
		var point04=new BMap.Point(113.519001, 34.817747);
		map.centerAndZoom(point04,17);
		var marker04 = new BMap.Marker(point04);  // 创建标注
		map.addOverlay(marker04);
		marker04.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画 */
	
		//总定位
		map.centerAndZoom(new BMap.Point(113.515489, 34.816629), 17);  // 初始化地图,设置中心点坐标和地图级别
		map.addControl(new BMap.MapTypeControl());   //添加地图类型控件
		map.setCurrentCity("郑州");          // 设置地图显示的城市 此项是必须设置的
		map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
	</script>
  </body>
</html>