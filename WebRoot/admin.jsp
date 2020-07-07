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
    
    <title>管理员页面</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/style1.css">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="mobile/css/weui.min.css">
    <link rel="stylesheet" href="mobile/css/jquery-weui.min.css">
    <script type="text/javascript" src="mobile/js/jquery.min.js"></script>
    <script type="text/javascript" src="mobile/js/jquery-weui.min.js"></script>

  </head>
  
   <meta charset="UTF-8">	
        
 <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js">
 </script>
    </head>
    <body>

<style>
  .min_head img{
    width: 2.2em;
    height: 2.2em;
  }
  .min_head{
    margin-right: .2em;
    border-radius: 3em;
  }
  .two_list li a.weui-cell{
    padding: 0;
    width: 100%;
  }
  .sign{
    border: 1px solid #D60711;
    border-radius: 4px;
    color: #D60711;
    /*border: 1px solid #d31e1e;*/
  }
  .sign a{
    color: #D60711;
  }
  .searchhead{
    position: fixed;
    top: 0;
    width: 100%;
    z-index: 2;
  }
  .active{
    background-color: #D60711;
  }
  .active a,.active .weui-cell__ft{
    color: #fff;
  }
</style>
<div class="suCai17-content">
 <div class="suCai17-background clearfix">
 
                <div class="suCai17-nav hd">
                <br><br>
      <center><font size="5px"><b>毕业生信息管理系统</b></font></center>                                     
                    <ul class="suCai17-nav-list">
                    
                        <li class="suCai17-item on">
                            <i class="icon icon-image01"></i>
                            <span class="suCai17-title">关于本系统</span>
                        </li>
                        <li class="suCai17-item">
                            <i class="icon icon-image06"></i>
                            <span class="suCai17-title">用户信息管理</span>
                        </li>
                         <li class="suCai17-item">
                            <i class="icon icon-image06"></i>
                            <span class="suCai17-title">毕业生基本信息查询</span>
                        </li>
                        
                        <li class="suCai17-item">
                            <i class="icon icon-image06"></i>
                            <span class="suCai17-title">毕业生就业信息查询</span>
                        </li>
                        
                        <li class="suCai17-item">
                            <i class="icon icon-image02"></i>
                            <span class="suCai17-title">毕业生信息维护</span>
                        </li>
                        <li class="suCai17-item">
                            <i class="icon icon-image03"></i>
                            <span class="suCai17-title">毕业生就业信息维护</span>
                        </li>
                        <li class="suCai17-item">
                            <i class="icon icon-image04"></i>
                            <span class="suCai17-title">维护条款</span>
                        </li>
                        <li class="suCai17-item">
                            <i class="icon icon-image05"></i>
                            <span class="suCai17-title">密码修改</span>
                        </li>
                    </ul>
                </div>
<!-- ------------------------------------------------------------------------ -->            
                <div class="suCai17-info bd">
<!-- ------------------------------------------------------------------------ -->                
 <ul style="display:block">
    <li>
         <h2>关于我们</h2>
             <div class="lin"></div> <br><br>                         
<font size="4px">1、本系统是本团队在老师平时的教导下加上自己的学习开发而来!</font><br><br>
<font size="4px">2、本系统是毕业生信息管理系统，旨在方便学生及学校对毕业生信息及就业信息的管理！</font><br><br>
<font size="4px">3、本系统利用了时下最流行、最新进的网页前端脚本代码和网页设计图片素材!</font><br><br>
<font size="4px">4、您可以按自己所需要的方式对信息进行查询和维护！</font><br><br>
<font size="4px">5、但是您必须按照本系统相关规定和学校的规章制度进行操作！</font><br><br>
<font size="4px">6、请合理使用本系统，未经允许不得擅自转载或进行非法交易！</font><br><br>
<font size="4px">7、本系统最终解释权归本团队所有！</font>
                        </li>
                    </ul>
