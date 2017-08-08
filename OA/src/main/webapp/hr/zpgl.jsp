<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/hr/";
%>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="css/zpgl.min.css">
<link rel="stylesheet" href="css/zppz.css">
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script>
	$(function(){
			$('#colloaMenu2 a').click(function() {
					$(this).siblings().removeClass('textHighlight');
					$(this).addClass('textHighlight');
			});
	});
</script>
</head>
<body>
     <table style="min-width: 120px; width: 100%; height: 100%;" border="0" cellpadding="0" cellspacing="0"><tbody>
    <tr valign="top">
	<td id="colloaContent">
<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td>
				<h1><img style="cursor: pointer;" src="css/menu.png"> 招聘和配置</h1></td>
			<td id="oWorkflowList" align="right">
			<c:if test="${num==0 }">
			<span id="oWorkflowList1"><a class="button1 button1L" href="info/zpsq.jsp?sq=0">✚ 招聘申请*</a></span><a class="button1 button1R" title="刷新" href="javascript:location.reload()">&nbsp;<i class="fa fa-bolt fa-lg"></i></a>
			</c:if>
			<c:if test="${num==1 }">
			<span id="oWorkflowList1"><a class="button1 button1L" href="info/rzsq.jsp?sq=1">✚ 入职申请*</a></span><a class="button1 button1R" title="刷新" href="javascript:location.reload()">&nbsp;<i class="fa fa-bolt fa-lg"></i></a>
			</c:if>
			<c:if test="${num==2 }">
			<span id="oWorkflowList1"><a class="button1 button1L" href="info/zzsq.jsp?sq=2">✚ 转正申请*</a></span><a class="button1 button1R" title="刷新" href="javascript:location.reload()">&nbsp;<i class="fa fa-bolt fa-lg"></i></a>
			</c:if>
			<c:if test="${num==3 }">
			<span id="oWorkflowList1"><a class="button1 button1L" href="info/lzsq.jsp?sq=3">✚ 离职申请*</a></span><a class="button1 button1R" title="刷新" href="javascript:location.reload()">&nbsp;<i class="fa fa-bolt fa-lg"></i></a>
			</c:if>
			</td>
		</tr>
	</tbody>
</table>
<br>
<div id="colloaMenu2">
	<a href="../recruit.do?action=Relist&num=0"><img src="css/folder.png" border="0"> 招聘管理</a>
	<a href="../recruit.do?action=Relist&num=1"><img src="css/folder.png" border="0"> 入职管理</a>
	<a href="../recruit.do?action=Relist&num=2"><img src="css/folder.png" border="0"> 转正管理</a>
	<a href="../recruit.do?action=Relist&num=3"><img src="css/folder.png" border="0"> 离职管理</a>
