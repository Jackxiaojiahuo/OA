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

<title>My JSP 'qbgzrw.jsp' starting page</title>

<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="css/qbgzrw.min.css">
<link rel="stylesheet" href="css/qbgzrw.css">
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
              <td><h1><img style="cursor: pointer;" src="css/menu.png"> 全部工作任务</h1></td>
              <td align="right"><!-- <script language="javaScript">/* Code removed by ScrapBook */</script> --><a 
              class="button1 button1L" title="后退">&nbsp;<i class="fa fa-angle-left fa-lg"></i>
              </a><span id="oWorkflowList1"><a href="er/xzrw.jsp" class="button1 button1M">✚ 新增工作任务*
              </a><a href="er/czrw.jsp" class="button1 button1M">查找
              </a></span><a class="button1 button1R" title="刷新">&nbsp;<i class="fa fa-bolt fa-lg"></i>
              </a><!-- <script language="javaScript">/* Code removed by ScrapBook */</script> --></td>
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
                      <td style="padding: 16px;" class="treeOfNavigation"><a class="textHighlight" href="../assi.do?action=Assignmentlist&num=0"><img src="css/folder.png" border="0"> (显示所有)
                      </a> <a href="../assi.do?action=Assignmentlist&num=1&state=0"><img src="css/folder.png" border="0"> 执行中的任务 </a>
                       <a href="../assi.do?action=Assignmentlist&num=1&state=1"><img src="css/folder.png" border="0"> 已关闭的任务 </a></td>
                    </tr>
                    <tr>
                      <td style="padding: 16px;" class="treeOfNavigation">
                      <a href="../assi.do?action=Assignmentlist&num=2&classify=0"><img src="css/folder.png" border="0"> 常规任务 </a> 
                      <a href="../assi.do?action=Assignmentlist&num=2&classify=1"><img src="css/folder.png" border="0"> 行政类任务 </a>
                       <a href="../assi.do?action=Assignmentlist&num=2&classify=2"><img src="css/folder.png" border="0"> 人事类任务 </a>
                        <a href="../assi.do?action=Assignmentlist&num=2&classify=3"><img src="css/folder.png" border="0"> 财务类任务 </a>
                         <a href="../assi.do?action=Assignmentlist&num=2&classify=4"><img src="css/folder.png" border="0"> 业务类任务 </a>
                          <a href="../assi.do?action=Assignmentlist&num=2&classify=5"><img src="css/folder.png" border="0"> 项目任务 </a></td>
                    </tr>
                  </tbody>
                </table></td>
              <td></td>
              <td><table class="tableList" border="0" cellpadding="0" cellspacing="0">
                  <thead>
                    <tr>
                      <th><img src="css/priority0.gif">任务名称</th>
                      <th>创建人</th>
                      <th>执行人</th>
                      <!-- <th>部门</th> -->
                      <th>开始时间</th>
                      <th>工作量</th>
                    </tr>
                  </thead>
                  <c:forEach var="a" items="${list }">
                  	<tbody>
                  	<td><a href="../assi.do?action=rwzs&assignment_id=${a.assignment_id}">${a.assignment_name }</td>
                  		 <td>${a.assignment_create_name }</td>
                  		<td>${a.assignment_executor_name }</td>
                  		<%-- <td>${a.dept.depart_name }</td> --%>
                  		<td>${a.assignment_create_time }</td>
                  		<td>${a.assignment_workload }天</td>

                  	</tbody>
                  </c:forEach>
                </table>
               
				<div style="padding: 20px 0px;">
					 <a class="button1 button1L" href="../assi.do?action=Assignmentlist&index=1" title="首页">&nbsp;<i class="fa fa-step-backward"></i></a><a 
					 class="button1 button1M" href="../assi.do?action=Assignmentlist&index=${page.index-1 eq 0 ? 1 : page.index-1}" title="上页">&nbsp;<i class="fa fa-backward"></i></a><span 
					 class="button1M">共有 ${page.count}条记录，第 ${page.index}/${page.total} 页</span><a 
					 class="button1 button1M" href="../assi.do?action=Assignmentlist&index=${page.index+1 gt page.total ? page.total : page.index+1}" title="下页">&nbsp;<i class="fa fa-forward"></i></a><a 
					 class="button1 button1R" href="../assi.do?action=Assignmentlist&index=${page.total}" title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a>		 
			 </div>
             <tr>
          </tbody>
        </table></td>
    </tr>
  </tbody>
</table>
	
</body>
</html>
