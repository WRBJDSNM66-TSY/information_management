<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改密码成功页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   
   <br><br><br>
   <center> <font color="green" size="5px"> 恭喜您，修改密码成功！</font><br><br>
   <font color="blue">请回到主页面重新登录吧！三秒钟自动跳转</font><br>
   <meta http-equiv="refresh" content="3;url=index.jsp"><br>
   <font color="red">若没有跳转，清点击</font><a href="index.jsp"><font color="yellow">主页面</font></a>
   </center>
  </body>
</html>
