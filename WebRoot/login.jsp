<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title> - 登录</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="shortcut icon" href="favicon.ico"> 
    <link href="login/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="login/css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <link href="login/css/animate.css" rel="stylesheet">
    <link href="login/css/style.css?v=4.1.0" rel="stylesheet">
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <script>if(window.top !== window.self){ window.top.location = window.location;}</script>
</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen  animated fadeInDown">
        <div>
        	<div>
                <h1 class="logo-name">EM</h1>
            </div>
            <h3>欢迎使用环境检测系统</h3>

            <form class="m-t" role="form" action="adminlogin" method="post">
                <div class="form-group">
                    <input type="text" name="account"  class="form-control" placeholder="账号" required="">
                </div>
                <div class="form-group">
                    <input type="password" name="pass" class="form-control" placeholder="密码" required="">
                </div>
                <input type="submit" class="btn btn-primary block full-width m-b" value="登录"/>

                <p class="text-muted text-center"> <a href="#"><small>忘记密码了？</small></a>
                </p>

            </form>
        </div>
    </div>

    <!-- 全局js -->
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.6"></script>

</body>

</html>