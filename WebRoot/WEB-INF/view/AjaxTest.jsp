<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AjaxTest.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="echarts/jquery.js"></script>
  </head>
  
  <body>
	 <button class="form-control"  value="提交评论" id="commentSubmit">异步请求</button>
	 
	 <script type="text/javascript">
	 	$('#commentSubmit').click(function() {
                   /*  var userName = $('#userName').val();
                    var commentContent = $('#commentContent').val();
                    var articleID = $('#articleID').val();
                    //alert(articleID);
                    if (userName == "" || commentContent == ""||articleID=="") {
                        alert("昵称和内容都不能为空");
                            return false;
                    } */
				alert("请求已发出");
                $.ajax({
                    type : "post",
                    url : "${pageContext.request.contextPath}/asynnews",
                    data : {
                        /* userName : userName,
                        commentContent : commentContent,
                        articleID : articleID */
                    },
                    dataType:"json",
            
                    success : function(data) {
                    	var obj = $.parseJSON(data);  //使用这个方法解析json
		                //var state_value = obj.result;  //result是和action中定义的result变量的get方法对应的
		    			alert(obj.id+","+obj.date);
                        alert(data);
                        /* $('#commentContent').val("");
                        $('#userName').val(""); */
                        location.reload();
                    },

                    error : function() {
                        alert("评论失败");
                    }
                });
            });
	 </script>
  </body>
</html>