<!-- ---------------------------------------------------------------   --> 
<ul>
     <li>
        <h2><font size="5px" color="blue">
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          用户基本信息</font></h2>
          <hr><br>
       <font color="red" size="4px">  请注意！删除学生用户时，他的毕业信息及其就业信息将一并删除！</font> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <a href="addUser.jsp"><font color="blue" size="4px">添加用户</font></a> 
          <hr><br>
  <div class="suCai17-side">
  
  <table border="1" cellspacing="0" cellpadding="6"> 
 
   <tr>          
       <td width="50" height="35" align="center">id</td>  
       <td width="50"height="35" align="center">accountNumber</td>
       <td width="100"height="35" align="center">password</td>
       <td width="100"height="35" align="center">role</td>
       <td width="80" height="35"align="center">gid</td>

       <td width="80"height="40" align="center">alter</td>
       <td width="80"height="40" align="center">delete</td>      
     </tr>
     
   <s:iterator value="#request.list0"> 
    <tr>          
       <td width="50"height="35" align="center"><s:property value="id"/></td>  
       <td width="50"height="35" align="center"><s:property value="accountNumber"/></td>
       <td width="100"height="35" align="center"><s:property value="password"/></td>
       <td width="100"height="35" align="center"><s:property value="role"/></td>
       <td width="80"height="35" align="center"><s:property value="gid"/></td>
       
       <td width="80"height="40" align="center">
       <a href="alterUser.jsp?id=<s:property value='#request.id'/>&accountNumber=<s:property value='#request.accountNumber'/>&password=<s:property value='password'/>&role=<s:property value='role'/>&gid=<s:property value='gid'/>">
       <img src="images/05.jpg" width="26px" height="26px">
       </a>
       </td>
       
       
       <td width="80"height="40" align="center">
       <a href="deleteUser?id=<s:property value="id"/>">
       <img src="images/04.jpg" width="22px" height="22px">
       </a>
       </td>   
    
     </tr>
  </s:iterator>    
  </table>          
</div>
</li>
</ul>

<!-- ---------------------------------------------------------------   -->                                 
    
    <ul>
      <li>
  
  <div class="suCai17-side">                               
                          
   <center> 

  <center><font color="blue" size="5px">毕业生基本信息</font></center>
  <hr> 
   <div class="weui-search-bar" id="searchBar">
    <form class="weui-search-bar__form" onSubmit="return search1();">
       <div class="weui-search-bar__box">
         <i class="weui-icon-search"></i>
        <input type="search" class="weui-search-bar__input" id="searchInput1" placeholder="gname搜索---请输入你要搜索的名字的关键值！" required="">
        <a href="javascript:" class="weui-icon-clear" id="searchClear"></a>
       </div>
      <label class="weui-search-bar__label" id="searchText">
      <i class="weui-icon-search"></i>
        <span>gname搜索</span>
      </label>
    </form>
    <a href="javascript:" class="weui-search-bar__cancel-btn" id="searchCancel">取消</a>
</div> 


 <p style="height: 5px;"></p>

<div id="all_list">
  <ul class="weui-cells two_list"> 
           
            <b>
            gid &nbsp;&nbsp;&nbsp;
            gname &nbsp;&nbsp;&nbsp;
            gsex &nbsp;&nbsp;&nbsp;
            nation &nbsp;&nbsp;&nbsp;
            nativePlace &nbsp;&nbsp;&nbsp;
            graduationTime &nbsp;&nbsp;&nbsp;
            major &nbsp;&nbsp;&nbsp;
            politicalOutlook 
            </b>
           <hr>
        
<s:iterator value="#request.list">   
       
       <li data-real_name="<s:property value="gname"/>" class="weui-cell weui-cell_access list_one">
            <div class="weui-cell__hd min_head" >
              <img src="mobile/img/aaa1.png" class="min_head" onerror="this.src='mobile/img/user68.jpg'" alt=""/>
            </div>
            <p><s:property value="gid"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <s:property value="gname"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <s:property value="gsex"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <s:property value="nation"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <s:property value="nativePlace"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <s:property value="graduationTime"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <s:property value="major"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <s:property value="politicalOutlook"/></p>
        </li>
       </s:iterator>
    </ul>
</div>

 
</center>
   </div>
  </li>
</ul>

<!--  ------------------------------------------------------------------------- -->

<ul>
  <li>

  <div class="suCai17-side">                               
     <p><a href="Search">按专业划分的就业情况统计</a></p>                      
  <center> 

