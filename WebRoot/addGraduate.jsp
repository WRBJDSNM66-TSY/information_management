<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>增加毕业生基本信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<head>
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
</head>

<body>
<form action="addGraduate" method="post" onsubmit="return check(this)">
<div class="box">
	<h2>添加毕业生基本信息</h2><br><br>
    <div class="input_box">
    	<input type="text" name="gid" id="gid" placeholder="请输入gid" />
    </div>
    <div class="input_box">
    	<input type="text" name="gname" id="gname" placeholder="请输入gname" />
    </div>
    <div class="input_box">
    	<input type="text" name="gsex" id="gsex" placeholder="请输入gsex" />
    </div>
    <div class="input_box">
    	<input type="text" name="nation" id="nation" placeholder="请输入nation" />
    </div>
    <div class="input_box">
    	<input type="text" name="nativePlace" id="nativePlace" placeholder="请输入nativePlace" />
    </div>
    <div class="input_box">
    	<input type="text" name="graduationTime" id="graduationTime" placeholder="请输入graduationTime" />
    </div>
    <div class="input_box">
    	<input type="text" name="major" id="major" placeholder="请输入major" />
    </div>
    <div class="input_box">
    	<input type="text" name="politicalOutlook" id="politicalOutlook" placeholder="请输入politicalOutlook" />
    </div>
    <div class="input_box">
    	<button>提交</button>
    </div>
</div>
</form>
    
  </body>
</html>
