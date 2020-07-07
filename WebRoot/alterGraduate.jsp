<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String gid=request.getParameter("gid");
String gname=request.getParameter("gname");
String gsex=request.getParameter("gsex");
String nation=request.getParameter("nation");
String nativePlace=request.getParameter("nativePlace");
String graduationTime=request.getParameter("graduationTime");
String major=request.getParameter("major");
String politicalOutlook=request.getParameter("politicalOutlook");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改毕业生基本信息页面</title>
    
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
       <br><center><h2>修改毕业生基本信息</h2></center>
       <center>
       <form action="alterGraduate" method="post" class="form" onsubmit="return check(this)">
		gid	<div><input type="text" name="gid" readonly="readonly" value="<%=gid %>" /><br /></div>
	 gname  <div><input type="text" name="gname" id="gname" value="<%=gname %>" /><br /></div>
       gsex	<div><input type="text" name="gsex" id="gsex" value="<%=gsex %>" /><br /></div>						
	nation	<div><input type="text" name="nation" id="nation" value="<%=nation%>" /><br />	</div>					
nativePlace	<div><input type="text" name="nativePlace" id="nativePlace" value="<%=nativePlace %>" /><br /></div>
graduationTime	<div><input type="text" name="graduationTime" id="graduationTime" value="<%=graduationTime%>"/><br /></div>
	major	<div><input type="text" name="major" id="major" value="<%=major%>"/><br /></div>
politicalOutlook <div><input type="text" name="politicalOutlook" id="politicalOutlook" value="<%=politicalOutlook%>"  /><br /></div>
			<br><br>
			<div><input type="submit" value="提交" class="submit" /></div>
		</form>
		</center>
		
		<script type="text/javascript">
		function check(){
//			gname
				var gname = document.getElementById("gname");			
				if(gname.value==''){
					alert('gname不能为空');
					gname.focus();
					return false;
				}else{
					var vname=(/^[a-zA-Z\u4e00-\u9fa5]{2,10}$/);
				    if (!vname.test(name.value)) {
					    alert('gname 2-10个字，只能是中文或英文');
					    gname.focus();
					    return false; 
				    }
				}					 					
			
//			gsex
				var gsex = document.getElementById('gsex');
				if(gsex.value==''){
					alert('gsex不能为空');
					gsex.focus();
					return false;
				}else{
					//var sex1 = /^[\男]+$/;
					var sex = /^['男'|'女']$/ ;
        			//var sex2 = /^[\女]+$/;
					if(!sex.test(gsex.value)){
						alert('gsex必须是男或女');
						gsex.focus();
						return false;
					}
				}
				
//			nation
				var nation = document.getElementById('nation');
				if(nation.value==''){
					alert('nation不能为空');
					nation.focus();
					return false;
				}else{
					var vnation = /^[\u4e00-\u9fa5]+$/;
					if(!vnation.test(nation.value)){
						alert('nation必须由中文组成');
						nation.focus();
						return false;				
					}
				}
//			nativePlace
				var nativePlace = document.getElementById('nativePlace');
				if(nativePlace.value==''){
					alert('nativePlace不能为空');
					nativePlace.focus();
					return false;
				}else{
					var vnativePlace = /^[\u4e00-\u9fa5]+$/;
					if(!vnativePlace.test(nativePlace.value)){
						alert('nativePlace必须由中文组成');
						nativePlace.focus();
						return false;				
					}
				}
			
//			graduationTime
				var graduationTime = document.getElementById('graduationTime');
				if(graduationTime.value==''){
					alert('graduationTime不能为空');
					graduationTime.focus();
					return false;
				}else{
					var vgraduationTime = /^[0-9]+(?:[\_\.\-])+[0-9]+(?:[\_\.\-])+[0-9]+$/i;
					if(!vgraduationTime.test(graduationTime.value)){
						alert('graduationTime格式错误,形式为：xxxx-xx-xx');
						graduationTime.focus();
						return false;
					}
				}
//			major
				var major = document.getElementById('major');
				if(major.value==''){
					alert('major不能为空');
					major.focus();
					return false;
				}else{
					var vmajor = /^[\u4e00-\u9fa5]+$/;
					if(!vmajor.test(major.value)){
						alert('major必须由中文组成');
						major.focus();
						return false;				
					}
				}
//	     politicalOutlook
		   var politicalOutlook = document.getElementById('politicalOutlook');
				if(politicalOutlook.value==''){
					alert('politicalOutlook不能为空');
					politicalOutlook.focus();
					return false;
				}else{
					var vpoliticalOutlook = /^[\u4e00-\u9fa5]+$/;
					if(!vpoliticalOutlook.test(politicalOutlook.value)){
						alert('politicalOutlook必须由中文组成');
						politicalOutlook.focus();
						return false;				
					}
				}
		   politicalOutlook
		   
		}
		   				
		</script>
       
   </body>
</html>
