<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <title>U闲交易平台</title>
	<link rel="stylesheet" type="text/css" href="css/list.css">
	<link rel="icon" href="images/icon.ico">
	<base href="<%=basePath%>"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link href="<%=basePath %>css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/jquery1.42.min.js"></script>
    <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
	
	<script type="text/javascript">
	$(function(){
    	$.ajax({
    	url:'SelectList',
    	dataType:'json',
    	success:function(data)
    		{
    			var str="";
				for(var i=0;i<data.length;i++)
				{
					str+=
					"<tr>"+
					"<td>"+data[i].id+"</td>"+
					"<td>"+data[i].name+"</td>"+
					'<td><img style="width:100px;height:100px;" src="idleimg/'+data[i].idleimg+'"></td>'+
					"<td>"+data[i].amount+"</td>"+
					"<td>¥"+data[i].transfer_price+"</td>"+
					"</tr>"
				}$('#tb1').html(str);
				},
				error:function()
				{
				alert('请求失败')
				},
    			
    	});
    });
	</script>
	
  </head>


<body>   
    <!-- header -->
    <div class="header">
        <div class="header_main wrap">
            <h1><a href="#"><img src="images/logo-2.png"></a></h1>
            <h2>让你的闲置游起来!</h2>
            <ul class="header_menu clearfix">
                <li><a href="index.html" target="_blank">首页</a></li>
                <li><a href="#">手机二手</a></li>
                <li><a href="#">二手车估价</a></li>
                <li><a href="#">降降降</a></li>
                <li><a href="publish" target="_blank">发布闲置</a></li>
                <li class="header_wdxz">
                    <a href="#" class="active">我的闲置</a>
                    <ul class="header_xz">  
                        <li><a href="#">出售中：<span>0</span></a></li>  
                        <li><a href="#">交易中：<span>0</span></a></li>  
                        <li><a href="#">新留言：<span>0</span></a></li>
                        <li><a href="#">新会话：<span>0</span></a></li>    
                    </ul> 
                </li>
                <li class="header_mycenter">
                    <a href="#">个人中心</a>
                    <ul class="header_center">  
                        <li><a href="#">完善个人信息</a></li>  
                        <li><a href="#">修改密码</a></li>  
                        <li><a href="#">我的收藏</a></li>  
                    </ul> 
                </li>
                <li class="quit"><a href="javascript:void(0)">退出</a></li>
            </ul>
        </div>
    </div> 


    <!-- 表格 -->
   <table class="list_table">
    	<thead>
        <tr>
            <th>序号</th>
            <th>宝贝</th>
            <th>图片</th>
            <th>数量</th>
            <th>总价</th>
        </tr>
        </thead>
        <tbody id="tb1">
        
        
        </tbody>
    </table>

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
        <a href="#" target="_blank"><img src="images/ft1.gif"></a>
        <a href="#" target="_blank"><img src="images/ft_01.jpg"></a>
        <a href="#" target="_blank"><img src="images/ft_03.jpg"></a>
        <a href="#" target="_blank"><img src="images/ft_05.jpg"></a>
        <a href="#" target="_blank"><img src="images/ft_07.jpg"></a>
        <a href="#" target="_blank"><img src="images/ft_09.jpg"></a>
        <a href="#" target="_blank"><img src="images/ft_11.jpg"></a>
        <a href="#" target="_blank"><img src="images/ft_13.jpg"></a>
        <a href="#" target="_blank"><img src="images/ft_15.jpg"></a>
    </div>
</body>
</html>