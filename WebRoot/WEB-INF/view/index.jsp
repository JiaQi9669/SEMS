<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	
	
	<!-- test -->
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
	
	<!-- 图表保存功能 -->
  	<script type="text/javascript" src="highCharts/exporting.js"></script>
  	<script type="text/javascript" src="highCharts/highcharts-zh_CN.js"></script>
	<!-- endtest -->
	
	<link href="bootstrap-3.3.5-dist/css/bootstrap.min.css" title="" rel="stylesheet" />
	<link title="" href="css/style.css" rel="stylesheet" type="text/css"  />
	<link title="blue" href="css/dermadefault.css" rel="stylesheet" type="text/css"/>
	<link title="green" href="css/dermagreen.css" rel="stylesheet" type="text/css" disabled="disabled"/>
	<link title="orange" href="css/dermaorange.css" rel="stylesheet" type="text/css" disabled="disabled"/>
	<link href="css/templatecss.css" rel="stylesheet" title="" type="text/css" />
	
	<style type="text/css">
		.right-product {
			margin-left: 30px;
			/* padding-left: 10px; */
			height: 680px;
		}
		.row newslist{
			height: 100px;
		}
	</style>
	
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
					<div class="right-product my-index right-full">
				     <div class="container-fluid">
					   <div class="info-center">
				       
				       <!---title----->
				            <div class="info-title">
				              <div class="pull-left">
				                <h4><strong>Administrator，</strong></h4>
				                <p>欢迎登录管理系统！</p>
				              </div>
				              <div class="time-title pull-right">
				                  <div class="year-month pull-left">
				                    <p>星期二</p>
				                    <p><span>2016</span>年8月23日</p>
				                  </div>
				                  <div class="hour-minute pull-right">
				                     <strong>9:00</strong>
				                  </div>
				              </div>
				              <div class="clearfix"></div>
				            </div>
				           <!----content-list----> 
				           <center>
				            <div class="content-list center-block">
				               <div class="row">
				                 <div class="col-md-4">
				                    <div class="content">
				                       <div class="w30 left-icon pull-left">
				                          <span class="glyphicon glyphicon-file blue"></span>
				                       </div>
				                       <div class="w70 right-title pull-right">
				                       <div class="title-content">
				                           <p>访问量</p>
				                           <h3 class="number">90</h3>
				                           <button class="btn btn-default">待我处理<span style="color:red;">12</span></button>
				                       </div>
				                       </div>
				                       <div class="clearfix"></div>
				                    </div>
				                 </div>
				                  <div class="col-md-4">
				                    <div class="content">
				                       <div class="w30 left-icon pull-left">
				                          <span class="glyphicon glyphicon-file violet"></span>
				                       </div>
				                       <div class="w70 right-title pull-right">
				                       <div class="title-content">
				                           <p>设备数</p>
				                           <h3 class="number">90</h3>
				                           <button class="btn btn-default">待我处理<span style="color:red;">12</span></button>
				                       </div>
				                       </div>
				                       <div class="clearfix"></div>
				                    </div>
				                 </div>
				                  <div class="col-md-4">
				                    <div class="content">
				                       <div class="w30 left-icon pull-left">
				                          <span class="glyphicon glyphicon-file orange"></span>
				                       </div>
				                       <div class="w70 right-title pull-right">
				                       <div class="title-content">
				                           <p>新增设备</p>
				                           <h3 class="number">90</h3>
				                           <button class="btn btn-default">待我处理<span style="color:red;">12</span></button>
				                       </div>
				                       </div>
				                       <div class="clearfix"></div>
				                    </div>
				                 </div>
				                  <!-- <div class="col-md-3">
				                    <div class="content">
				                       <div class="w30 left-icon pull-left">
				                          <span class="glyphicon glyphicon-file green"></span>
				                       </div>
				                       <div class="w70 right-title pull-right">
				                       <div class="title-content">
				                           <p>待办事项</p>
				                           <h3 class="number">90</h3>
				                           <button class="btn btn-default">待我处理<span style="color:red;">12</span></button>
				                       </div>
				                       </div>
				                       <div class="clearfix"></div>
				                    </div>
				                 </div> -->
				               </div>
				               
				               
				               <!-------信息列表------->
				               <div class="row newslist" style="margin-top:20px;">
				                 <div class="col-md-12">
				                   <div class="panel panel-default">
				                      <div class="panel-heading">
				                       	通知<div class="caret"></div>
				                       <a href="#" class="pull-right"><span class="glyphicon glyphicon-refresh"></span></a>
				                      </div>     
				                      <div class="panel-body">
				                           <div class="w15 pull-left">
				                             <img src="img/noavatar_middle.gif" width="25" height="25" alt="图片" class="img-circle">
				                             	安妮
				                           </div>
				                           <div class="w55 pull-left">系统需要升级</div>
				                           <div class="w20 pull-left text-center">2016年8月23日</div>
				                          <div class="w10 pull-left text-center"><span class="text-green-main">处理中</span></div>
				                      </div>
				                      
				                      <div class="panel-body">
				                           <div class="w15 pull-left">
				                             <img src="img/noavatar_middle.gif" width="25" height="25" alt="图片" class="img-circle">
				                             安妮
				                           </div>
				                           <div class="w55 pull-left">系统需要升级</div>
				                           <div class="w20 pull-left text-center">2016年8月23日</div>
				                          <div class="w10 pull-left text-center"><span class="text-green-main">处理中</span></div>
				                      </div>
				                      
				                      <div class="panel-body text-center">
				                          <a href="#" style="color:#5297d6;">查看全部</a>
				                      </div>
				                      
				                    </div>
				                 </div>
				                 
				               </div>
				            </div>
				            </center>
				       </div>			
					 </div>
				  </div>
				</div>
				<script type="text/javascript">
				$(function(){
				/*换肤*/
				$(".dropdown .changecolor li").click(function(){
					var style = $(this).attr("id");
				    $("link[title!='']").attr("disabled","disabled"); 
					$("link[title='"+style+"']").removeAttr("disabled"); 
				
					$.cookie('mystyle', style, { expires: 7 }); // 存储一个带7天期限的 cookie 
				})
				var cookie_style = $.cookie("mystyle"); 
				if(cookie_style!=null){ 
				    $("link[title!='']").attr("disabled","disabled"); 
					$("link[title='"+cookie_style+"']").removeAttr("disabled"); 
				} 
				/*左侧导航栏显示隐藏功能*/
				$(".subNav").click(function(){				
							/*显示*/
							if($(this).find("span:first-child").attr('class')=="title-icon glyphicon glyphicon-chevron-down")
							{
								$(this).find("span:first-child").removeClass("glyphicon-chevron-down");
							    $(this).find("span:first-child").addClass("glyphicon-chevron-up");
							    $(this).removeClass("sublist-down");
								$(this).addClass("sublist-up");
							}
							/*隐藏*/
							else
							{
								$(this).find("span:first-child").removeClass("glyphicon-chevron-up");
								$(this).find("span:first-child").addClass("glyphicon-chevron-down");
								$(this).removeClass("sublist-up");
								$(this).addClass("sublist-down");
							}	
						// 修改数字控制速度， slideUp(500)控制卷起速度
					    $(this).next(".navContent").slideToggle(300).siblings(".navContent").slideUp(300);
					})
				/*左侧导航栏缩进功能*/
				$(".left-main .sidebar-fold").click(function(){
				
					if($(this).parent().attr('class')=="left-main left-full")
					{
						$(this).parent().removeClass("left-full");
						$(this).parent().addClass("left-off");
						
						$(this).parent().parent().find(".right-product").removeClass("right-full");
						$(this).parent().parent().find(".right-product").addClass("right-off");
						
						}
					else
					{
						$(this).parent().removeClass("left-off");
						$(this).parent().addClass("left-full");
						
						$(this).parent().parent().find(".right-product").removeClass("right-off");
						$(this).parent().parent().find(".right-product").addClass("right-full");
						
						}
					})	
				 
				  /*左侧鼠标移入提示功能*/
						$(".sBox ul li").mouseenter(function(){
							if($(this).find("span:last-child").css("display")=="none")
							{$(this).find("div").show();}
							}).mouseleave(function(){$(this).find("div").hide();})	
				})
				</script>
						
				</div><!-- /.main-content -->

			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

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
