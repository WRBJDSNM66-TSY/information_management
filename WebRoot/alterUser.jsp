<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String id=request.getParameter("id");
String accountNumber=request.getParameter("accountNumber");
String password=request.getParameter("password");
String role=request.getParameter("role");
String gid=request.getParameter("gid");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改用户信息页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
			form{width: 500px;overflow: hidden;margin: 50px auto;}
			div{line-height: 40px;}
			input{width: 250px;padding-left: 10px;height: 30px;
			line-height: 30px;color: #333;font-size: 14px;
			border: 1px solid #666;outline: none;margin-bottom: 10px;display: inline-block;}
			span{display: inline-block;float: left;}
			.submit{width: 120px;background: #666;color: #fff;margin-left: 70px;cursor: pointer;}

body {
   background:url("images/02.jpg");
   background-repeat: no-repeat;
   background-size: cover;
}

</style>

</head>
   <body> 
       <br><center><h2>修改用户基本信息</h2></center>
       <center>
       <form action="alterUser" method="post" class="form" onsubmit="return check(this)">
id	<div><input type="text" name="id" readonly="readonly" value="<%=id %>" /><br /></div>
accountNumber <div><input type="text" name="accountNumber0" id="accountNumber" value="<%=accountNumber %>" /><br /></div>
password	<div><input type="text" name="password0" id="password" value="<%=password %>" /><br /></div>						
role	<div><input type="text" name="role0" id="role" value="<%=role%>" /><br />	</div>					
gid     <div><input type="text" name="gid0" id="gid" value="<%=gid %>" /><br /></div>
		<br><br>
			<div><input type="submit" value="提交" class="submit" /></div>
		</form>
		</center>
 
<script type="text/javascript">
		function check(){	 	 					
			
//			accountNumber
				var gaccountNumber = document.getElementById('accountNumber');
				if(gaccountNumber.value==''){
					alert('accountNumber不能为空');
					gaccountNumber.focus();
					return false;
				}else{
					 var vaccountNumber = /(^[\-0-9][0-9]*(.[0-9]+)?)$/;			
				    if (!vaccountNumber.test(gaccountNumber.value) || gaccountNumber.value.length > 12 || gaccountNumber.value.length < 0) {
					    alert('accountNumber只能是 0-12个数字');
					    gaccountNumber.focus();
					    return false; 
				    }
				}				
				
//			password
				var gpassword = document.getElementById('password');
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
//			role
				var role = document.getElementById('role');
				if(role.value==''){
					alert('role不能为空');
					role.focus();
					return false;
				}else{									
					if(role.value!="student" && role.value!="admin"){						
						alert('role必须是student或admin');
						role.focus();
						return false;
					}else if(role.value=="student"){
					
var gid = document.getElementById('gid');
if(gid.value==''){
alert('gid不能为空');
gid.focus();
return false;
}else{
var vgid = /(^[\-0-9][0-9]*(.[0-9]+)?)$/;			
if (!vgid.test(gid.value) || gid.value.length > 12 || gid.value.length < 0) {
alert('gid只能是 0-12个数字');
gid.focus();
return false; 
}
}		 

						
					}else if(role.value=="admin"){				 
			
			var gid = document.getElementById('gid');
if(gid.value==''){

}else{
var vgid = /(^[\-0-9][0-9]*(.[0-9]+)?)$/;			
if (!vgid.test(gid.value) || gid.value.length > 12 || gid.value.length < 0) {
alert('gid只能是 0-12个数字');
gid.focus();
return false; 
}
}		 
			
					 					 
					}					
				}
			
			
				
		}
		   				
		</script>

  </body>
</html>