<center><font color="blue" size="5px">毕业生就业信息</font></center>

 <hr>
 
  <div class="weui-search-bar" id="searchBar">
    <form class="weui-search-bar__form" onSubmit="return search2();">
    <div class="weui-search-bar__box">
         <i class="weui-icon-search"></i>
        <input type="search" class="weui-search-bar__input" id="searchInput2" placeholder="gid搜索---请输入您要搜索的id" required="">
        <a href="javascript:" class="weui-icon-clear" id="searchClear"></a>
       </div>
      <label class="weui-search-bar__label" id="searchText">
      <i class="weui-icon-search"></i>
        <span>gid搜索</span>
      </label>
    </form>
    <a href="javascript:" class="weui-search-bar__cancel-btn" id="searchCancel">取消</a>
 </div> 


 <p style="height: 5px;"></p>

<div id="all_list">
  <ul class="weui-cells two_list">           
            <b>
            gid &nbsp;&nbsp;&nbsp;&nbsp;
            employmentTime &nbsp;&nbsp;&nbsp;&nbsp;
            workPlace &nbsp;&nbsp;&nbsp;&nbsp;
            workNature &nbsp;&nbsp;&nbsp;&nbsp;
            duty &nbsp;&nbsp;&nbsp;&nbsp;
            address &nbsp;&nbsp;&nbsp;&nbsp;           
            </b>
           <hr>
        
<s:iterator value="#request.list2">   
       
       <li data-real_name="<s:property value="gid"/>" class="weui-cell weui-cell_access list_one">
            <div class="weui-cell__hd min_head" >
              <img src="mobile/img/aaa1.png" class="min_head" onerror="this.src='mobile/img/user68.jpg'" alt=""/>
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <p><s:property value="gid"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <s:property value="employmentTime"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <s:property value="workPlace"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <s:property value="workNature"/></p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <s:property value="duty"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <s:property value="address"/>
        </li>
       </s:iterator>
    </ul>
</div>

</center>
</div>
</li>
</ul>




<!-- ------------------------------------------------------------------------ -->
                    <ul>
                        <li>
                            <h2>毕业生基本信息维护</h2>
  <hr>
  <div class="suCai17-side">
 <h3 class="on">维护内容</h3>
                                                           
       <a href="addGraduate.jsp"><font size="3px">添加毕业生基本信息</font></a>&nbsp;&nbsp;&nbsp;
       <font color="red" size="3px">请注意您添加的毕业生基本信息的gid必须事先在user表中存在与之对应的信息。</font>
       <br>          
  <hr><br>
  
  <table border="1" cellspacing="0" cellpadding="6"> 
 
   <tr>          
       <td width="50" height="35" align="center">gid</td>  
       <td width="60"height="35" align="center">gname</td>
       <td width="50"height="35" align="center">gsex</td>
       <td width="60"height="35" align="center">nation</td>
       <td width="160" height="35"align="center">nativePlace</td>
       <td width="150"height="35" align="center">graduationTime</td> 
       <td width="80"height="35" align="center">major</td>
       <td width="30"height="35" align="center">politicalOutlook</td>
       <td width="50"height="40" align="center">alter</td>     
     </tr>
     
   <s:iterator value="#request.list"> 
    <tr>          
       <td width="50"height="35" align="center"><s:property value="gid"/></td>  
       <td width="60"height="35" align="center"><s:property value="gname"/></td>
       <td width="50"height="35" align="center"><s:property value="gsex"/></td>
       <td width="60"height="35" align="center"><s:property value="nation"/></td>
       <td width="160"height="35" align="center"><s:property value="nativePlace"/></td>
       <td width="150"height="35" align="center"><s:property value="graduationTime"/></td>
       <td width="80"height="35" align="center"><s:property value="major"/></td>
       <td width="30"height="35" align="center"><s:property value="politicalOutlook"/></td> 
       
       <td width="60"height="40" align="center">
       <a href="alterGraduate.jsp?gid=<s:property value='#request.gid'/>&gname=<s:property value='#request.gname'/>&gsex=<s:property value='gsex'/>&nation=<s:property value='nation'/>&nativePlace=<s:property value='nativePlace'/>&graduationTime=<s:property value='graduationTime'/>&major=<s:property value='major'/>&politicalOutlook=<s:property value='politicalOutlook'/>">
       <img src="images/05.jpg" width="26px" height="26px">
       </a>
       </td>  
    
     </tr>
  </s:iterator>    
  </table>          
