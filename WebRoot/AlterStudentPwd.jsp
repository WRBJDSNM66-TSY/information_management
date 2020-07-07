<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String a=request.getParameter("account_number");
/*  out.println(a);  */
%> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>学生修改密码界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
<style>
	
body {
   background:url("images/01.jpg");
   background-repeat: no-repeat;
   background-size: cover;
}

</style>
  <script type="text/javascript">
		function check(){
				var gpassword = document.getElementById("password");			
				if(gpassword.value==''){
					alert('password不能为空');
					gpassword.focus();
					return false;
				}else{
				    var vpassword = /(^[\-0-9][0-9]*(.[0-9]+)?)$/;			
				    if (!vpassword.test(gpassword.value) || gpassword.value.length > 12 || gpassword.value.length < 0) {
					    alert('password只能是 0-12个数字');
					    gpassword.focus();
					    return false; 
				    }
				}					 	
       }
</script>
</head>
<body>
<br><br><br><br>
<center>

<form action="AlterPwd" method="post"  onsubmit="return check(this)">
<h2>修改密码</h2>
您的账号<br>
<input type="text" name="accountNumber" readonly="readonly" value="<%=a%>" />
<br><br>
请输入您的新密码<br>
<input type="password" name="password" id="password"  placeholder="请输入新密码" />
<br><br>
<input type="submit" value="提交" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset" value="取消" />
</form>

</center>
 </body>
</html>
