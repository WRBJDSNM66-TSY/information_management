<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
    <link rel="stylesheet" href="assets/css/reset.css">
    <link rel="stylesheet" href="assets/css/supersized.css">
    <link rel="stylesheet" href="assets/css/style.css">
        
  </head>

  <body> 

        <div class="page-container">
           <h1>毕 业 生 信 息 管 理 系 统</h1>
 <br><br>  <h1>Login</h1>
            <form action="userAction" method="post" onsubmit="return check(this)">
                <input type="text" name="account_number" id="account_number" class="account_number" placeholder="账号">
                <input type="password" name="password1" id="password" class="password1" placeholder="密码">
                
        <br><br><br>
        <font size="4px">身份  : </font> 
    	<select name="role" size="1.5px" style= "background-color:transparent ">
             <option value="student">student</option>
             <option value="admin">admin</option>
	    </select> 
	    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <a href="foegetPwd.jsp">忘记密码</a> 
                <br>
                <button type="submit">Submit</button>
                
            </form>
         
        </div>

        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/js/supersized.3.2.7.min.js"></script>
        <script src="assets/js/supersized-init.js"></script>
        <script src="assets/js/scripts.js"></script>
  
  
   <script type="text/javascript">
		function check(){
		  var gaccount_number = document.getElementById("account_number");			
				if(gaccount_number.value==''){
					alert('account_number不能为空');
					gaccount_number.focus();
					return false;
				}else{				
				var vaccount_number = /(^[\-0-9][0-9]*(.[0-9]+)?)$/;			
				    if (!vaccount_number.test( gaccount_number.value) || gaccount_number.value.length > 12 || gaccount_number.value.length < 0) {
					    alert('account_number只能是 0-12个数字');
					    gaccount_number.focus();
					    return false; 
				    }
				}			
		
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
  
  </body>
</html>
  
  
<!--   
<style type="text/css">
body{
   background: url("images/01.jpg");
   background-repeat: no-repeat;
   background-size: cover;
}

.add{
  filter:alpha(opacity=50);  
  opacity: 0.7;

  background-color:white;
  height: 300px;
  width: 350px; 
  margin-left: 100px;
  margin-top: 160px;
  margin-right: 600px;
  float: left;

}

</style>

<div class="add">
 <br>               
 <center> <h2>毕业生信息管理系统</h2> </center><br>
 <form action="userAction" method="post">
 <center>
 <font size="4px">账号: </font> <input size="30px" style= "background-color:transparent " type="text" name="account_number"/> <br><br>	
 <font size="4px">密码: </font> <input size="30px" style= "background-color:transparent " type="password" name="password"/>   <br><br> 	
  </center>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <font size="4px">身份: </font> 
    	<select name="role" size="1.5px" style= "background-color:transparent ">
             <option value="student">student</option>
             <option value="admin">admin</option>
	    </select> 
	    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="forgetPwd1.html">忘记密码！</a>
	     
	      <br><br>
 <center>                                      
    	<input type="submit" value="登录" style= "background-color:transparent "/>
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<input type="reset" value="取消" style= "background-color:transparent "/>
 </center>
    </form>
</div>
-->