</div>
</li>
</ul>
 <!-- ------------------------------------------------------------------------ -->
                    <ul>
                        <li>
                            <h2>毕业生就业信息维护</h2>                                                  
                                     
 <hr>
   <div class="suCai17-side">
  <h3 class="on">维护内容</h3>
                              
           <a href="addWork.jsp"><font size="3px">添加毕业生就业信息</font></a>&nbsp;&nbsp;&nbsp;
       <font color="red" size="3px">请注意您添加的毕业生就业信息的gid必须事先在graduate表中存在与之对应的信息。</font>
           <br>
       <hr><br>
       
        <table border="1" cellspacing="0" cellpadding="6"> 
 
   <tr>          
       <td width="50" height="35" align="center">gid</td>  
       <td width="180"height="35" align="center">employmentTime</td>
       <td width="190"height="35" align="center">workPlace</td>
       <td width="60"height="35" align="center">workNature</td>
       <td width="100" height="35"align="center">duty</td>
       <td width="60"height="35" align="center">address</td> 
        <td width="70"height="40" align="center">alter</td>  
     </tr>
     
   <s:iterator value="#request.list2">
  
    <tr>          
       <td width="50"height="35" align="center"><s:property value="gid"/></td>  
       <td width="180"height="35" align="center"><s:property value="employmentTime"/></td>
       <td width="190"height="35" align="center"><s:property value="workPlace"/></td>
       <td width="60"height="35" align="center"><s:property value="workNature"/></td>
       <td width="100"height="35" align="center"><s:property value="duty"/></td>
       <td width="60"height="35" align="center"><s:property value="address"/>
         
       <td width="70"height="40" align="center">
       <a href="alterWork.jsp?gid2=<s:property value='gid'/>&employmentTime=<s:property value='employmentTime'/>&workPlace=<s:property value='workPlace'/>&workNature=<s:property value='workNature'/>&duty=<s:property value='duty'/>&address=<s:property value='address'/>">
       <img src="images/05.jpg" width="26px" height="26px">
       </a>
       </td>
             
     
     </tr>
  </s:iterator>    
  </table>          
                   
  </div> 
                        </li>
                    </ul>
<!-- ------------------------------------------------------------------------ -->
                    <ul>
                        <li>
                            <h2>维护条款</h2>
                            <div class="lin"></div>
                            <div class="suCai17-side">
                                <h3 class="on">总则</h3>
        <ul>                                  
                                    
<li> 通过互联网服务为您和您的朋友提供一种全新的在线下载资源交流方式，</li>
<li> 您只有完全同意下列所有注册条款并完成注册 程序，才能成为本系统 的用户并使用相应服务</li>
<li>您在使用本系统提供的各项服务之前，应仔细阅读本用户协议</li>
<li>您在注册程序过程中点击“同意条款，立即注册”按钮即表示您与本系统达成协议，完全接受本注册条款项下的全部条款。</li>
<li>您一旦使用本系统的服务，即视为您已了解并完全同意本注册条款各项内容，包括本系统对注册条款随时做的任何修改。</li>
       
       </ul>
       
            <h3>第一条 服务内容</h3>
       <ul>
<li>本系统的具体服务内容由本团队根据实际情况提供，例如微博客服务、资源上传、采集发布、在线交流等。</li>
<li>本系统保留变更、中断或终止部分网络服务的权利。</li>
<li>本系统保留根据实际情况随时调整</li>
 <li>本系统平台提供的服务种类、形式。本系统不承担因业务调整给用户造成的损失。</li>
      </ul>
             <h3>第二条 内容使用</h3>
       <ul>
<li>本系统的具体服务内容由本团队根据实际情况提供，例如微博客服务、资源上传、采集发布、在线交流等。</li>
<li>本系统保留变更、中断或终止部分网络服务的权利。</li>
<li>本系统 保留根据实际情况随时调整</li>
<li>本系统提供的服务种类、形式。本系统不承担因业务调整给用户造成的损失。</li>
       </ul>
            <h3>第三条 知识产权</h3>
       <ul>
<li>本系统的具体服务内容由本团队根据实际情况提供，例如微博客服务、资源上传、采集发布、在线交流等。</li>
<li>本系统保留变更、中断或终止部分网络服务的权利。</li>
<li>本系统 保留根据实际情况随时调整</li>
<li>本系统提供的服务种类、形式。本系统不承担因业务调整给用户造成的损失。</li>       
       </ul>                       
             <h3>第四条 注册信息</h3>
        <ul>
