<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>增加用户页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>

 <style>

*{
	margin:0;
	padding:0;
	font-family:"微软雅黑";
	font-size:12px;
}
.box{
	width:390px;
	height:600px;
	border:solid 1px #ddd;
	background:#FFF;
	position:absolute;
	left:50%;
	top:30%;
	margin-left:-195px;
	margin-top:-160px;
}
.box h2{
	font-weight:normal;
	color:#666;
	font-size:16px;
	line-height:46px;
	height:46px;
	overflow:hidden;
	text-align:center;
	border-bottom:solid 1px #ddd;
	background:#f7f7f7;
}
.input_box{
	width:350px;
	padding-bottom:15px;
	margin:0 auto;
	overflow:hidden;
}
.input_box input{
	float:left;
	width:348px;
	height:40px;
	font-size:14px;
	border:solid 1px #ddd;
	text-indent:10px;
	outline:none;
	line-height:40px;
}
.input_box button{
	width:350px;
	height:48px;
	background:#3f89ec;
	border:none;
	border-radius:2px;
	outline:none;
	cursor:pointer;
	font-size:16px;
	color:#FFF;
}
#error_box{
	height:40px;
	width:350px;
	margin:0 auto;
	line-height:40px;
	color:#fc4343;
}

</style>

<script type="text/javascript">
		function check(){	 	
		 					
//          id
               /*  var id = document.getElementById('id');
				if(id.value==''){
					alert('id不能为空');
					id.focus();
					return false;
				}else{
					 var vid = /(^[\-0-9][0-9]*(.[0-9]+)?)$/;			
				    if (!vid.test(id.value) || id.value.length > 12 || id.value.length < 0) {
					    alert('id只能是 0-12个数字');
					    id.focus();
					    return false; 
				    }
				}				 */

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
</head>

<body>
<form action="addUser" method="post" onsubmit="return check(this)">
<div class="box">
	<h2>添加用户信息</h2><br><br>
    <!-- <div class="input_box">
    	<input type="text" name="id6" id="id" placeholder="请输入id" />
    </div> -->
    <div class="input_box">
    	<input type="text" name="accountNumber6" id="accountNumber" placeholder="请输入accountNumber" />
    </div>
    <div class="input_box">
    	<input type="text" name="password6" id="password" placeholder="请输入password" />
    </div>
    <div class="input_box">
    	<input type="text" name="role6" id="role" placeholder="请输入role" />
    </div>
    <div class="input_box">
    	<input type="text" name="gid6" id="gid" placeholder="请输入gid" />
    </div>
    
    <div class="input_box">
    	<button>提交</button>
    </div>
</div>
</form>  

  </body>
</html>
