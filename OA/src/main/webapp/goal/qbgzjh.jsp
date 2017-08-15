<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/goal/";
%>


<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'qbgzjh.jsp' starting page</title>
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="css/qbgzjh.min.css">
<link rel="stylesheet" href="css/qbgzjh.css">
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script src="js/nav.js"></script>
</head>

<body>
	<table style="min-width: 980px; width: 100%; height: 100%;" border="0" cellpadding="0" cellspacing="0">
	
  <tbody>
    <tr valign="top">
     
      <td id="colloaContent"><table border="0" cellpadding="0" cellspacing="0">
          <tbody>
            <tr>
              <td><h1><img style="cursor: pointer;" src="css/menu.png"> 全部工作计划</h1></td>
              <td align="right"><!-- <script language="javaScript">/* Code removed by ScrapBook */</script> --><a 
              class="button1 button1L" title="后退">&nbsp;<i class="fa fa-angle-left fa-lg"></i></a><span id="oWorkflowList1"><a
               href="er/xzjh.jsp" class="button1 button1M">✚ 制定工作计划*</a><a href="er/czjh.jsp"class="button1 button1M">查找</a></span><a class="button1 button1R" title="刷新">&nbsp;<i class="fa fa-bolt fa-lg"></i></a><!-- <script language="javaScript">/* Code removed by ScrapBook */</script> --></td>
            </tr>
          </tbody>
        </table>
        <br>
        <table style="table-layout: fixed;" border="0" cellpadding="0" cellspacing="0">
          <colgroup>
          <col width="20%">
          <col width="2%">
          <col>
          </colgroup>
          <tbody>
            <tr valign="top">
              <td><table class="tableList" border="0" cellpadding="0" cellspacing="0">
                  <thead>
                    <tr>
                      <th style="padding-left: 16px;">分类</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td style="padding: 16px;" class="treeOfNavigation"><a  href="../pros.do?action=Prospectuslist&num=0" class="textHighlight"><img src="css/folder.png" border="0"> (显示所有)
                      </a><a href="../pros.do?action=Prospectuslist&num=1&state=0"><img src="css/folder.png" border="0"> 评审中的计划 </a> 
                       <a href="../pros.do?action=Prospectuslist&num=1&state=1"><img src="css/folder.png" border="0"> 发布执行的计划 </a> 
                       <a href="../pros.do?action=Prospectuslist&num=1&state=2"><img src="css/folder.png" border="0"> 已关闭的计划 </a></td>
                    </tr>
                    <tr>
                      <td style="padding: 16px;" class="treeOfNavigation">
                      <a href="../pros.do?action=Prospectuslist&num=2&classify=0"><img src="css/folder.png" border="0"> 年度计划 </a>
                       <a href="../pros.do?action=Prospectuslist&num=2&classify=1"><img src="css/folder.png" border="0"> 季度计划 </a>
                        <a href="../pros.do?action=Prospectuslist&num=2&classify=2"><img src="css/folder.png" border="0"> 月度计划  </a> 
                        <a href="../pros.do?action=Prospectuslist&num=2&classify=3"><img src="css/folder.png" border="0"> 周计划  </a> 
                        <a href="../pros.do?action=Prospectuslist&num=2&classify=4"><img src="css/folder.png" border="0"> 项目计划 </a> 
                        <a href="../pros.do?action=Prospectuslist&num=2&classify=5"><img src="css/folder.png" border="0"> 其他计划 </td>
                    </tr>
                  </tbody>
                </table></td>
              <td></td>
              <td><table class="tableList" border="0" cellpadding="0" cellspacing="0">
                  <thead>
                    <tr>
                      <th><img src="css/priority0.gif">计划名称</th>
                      <th>创建人</th>
                      <th>所属部门</th>
                      <th>开始时间</th>
                      <th>结束时间</th>
                    </tr>
                  </thead>
                 
                  <c:forEach var="p" items="${list }">
                  	<tbody>
                  		<td><a href="../pros.do?action=jhzs&prospectus_id=${p.prospectus_id}">${p.prospectus_name }</td>
                  		<td>${p.prospectus_create_name }</td>
                  		<td>${p.dept.depart_name }</td>
                  		<td>${p.prospectus_create_time }</td>
                  		<td>${p.prospectus_terminal_time }</td>
                  		
                  	
                  	</tbody>
                  </c:forEach>
                </table>
				<div style="padding: 20px 0px;">
					 <a class="button1 button1L" href="../pros.do?action=Prospectuslist&index=1" title="首页">&nbsp;<i class="fa fa-step-backward"></i></a><a 
					 class="button1 button1M" href="../pros.do?action=Prospectuslist&index=${page.index-1 eq 0 ? 1 : page.index-1}" title="上页">&nbsp;<i class="fa fa-backward"></i></a><span 
					 class="button1M">共有 ${page.count}条记录，第 ${page.index}/${page.total} 页</span><a 
					 class="button1 button1M" href="../pros.do?action=Prospectuslist&index=${page.index+1 gt page.total ? page.total : page.index+1}" title="下页">&nbsp;<i class="fa fa-forward"></i></a><a 
					 class="button1 button1R" href="../pros.do?action=Prospectuslist&index=${page.total}" title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a>		 
			 </div>
			 
               
               </td>
            </tr>
          </tbody>
        </table></td>
  </tbody>
</table>


</body>
</html>