<li>本系统的具体服务内容由本团队根据实际情况提供，例如微博客服务、资源上传、采集发布、在线交流等。</li>
<li>本系统保留变更、中断或终止部分网络服务的权利。</li>
<li>本系统 保留根据实际情况随时调整</li>
<li>本系统提供的服务种类、形式。本系统不承担因业务调整给用户造成的损失。</li>                                   
        </ul>
              <h3>第五条 隐私保护</h3>
        <ul>
<li>本系统的具体服务内容由本团队根据实际情况提供，例如微博客服务、资源上传、采集发布、在线交流等。</li>
<li>本系统保留变更、中断或终止部分网络服务的权利。</li>
<li>本系统 保留根据实际情况随时调整</li>
<li>本系统提供的服务种类、形式。本系统不承担因业务调整给用户造成的损失。</li>        
        </ul>
                <h3>第六条 社区准则</h3>
        <ul>
<li>本系统的具体服务内容由本团队根据实际情况提供，例如微博客服务、资源上传、采集发布、在线交流等。</li>
<li>本系统保留变更、中断或终止部分网络服务的权利。</li>
<li>本系统 保留根据实际情况随时调整</li>
<li>本系统提供的服务种类、形式。本系统不承担因业务调整给用户造成的损失。</li>                                    
        </ul>
                <h3>第七条 免责声明</h3>
        <ul>
<li>本系统的具体服务内容由本团队根据实际情况提供，例如微博客服务、资源上传、采集发布、在线交流等。</li>
<li>本系统保留变更、中断或终止部分网络服务的权利。</li>
<li>本系统 保留根据实际情况随时调整</li>
<li>本系统提供的服务种类、形式。本系统不承担因业务调整给用户造成的损失。</li>                                  
        </ul>
                <h3>第八条 服务变更、中断或终止</h3>
        <ul>
<li>本系统的具体服务内容由本团队根据实际情况提供，例如微博客服务、资源上传、采集发布、在线交流等。</li>
<li>本系统保留变更、中断或终止部分网络服务的权利。</li>
<li>本系统 保留根据实际情况随时调整</li>
<li>本系统提供的服务种类、形式。本系统不承担因业务调整给用户造成的损失。</li>                                   
        </ul>
               <h3>第九条 注册条款的完善和修改</h3>
        <ul>
 <li>本系统的具体服务内容由本团队根据实际情况提供，例如微博客服务、资源上传、采集发布、在线交流等。</li>
<li>本系统保留变更、中断或终止部分网络服务的权利。</li>
<li>本系统 保留根据实际情况随时调整</li>
<li>本系统提供的服务种类、形式。本系统不承担因业务调整给用户造成的损失。</li>                                   
        </ul>
               <h3>第十条 用户特别提示</h3>
        <ul>
<li>本系统的具体服务内容由本团队根据实际情况提供，例如微博客服务、资源上传、采集发布、在线交流等。</li>
<li>本系统保留变更、中断或终止部分网络服务的权利。</li>
<li>本系统 保留根据实际情况随时调整</li>
<li>本系统提供的服务种类、形式。本系统不承担因业务调整给用户造成的损失。</li>                                    
        </ul>
               <h3>第十二条 其他</h3>
        <ul>
<li>本系统的具体服务内容由本团队根据实际情况提供，例如微博客服务、资源上传、采集发布、在线交流等。</li>
<li>本系统保留变更、中断或终止部分网络服务的权利。</li>
<li>本系统 保留根据实际情况随时调整</li>
<li>本系统提供的服务种类、形式。本系统不承担因业务调整给用户造成的损失。</li>                                   
        </ul>
                <h3>附则</h3>
        <ul>
<li>本系统的具体服务内容由本团队根据实际情况提供，例如微博客服务、资源上传、采集发布、在线交流等。</li>
<li>本系统保留变更、中断或终止部分网络服务的权利。</li>
<li>本系统 保留根据实际情况随时调整</li>
<li>本系统提供的服务种类、形式。本系统不承担因业务调整给用户造成的损失。</li>                                 
        </ul>
     </div>
     </li>
    </ul>
<!-- ------------------------------------------------------------------------ -->
<ul>
  <li>
    <h2>修改密码</h2>
         <div class="lin"></div>
         <div class="suCai17-side"> 
  
   <h3>注意事项</h3>
        <ul>       
<li>密码必须全部是数字,且范围为0~15个字符！</li>
<li>由于密码的保密性,本系统不建议您随意更改密码！</li> 
<li>请牢记您的新密码！一旦忘记则暂时找不回密码！</li>                                 
        </ul>
        <br><hr>
