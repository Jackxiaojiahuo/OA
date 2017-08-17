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
<title>Insert title here</title>
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="css/syyg.min.css">
<link rel="stylesheet" href="css/syyg.css">
<link href="../js/bootstarp/core/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="../js/bootstarp/dialog/css/bootstrap-dialog.css"
	type="text/css" rel="stylesheet" />
<script src="../js/bootstarp/jquery-3.1.0.js"></script>
<script src="../js/bootstarp/core/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../js/bootstarp/dialog/js/bootstrap-dialog.js"
	type="text/javascript"></script>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script src="js/nav.js"></script>
</head>
<body>
     <table style="min-width: 120px; width: 100%; height: 100%;" border="0" cellpadding="0" cellspacing="0"><tbody>
    <tr valign="top">
	<td id="colloaContent">
<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td>
				<h1><img style="cursor: pointer;" src="css/menu.png"> 员工管理</h1></td>
			<td align="right">
				<span id="oWorkflowList1"><a class="button1 button1L" href="info/xzyg.jsp">✚ 新增员工</a><a class="button1 button1M" href="info/czyg.jsp">查找</a></span><a class="button1 button1R" title="刷新" href="javascript:location.reload()">&nbsp;<i class="fa fa-bolt fa-lg"></i></a>
			</td>
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
			<td>
				<table class="tableList" border="0" cellpadding="0" cellspacing="0">
					<thead>
						<tr>
							<th style="padding-left: 26px;">分类</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="padding: 10px;">
								<div id="treeOfNavigation" class="treeOfNavigation">
						   <a class=" textHighlight" psid="0" sid="" href="../emp.do?action=Emplist&num=0">
							   <img src="css/blank16.gif" border="0">
							   <img src="css/userX10000.gif" border="0"> (显示所有)</a>
                       		</div>
							</td>
						</tr>
						<tr>
							<td style="padding: 10px;">
								<div class="treeOfNavigation">
									<a href="../emp.do?action=Emplist&num=1"><img src="css/blank16.gif" border="0"><img src="css/folder.png" border="0"> 在职的员工 <span class="tipCount">${zzstate }</span></a>
									<a href="../emp.do?action=Emplist&num=2"><img src="css/blank16.gif" border="0"><img src="css/folder.png" border="0"> 试用期员工<span class="tipCount">${systate }</span></a>
									<a href="../emp.do?action=Emplist&num=3"><img src="css/blank16.gif" border="0"><img src="css/folder.png" border="0"> 退休的员工<span class="tipCount">${txstate } </span></a>
									<a href="../emp.do?action=Emplist&num=4"><img src="css/blank16.gif" border="0"><img src="css/folder.png" border="0"> 离职的员工<span class="tipCount">${lzstate }</span></a>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</td>
			<td></td>
			<td>
				<table class="tableList" border="0" cellpadding="0" cellspacing="0">
					<thead>
						<tr>
							<th>姓名</th>
							<th>性别</th>
							<th>工号</th>
							<th>从属于</th>
							<th>描述</th>
							<th>入职日期</th>
							<th>操作</th>
						</tr>
					</thead>
					<c:forEach var="e" items="${list }">
					<tbody>
							<td><a href="../emp.do?action=zs&emp_id=${e.emp_id }"><img src="css/userX0.gif" border="0">${e.emp_name }</a></td>
							<td>${e.emp_sex }</td>
							<td>${e.emp_code }</td>
							<td>${e.dept.depart_name }</td> 
							<td>${e.emp_description }</td>
							<td>${e.emp_join }</td>
							 <td>
							 	<a class="buttonPortal" title="修改" href="../emp.do?action=zs&emp_id=${e.emp_id }&id=id">&nbsp;<i class="fa fa-eyedropper fa-lg"></i></a>
								<a class="buttonPortal" title="删除" href="../emp.do?action=del&emp_id=${e.emp_id }">&nbsp;<i class="fa fa-remove fa-lg"></i></a>&nbsp;</td>
					</tbody>
					</c:forEach>
				</table>
				<c:choose>
				<c:when test="${num==0 }">
				<div style="padding: 20px 0px;">
					 <a class="button1 button1L" href="../emp.do?action=Emplist&index=1" title="首页">&nbsp;<i class="fa fa-step-backward"></i></a><a 
					 class="button1 button1M" href="../emp.do?action=Emplist&index=${page.index-1 eq 0 ? 1 : page.index-1}" title="上页">&nbsp;<i class="fa fa-backward"></i></a><span 
					 class="button1M">共有 
									<c:choose>
										<c:when test="${page!=null }">${page.count}条记录，第 ${page.index}/${page.total==0?1:page.total} 页</c:when>
										<c:otherwise>0条记录，第1/1页</c:otherwise>
									</c:choose>
									
									</span><a 
					 class="button1 button1M" href="../emp.do?action=Emplist&index=${(page.index+1 gt page.total ? page.total : page.index+1)==0?1:(page.index+1 gt page.total ? page.total : page.index+1)}" title="下页">&nbsp;<i class="fa fa-forward"></i></a><a 
					 class="button1 button1R" href="../emp.do?action=Emplist&index=${(page.total)==0?1:(page.total)}" title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a>		 
			 </div> 
			 </c:when>
			 <c:when test="${num==1 }">
				<div style="padding: 20px 0px;">
					 <a class="button1 button1L" href="../emp.do?action=Emplist&num=1&index=1" title="首页">&nbsp;<i class="fa fa-step-backward"></i></a><a 
					 class="button1 button1M" href="../emp.do?action=Emplist&num=1&index=${page.index-1 eq 0 ? 1 : page.index-1}" title="上页">&nbsp;<i class="fa fa-backward"></i></a><span 
					 class="button1M">共有 
									<c:choose>
										<c:when test="${page!=null }">${page.count}条记录，第 ${page.index}/${page.total==0?1:page.total} 页</c:when>
										<c:otherwise>0条记录，第1/1页</c:otherwise>
									</c:choose>
									
									</span><a 
					 class="button1 button1M" href="../emp.do?action=Emplist&num=1&index=${(page.index+1 gt page.total ? page.total : page.index+1)==0?1:(page.index+1 gt page.total ? page.total : page.index+1)}" title="下页">&nbsp;<i class="fa fa-forward"></i></a><a 
					 class="button1 button1R" href="../emp.do?action=Emplist&num=1&index=${(page.total)==0?1:(page.total)}" title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a>		 
			 </div> 
			 </c:when>
			 <c:when test="${num==2 }">
				<div style="padding: 20px 0px;">
					 <a class="button1 button1L" href="../emp.do?action=Emplist&num=2&index=1" title="首页">&nbsp;<i class="fa fa-step-backward"></i></a><a 
					 class="button1 button1M" href="../emp.do?action=Emplist&num=2&index=${page.index-1 eq 0 ? 1 : page.index-1}" title="上页">&nbsp;<i class="fa fa-backward"></i></a><span 
					 class="button1M">共有 
									<c:choose>
										<c:when test="${page!=null }">${page.count}条记录，第 ${page.index}/${page.total==0?1:page.total} 页</c:when>
										<c:otherwise>0条记录，第1/1页</c:otherwise>
									</c:choose>
									
									</span><a 
					 class="button1 button1M" href="../emp.do?action=Emplist&num=2&index=${(page.index+1 gt page.total ? page.total : page.index+1)==0?1:(page.index+1 gt page.total ? page.total : page.index+1)}" title="下页">&nbsp;<i class="fa fa-forward"></i></a><a 
					 class="button1 button1R" href="../emp.do?action=Emplist&num=2&index=${(page.total)==0?1:(page.total)}" title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a>		 
			 </div> 
			 </c:when>
			 <c:when test="${num==3 }">
				<div style="padding: 20px 0px;">
					 <a class="button1 button1L" href="../emp.do?action=Emplist&num=3&index=1" title="首页">&nbsp;<i class="fa fa-step-backward"></i></a><a 
					 class="button1 button1M" href="../emp.do?action=Emplist&num=3&index=${page.index-1 eq 0 ? 1 : page.index-1}" title="上页">&nbsp;<i class="fa fa-backward"></i></a><span 
					 class="button1M">共有 
									<c:choose>
										<c:when test="${page!=null }">${page.count}条记录，第 ${page.index}/${page.total==0?1:page.total} 页</c:when>
										<c:otherwise>0条记录，第1/1页</c:otherwise>
									</c:choose>
									
									</span><a 
					 class="button1 button1M" href="../emp.do?action=Emplist&num=3&index=${(page.index+1 gt page.total ? page.total : page.index+1)==0?1:(page.index+1 gt page.total ? page.total : page.index+1)}" title="下页">&nbsp;<i class="fa fa-forward"></i></a><a 
					 class="button1 button1R" href="../emp.do?action=Emplist&num=3&index=${(page.total)==0?1:(page.total)}" title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a>		 
			 </div> 
			 </c:when>
			 <c:when test="${num==4 }">
				<div style="padding: 20px 0px;">
					 <a class="button1 button1L" href="../emp.do?action=Emplist&num=4&index=1" title="首页">&nbsp;<i class="fa fa-step-backward"></i></a><a 
					 class="button1 button1M" href="../emp.do?action=Emplist&num=4&index=${page.index-1 eq 0 ? 1 : page.index-1}" title="上页">&nbsp;<i class="fa fa-backward"></i></a><span 
					 class="button1M">共有 
									<c:choose>
										<c:when test="${page!=null }">${page.count}条记录，第 ${page.index}/${page.total==0?1:page.total} 页</c:when>
										<c:otherwise>0条记录，第1/1页</c:otherwise>
									</c:choose>
									
									</span><a 
					 class="button1 button1M" href="../emp.do?action=Emplist&num=4&index=${(page.index+1 gt page.total ? page.total : page.index+1)==0?1:(page.index+1 gt page.total ? page.total : page.index+1)}" title="下页">&nbsp;<i class="fa fa-forward"></i></a><a 
					 class="button1 button1R" href="../emp.do?action=Emplist&num=4&index=${(page.total)==0?1:(page.total)}" title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a>		 
			 </div> 
			 </c:when>
			 </c:choose>
				</td></tr></tbody></table>		
</body>
</html>