<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <!-- 设备 -->
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
	<style type="text/css">
		td {
			background-color: #ffffff;
		}
	</style>
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
							<li class="active">设备管理</li>
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
										<h4 class="smaller">设备管理</h4>
									</div>
									<div class="widget-body">
										<div class="widget-main">
											<div class="control-group">
												<!-- <label class="control-label bolder blue">展示条件</label> -->
												
												<!-- start -->
												<div class="table-margin">
							                      <table class="table table-bordered table-header text-center">
							                      <thead>
							                         <tr class="bolder">
							                           <td>编号</td>
							                           <td class="w70">设备名</td>
							                           <td class="w15">描述信息</td>
							                           <td class="w15">IP地址</td>
							                           <td class="w15">精度</td>
							                           <td class="w15">纬度</td>
							                           <td class="w15">上线时间</td>
							                           <td class="w15">离线时间</td>
							                           <td class="w15">操作</td>
							                         </tr>
							                         </thead>
							                         <tbody style="color: #000;">
							                         <s:iterator value="pageBean.recordList" var="n" status="indexs">
							                         <tr>
							                          <td>${indexs.index+1 }</td>
							                          <td>${name }</td>
							                          <td>${info }</td>
							                          <td>${ip }</td>
							                          <td>
							                          	  <s:if test="%{tudex != null }">${tudex }</s:if>
							                          	  <s:else>--</s:else>
							                          </td>
							                          <td>
							                          	  <s:if test="%{tudey != null }">${tudey }</s:if>
							                          	  <s:else>--</s:else>
							                          </td>
							                          <td>
							                          	  <s:if test="%{upline != null }">${upline }</s:if>
							                          	  <s:else>--</s:else>
							                          </td>
							                          <td>
							                          	<s:if test="%{upline != null }">
							                          	  <s:if test="%{offline != null }">${offline }</s:if>
							                          	  <s:else>在线</s:else>
							                          	</s:if>
							                          	<s:else>--</s:else>
							                          </td>
							                          <td>
							                          	<a href="deviceupdataview?id=${id }" class="btn btn-warning btn-sm">
															<i class="icon-wrench icon-only bigger-110"></i>
														</a>
							                          	<a href="devicedelete?id=${id }" onclick="return confirm('确认删除此设备吗？');" class="btn btn-default btn-sm">
															<i class="icon-trash icon-only bigger-110"></i>
														</a>
							                          </td>
							                          </tr>
							                         </s:iterator>
							                         </tbody>
							                         <tfoot>
							                          <tr>
															<td colspan="9">
																<div class="pull-right">
								                                  <nav>
								                                      <ul class="pagination">
								                                      <li>
								                                          <a href="admindevice?pageNum=0" aria-label="Previous">
								                                            <span aria-hidden="true">&laquo;</span>
								                                          </a>
								                                        </li>
								                                      <s:iterator begin="pageBean.beginPageIndex" end="pageBean.endPageIndex" var="pageNums">
								                                        <li>
																			<c:if test="${pageBean.currentPage == pageNums }">
																				<a class="cur">${pageNums }</a>
																			</c:if> 
																			<c:if test="${pageBean.currentPage != pageNums }">
																				<a href="admindevice?pageNum=${pageNums }">${pageNums }</a>
																			</c:if>
																		</li>
																		</s:iterator>
																		<li>
								                                          <a href="admindevice?pageNum=${pageBean.pageCount }" aria-label="Next">
								                                            <span aria-hidden="true">&raquo;</span>
								                                          </a>
								                                        </li>
								                                      </ul>
								                                  </nav>
								                              </div>
															</td>
							                          </tr>
							                         </tfoot>
							                      </table>
							                    </div>
												<!-- end -->
												
												<!-- <div class="form-actions center">
														<button type="button" class="btn btn-sm btn-success">
															Submit
														<i class="icon-arrow-right icon-on-right bigger-110"></i>
													</button>
												</div> -->
											</div>
										</div>
									</div>
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
