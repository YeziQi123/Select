<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>U闲交易平台</title>
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<link rel="icon" href="image/icon.ico">
</head>
<body>
	<div class="login_header wrap clearfix">
		<h1 class="fl"><a href="#" target="_blank"><img src="image/logo-1.png"></a></h1>
		<div class="safe fl">为确保您账户的安全及正常使用，依《网络安全法》相关要求，6月1日起会员账户需绑定手机。如您还未绑定，请尽快完成，感谢您的理解及支持！</div>
	</div>
	<div class="login_main">
		<div class="wrap">
			<form action="SelectLogin" class="list">
				<div class="login_title">密码登录</div>
				<input type="text" class="name" placeholder="会员名/邮箱/手机号" name="u_account">
				<input type="password" class="password" name="u_password">
				<input type="submit" class="submit">
			</form>
		</div>
	</div>


	<!-- 底部一堆 -->
    <div class="footer_1 wrap">
        <a href="#" target="_blank">关于我们</a>
        <a href="#" target="_blank">合作伙伴</a>
        <a href="#" target="_blank">营销中心</a>
        <a href="#" target="_blank">廉正举报</a>
        <a href="#" target="_blank">联系客服</a>
        <a href="#" target="_blank">开放平台</a>
        <a href="#" target="_blank">诚征英才</a>
        <a href="#" target="_blank">联系我们</a>
        <a href="#" target="_blank">网站地图</a>
        <a href="#" target="_blank">法律声明及隐私权政策</a>
        <a href="#" target="_blank">知识产权</a>
        <span>1999-<i id="year"></i> ujiuye.com 版权所有</span>
        <script type="text/javascript">
            var day = new Date();
            var year = day.getFullYear();
            document.getElementById('year').innerHTML=year;
        </script>
    </div>
    <div class="footer_2 wrap">
        <a href="#" target="_blank"><img src="image1/ft1.gif"></a>
        <a href="#" target="_blank"><img src="image1/ft_01.jpg"></a>
        <a href="#" target="_blank"><img src="image1/ft_03.jpg"></a>
        <a href="#" target="_blank"><img src="image1/ft_05.jpg"></a>
        <a href="#" target="_blank"><img src="image1/ft_07.jpg"></a>
        <a href="#" target="_blank"><img src="image1/ft_09.jpg"></a>
        <a href="#" target="_blank"><img src="image1/ft_11.jpg"></a>
        <a href="#" target="_blank"><img src="image1/ft_13.jpg"></a>
        <a href="#" target="_blank"><img src="image1/ft_15.jpg"></a>
    </div>
</body>
</html>