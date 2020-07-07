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
    
    <title>学生页面</title>
    
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

  <link href="css/style.css" rel="stylesheet" type="text/css">
    <br><br> <center><font size="6px">欢迎您---同学！</font></center><br>
<div class="o-m">
	<div class="ul-o">
		<ul>
			<li class="li-o"><span></span><p>关于本系统</p><div class="clear"></div><b></b></li>
			<li class="li-t"><span></span><p>我的毕业信息</p><div class="clear"></div><b></b></li>
			<li class="li-s"><span></span><p>我的就业信息</p><div class="clear"></div><b></b></li>
			<li class="li-f"><span></span><p>学校大事件</p><div class="clear"></div><b></b></li>
			<li class="li-w"><span></span><p>热门企业介绍</p><div class="clear"></div><b></b></li>
			<li class="li-l"><span></span><p>登录密码修改</p><div class="clear"></div><b></b></li>
			<div class="li-mask"></div>
		</ul>
	</div>
	<div class="ul-t">
		<li style="display:block">
			<div class="li-top">
				<h5>关于本系统</h5>
				<p>强大视觉冲击力提升网站形象实力 ，出色的高效性 ，吸引眼球打动客户.</p>
			<div class="li-a">
				<a>专业的官网</a>
				<a>产品展示</a>
				<a>文章展示</a>
				<a>地图位置</a>
				<a>走马灯</a>
				<a>全屏浮动</a>
				<a>视频</a>
				<a>多种图文特效</a>
			</div>
				<div class="li-img"><img src="img/n-qyjz-40.gif" /></div>
			</div>
		</li>
		<li>
			<div class="li-top">
				<h5>我的毕业信息</h5><hr>

<table border="1" cellspacing="0" cellpadding="6"> 
 
   <tr>          
       <td width="50" height="35" align="center">gid</td>  
       <td width="50"height="35" align="center">gname</td>
       <td width="50"height="35" align="center">gsex</td>
       <td width="60"height="35" align="center">nation</td>
       <td width="180" height="35"align="center">nativePlace</td>
       <td width="180"height="35" align="center">graduationTime</td> 
       <td width="50"height="35" align="center">major</td>
       <td width="50"height="35" align="center">politicalOutlook</td>    
     </tr>
     
   <s:iterator value="#request.list3">
  
    <tr>          
       <td width="50"height="35" align="center"><s:property value="gid"/></td>  
       <td width="50"height="35" align="center"><s:property value="gname"/></td>
       <td width="50"height="35" align="center"><s:property value="gsex"/></td>
       <td width="60"height="35" align="center"><s:property value="nation"/></td>
       <td width="180"height="35" align="center"><s:property value="nativePlace"/></td>
       <td width="180"height="35" align="center"><s:property value="graduationTime"/> 
       <td width="50"height="35" align="center"><s:property value="major"/></td>
       <td width="80"height="35" align="center"><s:property value="politicalOutlook"/></td>    
     </tr>
  </s:iterator>    
  </table>          
				
				
				<div class="li-img"><img src="img/n-qyjz-47.gif" /></div>
			</div>
		</li>
		<li>
			<div class="li-top">
				<font size="5px" color="blue">我的就业信息</font> &nbsp;&nbsp;&nbsp;
 <font color="red" size="3px">此表为空时，说明您还未就业，可以通过下方了解热门企业。</font> <br><hr>
 <table border="1" cellspacing="0" cellpadding="6"> 
 
   <tr>          
       <td width="50" height="35" align="center">gid</td>  
       <td width="180"height="35" align="center">employmentTime</td>
       <td width="180"height="35" align="center">workPlace</td>
       <td width="60"height="35" align="center">workNature</td>
       <td width="180" height="35"align="center">duty</td>
       <td width="60"height="35" align="center">address</td>   
     </tr>
     
   <s:iterator value="#request.list4">
  
    <tr>          
       <td width="50"height="35" align="center"><s:property value="gid"/></td>  
       <td width="180"height="35" align="center"><s:property value="employmentTime"/></td>
       <td width="180"height="35" align="center"><s:property value="workPlace"/></td>
       <td width="60"height="35" align="center"><s:property value="workNature"/></td>
       <td width="180"height="35" align="center"><s:property value="duty"/></td>
       <td width="60"height="35" align="center"><s:property value="address"/>     
     </tr>
  </s:iterator>    
  </table>          				
				
				<div class="li-img"><img src="img/n-qyjz-48.gif" /></div>
			</div>
		</li>
		<li>
			<div class="li-top">
				<h5>学校大事件</h5>
				<p>方便的沟通工具，实时互动咨询，快速传播力和新闻覆盖率，变流量为知识量；</p><hr>
				<a href="http://news.zzu.edu.cn/"><font color="blue" size="4px">郑州大学新闻</font></a>
				<br><hr>
				<p>1、学校计划部分专业进行扩招</p>
				<p>2、学校加快双一流大学的建设步伐</p>
				<p>3、学校加强德国艾森堡大学合作</p>
				<div class="li-img"><img src="img/n-qyjz-49.gif" /></div>
			</div>
		</li>
		<li>
			<div class="li-top">
				<h5>热门企业介绍</h5>
				<p>强大的热门企业管理，销售、招聘等信息的汇总，促进高质量的、方便的了解企业和促进就业；</p><hr>
			  <font size="4px" color="green">   了解中华之光---</font><a href="https://www.huawei.com/cn/"><font size="4px" color="blue">深圳华为技术有限公司</font></a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="submit.jsp"><font color="red" size="4px">投递简历</font></a>
			  <br><font size="4px" color="green"> 了解中国通讯巨头---</font><a href="https://www.tencent.com/zh-cn/index.html"><font size="4px" color="blue">深圳腾讯科技有限公司</font>
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
<a href="submit.jsp"><font color="red" size="4px">投递简历</font></a>
			<br><font size="4px" color="green">了解中国电商引领者----</font><a href="https://www.alibabagroup.com/cn/global/home"><font size="4px"color="blue">阿里巴巴科技有限公司</font></a>
	&nbsp;&nbsp;  <a href="submit.jsp"><font color="red" size="4px">投递简历</font></a>
				<div class="li-img"><img src="img/n-qyjz-50.gif" /></div>
			</div>
		</li>
		<li>
		
		<div class="li-top">
			<h5>修改密码</h5>
			<font size="3px">您的account_number为：</font>
			<font size="3px"><s:property value="#request.account_number"/></font>
			<br>
			<font size="3px">您现在的密码为：</font>
			<font size="3px"><s:property value="#request.password1"/></font>
			<br><hr>
 <font size="3px">确认修改密码请点击  
 <a href="AlterStudentPwd.jsp?account_number=<s:property value='#request.account_number'/>" >
 <font color="blue">修改密码！</font></a></font>
		   <div class="li-img"><img src="img/n-qyjz-51.gif" /></div>
			</div>
		</li>
	</div>
	<div class="clear"></div>
</div>



<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
$('.o-m .ul-o li').hover(function () {
	var linum = $(this).index()
	$('.o-m .ul-t li').eq(linum).stop().show().siblings().hide()
})
$(function () {
	var slip = $('.li-mask');
	var a = $('.o-m .ul-o li:first');
	//初始化滑块
	slip.css({
		'top': parseInt(a.position().top) + 'px'
	});
	$('.o-m .ul-o li').mouseenter(function () {
		//显示滑块
		if (slip.css('display') == 'none') {
			slip.show();
		};
		//移动滑块
		slip.stop().animate({
			top: parseInt($(this).position().top) + 'px'
		}, 300);
	});
});
</script>
    
  </body>
</html>
