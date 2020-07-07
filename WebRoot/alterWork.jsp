<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String gid=request.getParameter("gid2");
String employmentTime=request.getParameter("employmentTime");
String workPlace=request.getParameter("workPlace");
String workNature=request.getParameter("workNature");
String duty=request.getParameter("duty");
String address=request.getParameter("address");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改毕业生就业信息页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

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
       <br><center><h2>修改毕业生就业信息</h2></center>
       <center>
       <form action="alterWork" method="post" class="form" onsubmit="return check(this)">
		gid	<div><input type="text" name="gid2" readonly="readonly"  value="<%=gid%>"/><br /></div>
employmentTime	<div><input type="text" name="employmentTime" id="employmentTime"value="<%=employmentTime%>" /><br /></div>
workPlace		<div><input type="text" name="workPlace" id="workPlace"value="<%=workPlace%>"/><br /></div>						
workNature		<div><input type="text" name="workNature" id="workNature"value="<%=workNature%>" /><br />	</div>					
duty			<div><input type="text" name="duty" id="duty" value="<%=duty%>" /><br /></div>
address			<div><input type="text" name="address" id="address" value="<%=address%>" /><br /></div>
			<br><br>
			<div><input type="submit" value="提交" class="submit" /></div>
		</form>
		</center>
		<script type="text/javascript">
		function check(){
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
       
   </body>
</html>