<font size="3px">您的account_number为：</font>
<font size="3px"><s:property value="#request.account_number"/></font><br>
<font size="3px">您现在的密码为：</font>
<font size="3px"><s:property value="#request.password1"/></font><br>
   <font size="3px">确认修改密码请点击  <a href="AlterAdminPwd.jsp?account_number= <s:property value='#request.account_number'/> ">修改密码！</a></font>
   &nbsp;&nbsp;&nbsp;&nbsp;<a href="index.jsp"><font size="3px" color="green">退出登录</font></a>
   </div>             
  </li>
</ul>


</div>
<!-- ------------------------------------------------------------------------ -->
        <script type="text/javascript">
            
            jQuery(".suCai17-background").slide({
                autoPlay: false,
                trigger: "click",
                easing: "easeOutCirc",
                delayTime: 1000
            });

            jQuery(".suCai17-side").slide({
                titCell:"h3",
                targetCell:"ul",
                defaultIndex:1,
                effect:"slideDown",
                trigger:"click"
            });

        </script>

       
<!-- 11111111111111111111111111111111  -->     
        <script>
  // 定义首个查询下键
  var active = 0;
  $('.weui-icon-search').click(function(){
    search1();
  })
  function search1(){
    // 获取搜索框的值
    var kwds = $("#searchInput1").val();
    // 获取第一个列表内容
    var this_one = {};
    var real_name = '';
    // 定义两个数据列表
    var list = $("#all_list .list_one");
    // 定义查找的起始值
    var true_one = 0;

    for (var i = 0; i < list.length; i++) {
      this_one = $(list[i]);
      real_name = this_one.data('real_name').toString();
      // 执行like匹配
      if(real_name.match(kwds)){
        // 处理第一个结果
        if(true_one == active){
          // 获取窗口的宽和高
          // var windows_wdh = $(window).width();
          var windows_hgt = $(window).height();
          // 获取第一个坐标
          // var x_len = this_one.offset().left;
          var y_len = this_one.offset().top;
          // 驱动滚动条滚动到指定的位置
          $("html,body").animate({scrollTop:(y_len-windows_hgt/2)},500);
          // 标记当前选中的结果
          this_one.addClass('active');
          this_one.removeClass('sign');
        }else{
          // 标记符合的结果
          this_one.addClass('sign');
          this_one.removeClass('active');
        }
        // 累加真实的选择
        true_one++;
      }else{
        this_one.removeClass('sign');
        this_one.removeClass('active');
      }
    }
    // 判断是否搜索完毕 如果搜索完毕 则从第一个开始 否则继续搜索下一个
    active = active >= true_one-1 ? 0 : active+1;

    return false;
  }
</script>
       
<!-- 222222222222222222222222222222222222222222222  -->
       
       <script>
  // 定义首个查询下键
  var active = 0;
  $('.weui-icon-search').click(function(){
    search2();
  })
  function search2(){
    // 获取搜索框的值
    var kwds = $("#searchInput2").val();
    // 获取第一个列表内容
    var this_one = {};
    var real_name = '';
    // 定义两个数据列表
    var list = $("#all_list .list_one");
    // 定义查找的起始值
    var true_one = 0;

    for (var i = 0; i < list.length; i++) {
      this_one = $(list[i]);
      real_name = this_one.data('real_name').toString();
      // 执行like匹配
      if(real_name.match(kwds)){
        // 处理第一个结果
        if(true_one == active){
          // 获取窗口的宽和高
          // var windows_wdh = $(window).width();
          var windows_hgt = $(window).height();
          // 获取第一个坐标
          // var x_len = this_one.offset().left;
          var y_len = this_one.offset().top;
          // 驱动滚动条滚动到指定的位置
          $("html,body").animate({scrollTop:(y_len-windows_hgt/2)},500);
          // 标记当前选中的结果
          this_one.addClass('active');
          this_one.removeClass('sign');
        }else{
          // 标记符合的结果
          this_one.addClass('sign');
          this_one.removeClass('active');
        }
        // 累加真实的选择
        true_one++;
      }else{
        this_one.removeClass('sign');
        this_one.removeClass('active');
      }
    }
    // 判断是否搜索完毕 如果搜索完毕 则从第一个开始 否则继续搜索下一个
    active = active >= true_one-1 ? 0 : active+1;

    return false;
  }
</script>
  </body>
</html>
