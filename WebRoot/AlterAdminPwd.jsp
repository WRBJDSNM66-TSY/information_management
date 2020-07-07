<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String a=request.getParameter("account_number");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>弹出层登录页面</title>

<style>
	
body {
   background:url("images/03.JPG");
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
<form action="AlterPwd" method="post"  onsubmit="return check(this)">
<br><br><br><br>
<center><h2>修改密码</h2>
您的账号<br>
<input type="text"  name="accountNumber" readonly="readonly" value="<%=a %>" />
<br><br>
请输入您的新密码<br>
<input type="password" name="password" id="password"  placeholder="请输入新密码" />
<br><br>
<input type="submit" value="提交" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset" value="取消" />
</center>
</form>
	
</body>
</html>

