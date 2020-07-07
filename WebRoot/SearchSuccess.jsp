<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>按专业划分的专业情况统计</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
<style type="text/css">
		
body {
   background:url("images/06.jpg");
   background-repeat: no-repeat;
   background-size: cover;
}

</style>

  </head>
  
  <body>
     
    <br><br><br><br>
    <center><font color="blue" size="5px">这里是按专业划分的毕业生统计表页面</font>
    <br><hr><br>
    
    <table border="1" cellspacing="0" cellpadding="6"> 
   <tr>          
       <td width="80"height="35" align="center">major</td>
       <td width="80"height="35" align="center">gname</td> 
     </tr>
     
   <s:iterator value="#request.list6"> 
    <tr>                   
       <td width="80"height="35" align="center"><s:property value="major"/></td>     
       <td width="80"height="35" align="center"><s:property value="gname"/></td>     
     </tr>
  </s:iterator>    
  </table>          
   </center>
  </body>
</html>
