<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>增加毕业生就业信息</title>
    
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
 <style>

*{
	margin:0;
	padding:0;
	font-family:"微软雅黑";
	font-size:12px;
}
.box{
	width:390px;
	height:480px;
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
//			gid
				var gid = document.getElementById("gid");			
				if(gid.value==''){
					alert('gid不能为空');
					gid.focus();
					return false;
				}else{
					var vgid=/(^[\-0-9][0-9]*(.[0-9]+)?)$/;
				    if (!vgid.test(gid.value)) {
					    alert('gid 只能是2-10个数字');
					    gid.focus();
					    return false; 
				    }
				}		
//			employmentTime
				var employmentTime = document.getElementById("employmentTime");			
				if(employmentTime.value==''){
					alert('employmentTime不能为空');
					employmentTime.focus();
					return false;
				}else{
					var vemploymentTime = /^[0-9]+(?:[\_\.\-])+[0-9]+(?:[\_\.\-])+[0-9]+$/i;
					if(!vemploymentTime.test(employmentTime.value)){
						alert('employmentTime格式错误，形式为：xxxx-xx-xx');
						employmentTime.focus();
						return false;
					}
				}					 					
			
//			workPlace
				var workPlace = document.getElementById('workPlace');
				if(workPlace.value==''){
					alert('workPlace不能为空');
					workPlace.focus();
					return false;
				}else{
					var vworkPlace = /^[\u4e00-\u9fa5]+$/;
					if(!vworkPlace.test(workPlace.value)){
						alert('workPlace必须由中文组成');
						workPlace.focus();
						return false;				
					}
				}
				
//			workNature
				var workNature = document.getElementById('workNature');
				if(workNature.value==''){
					alert('workNature不能为空');
					workNature.focus();
					return false;
				}else{
					var vworkNature = /^[\u4e00-\u9fa5]+$/;
					if(!vworkNature.test(workNature.value)){
						alert('workNature必须由中文组成');
						workNature.focus();
						return false;				
					}
				}
//			duty
				var duty = document.getElementById('duty');
				if(duty.value==''){
					alert('duty不能为空');
					duty.focus();
					return false;
				}else{
					var vduty = /^[\u4e00-\u9fa5]+$/;
					if(!vduty.test(duty.value)){
						alert('duty必须由中文组成');
						duty.focus();
						return false;				
					}
				}
			
//			address
				var address = document.getElementById('address');
				if(address.value==''){
					alert('address不能为空');
					address.focus();
					return false;
				}else{
					var vaddress = /^[\u4e00-\u9fa5]+$/;
					if(!vaddress.test(address.value)){
						alert('address必须由中文组成');
						address.focus();
						return false;				
					}
				}
		   politicalOutlook
		   
		}
		   				
		</script>
</head>

<body>
<form action="addWork" method="post" onsubmit="return check(this)">
<div class="box">
	<h2>添加毕业生基本信息</h2><br><br>
    <div class="input_box">
    	<input type="text" name="gid2" id="gid" placeholder="请输入gid" />
    </div>
    <div class="input_box">
    	<input type="text" name="employmentTime" id="employmentTime" placeholder="请输入employmentTime" />
    </div>
    <div class="input_box">
    	<input type="text" name="workPlace" id="workPlace" placeholder="请输入workPlace" />
    </div>
    <div class="input_box">
    	<input type="text" name="workNature" id="workNature" placeholder="请输入workNature"/>
    </div>
    <div class="input_box">
    	<input type="text" name="duty" id="duty" placeholder="请输入duty"/>
    </div>
    <div class="input_box">
    	<input type="text" name="address" id="address" placeholder="请输入address" />
    </div>
    <div class="input_box">
    	<button>提交</button>
    </div>
</div>
</form>
  </body>
</html>