</div>
<div id="colloaContent2">
	<table class="tableList" border="0" cellpadding="0" cellspacing="0">
		<thead>
		<c:choose>
			<c:when test="${num==0 }">
			<tr>
				<th>主题</th>
				<th>申请人</th>
				<th>所属部门</th>
				<th>需求岗位</th>
				<th>需求人数</th>
				<th>希望到岗日期</th>
			</tr>
			
			</c:when>
			<c:when test="${num==1 }">
				<tr>
					<th>主题</th>
					<th>入职人</th>
					<th>入职日期</th>
					<th>入职部门</th>
					<th>入职岗位</th>
				</tr>
			</c:when>
			<c:when test="${num==2 }">
			 <tr>
				<th>主题</th>
				<th>申请人</th>
				<th>所属部门</th>
				<th>申请岗位</th>
				<th>申请时间</th>
				<th>转正日期</th>
              </tr>
			</c:when>
			<c:when test="${num==3 }">
			<tr>
				<th>主题</th>
				<th>申请人</th>
				<th>所属部门</th>
				<th>工作岗位</th>
				<th>申请日期</th>
				<th>预计离职日期</th>
			</tr>
			</c:when>
			</c:choose>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${num==0 }">
				<c:forEach var="r" items="${list }">
			<tr>
				<td>
					<a href="../recruit.do?action=zszp&re_id=${r.re_id }&zs=0"><i style="color: orange;" class="fa fa-calendar-minus-o fa-lg"></i><img src="css/priority0.gif" border="0">${r.re_theme }</a>
				</td>
				<td>${r.em.emp_name }</td>
				<td>${r.dept.depart_name }</td>
				<td>${r.re_post }</td>
				<td>${r.re_number }</td>
				<td>${r.re_positiondate }</td>
			</tr>
			</c:forEach>
			</c:when>
			<c:when test="${num==1 }">
			<c:forEach items="${list }" var="e">
			<tr>
					<td>
					<a href="../recruit.do?action=zszp&et_id=${e.et_id }&zs=1"><i style="color: orange;" class="fa fa-calendar-minus-o fa-lg"></i><img src="css/priority0.gif" border="0"><span style="color: red;">${e.et_theme }</span></a>
					</td>
					<td>${e.et_name }</td>
					<td>${e.et_joindate }</td>
					<td>${e.dept.depart_name }</td>
					<td>${e.et_post }</td>
					</tr>
			</c:forEach>		
			</c:when>
				<c:when test="${num==2 }">
				<c:forEach var="b" items="${list }">
			<tr>
				<td>
					<a href="../recruit.do?action=zszp&b_id=${b.b_id }&zs=2"><i style="color: orange;" class="fa fa-calendar-minus-o fa-lg"></i><img src="css/priority0.gif" border="0">${b.b_theme }</a>
				</td>
				<td>${b.em.emp_name }</td>
				<td>${b.dept.depart_name }</td>
				<td>${b.b_post }</td>
				<td>${b.b_applydate }</td>
				<td>${b.b_become }</td>
			</tr>
			</c:forEach>
			</c:when>
				<c:when test="${num==3 }">
				<c:forEach var="q" items="${list }">
			<tr>
				<td>
					<a href="../recruit.do?action=zszp&q_id=${q.q_id }&zs=3"><i style="color: orange;" class="fa fa-calendar-minus-o fa-lg"></i><img src="css/priority0.gif" border="0">${q.q_theme }</a>
				</td>
				<td>${q.em.emp_name }</td>
				<td>${q.dept.depart_name }</td>
				<td>${q.q_post }</td>
				<td>${q.q_applydate }</td>
				<td>${q.q_quit }</td>
			</tr>
			</c:forEach>
			</c:when>
			</c:choose>
		</tbody>	
	</table><c:choose>
			<c:when test="${num==0 }">
					<div style="padding: 20px 0px;">
					 <a class="button1 button1L" href="../recruit.do?action=Relist&num=0&index=1" title="首页">&nbsp;<i class="fa fa-step-backward"></i></a><a 
					 class="button1 button1M" href="../recruit.do?action=Relist&num=0&index=${page.index-1 eq 0 ? 1 : page.index-1}" title="上页">&nbsp;<i class="fa fa-backward"></i></a><span 
					 class="button1M">共有 ${page.count}条记录，第 ${page.index}/${page.total} 页</span><a 
					 class="button1 button1M" href="../recruit.do?action=Relist&num=0&index=${page.index+1 gt page.total ? page.total : page.index+1}" title="下页">&nbsp;<i class="fa fa-forward"></i></a><a 
					 class="button1 button1R" href="../recruit.do?action=Relist&num=0&index=${page.total}" title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a>		 
			</div>
			</c:when>
			<c:when test="${num==1 }">
					<div style="padding: 20px 0px;">
					 <a class="button1 button1L" href="../recruit.do?action=Relist&num=1&index=1" title="首页">&nbsp;<i class="fa fa-step-backward"></i></a><a 
					 class="button1 button1M" href="../recruit.do?action=Relist&num=1&index=${page.index-1 eq 0 ? 1 : page.index-1}" title="上页">&nbsp;<i class="fa fa-backward"></i></a><span 
					 class="button1M">共有 ${page.count}条记录，第 ${page.index}/${page.total} 页</span><a 
					 class="button1 button1M" href="../recruit.do?action=Relist&num=1&index=${page.index+1 gt page.total ? page.total : page.index+1}" title="下页">&nbsp;<i class="fa fa-forward"></i></a><a 
					 class="button1 button1R" href="../recruit.do?action=Relist&num=1&index=${page.total}" title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a>		 
			</div>
			</c:when>
			<c:when test="${num==2 }">
					<div style="padding: 20px 0px;">
					 <a class="button1 button1L" href="../recruit.do?action=Relist&num=2&index=1" title="首页">&nbsp;<i class="fa fa-step-backward"></i></a><a 
					 class="button1 button1M" href="../recruit.do?action=Relist&num=2&index=${page.index-1 eq 0 ? 1 : page.index-1}" title="上页">&nbsp;<i class="fa fa-backward"></i></a><span 
					 class="button1M">共有 ${page.count}条记录，第 ${page.index}/${page.total} 页</span><a 
					 class="button1 button1M" href="../recruit.do?action=Relist&num=2&index=${page.index+1 gt page.total ? page.total : page.index+1}" title="下页">&nbsp;<i class="fa fa-forward"></i></a><a 
					 class="button1 button1R" href="../recruit.do?action=Relist&num=2&index=${page.total}" title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a>		 
			</div>
			</c:when>
			<c:when test="${num==3 }">
					<div style="padding: 20px 0px;">
					 <a class="button1 button1L" href="../recruit.do?action=Relist&num=3&index=1" title="首页">&nbsp;<i class="fa fa-step-backward"></i></a><a 
					 class="button1 button1M" href="../recruit.do?action=Relist&num=3&index=${page.index-1 eq 0 ? 1 : page.index-1}" title="上页">&nbsp;<i class="fa fa-backward"></i></a><span 
					 class="button1M">共有 ${page.count}条记录，第 ${page.index}/${page.total} 页</span><a 
					 class="button1 button1M" href="../recruit.do?action=Relist&num=3&index=${page.index+1 gt page.total ? page.total : page.index+1}" title="下页">&nbsp;<i class="fa fa-forward"></i></a><a 
					 class="button1 button1R" href="../recruit.do?action=Relist&num=3&index=${page.total}" title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a>		 
			</div>
			</c:when>
			</c:choose>
</div>
</td></tr></tbody></table>
</body>
</html>