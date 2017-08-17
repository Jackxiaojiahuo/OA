<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/goal/er/";
%>
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'czbg.jsp' starting page</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="css/czbg.min.css">
<link rel="stylesheet" href="css/czbg.css">
<script src="jquery-1.8.2.min.js" type="text/javascript"></script>
<script>
	$(function() {
		$('#btn').click(function() {
			 var s = $('input[name=field]:checked()').val();
			 var c = $('input[name=con]').val();
			//var co={"names":s,"count":c} 
			var name=$("#person").val();
			location.href = '../../repo.do?action=cz&name='+name+'&names=' + s + '&count=' + c + '';
		});
	})
</script>
</head>

<body id="colloaBody">
	<table style="min-width: 950px; width: 100%; height: 100%;"
		cellspacing="0" cellpadding="0" border="0">
		<tbody>
			<tr valign="top">

				<td id="colloaForm"><table cellspacing="0" cellpadding="0"
						border="0">
						<tbody>
							<tr>
								<td><span class="textBig">查找工作报告</span> <input 
									id="person" value="${s_emp.emp_name }" type="hidden" >
									<input name="field" checked="" value="report_name" type="radio">按报告名称
									<br> <input class="textBig" style="width: 550px;"
									id="words" maxlength="100" name="con"> <span
									class="textBig" id="to" style="display: none;"> ~ </span> <input
									class="textBig" style="width: 270px; display: none;"
									id="words2" maxlength="100"> <img id="btn" src="css/search.png"
									style="vertical-align: top; cursor: pointer;"></td>
								<td align="right"><script language="javaScript">/* Code removed by ScrapBook */
								</script><a
									class="button1 button1L" title="刷新"><i
										class="fa fa-bolt fa-lg"></i></a><span id="oWorkflowList1"></span><a
									class="button1 button1R" href="javascript:history.back()" title="关闭"><i
										class="fa fa-times-circle fa-lg"></i></a></td>
							</tr>
						</tbody>
					</table> <br>
					<table class="tableList" cellspacing="0" cellpadding="0" border="0">
						<thead>
							<tr>
								<th><img src="css/priority0.gif">报告名称</th>
								<th>创建人</th>
								<th>所属部门</th>
								<th>评审人</th>
								<th>创建时间</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="r" items="${list }">
								<tbody>
									<td><img src="css/priority0.gif"><a href="../../repo.do?action=bgzs&report_id=${r.report_id}">${r.report_name }</td>
									<td>${r.report_create_name }</td>
									<td>${r.dept.depart_name }</td>
									<td>${r.report_review_name }</td>
									<td>${r.report_create_time }</td>
									
								</tbody>
							</c:forEach>
						</tbody>
					</table>
					 <!-- <script language="javaScript">/* Code removed by ScrapBook */
					</script>
					<div style="padding: 20px 0px;">
						<a class="button1 button1L" title="首页"><i
							class="fa fa-step-backward"></i></a><a class="button1 button1M"
							title="上页"><i class="fa fa-backward"></i></a><span
							class="button1M">共有 0 条记录，第 1/1 页</span><a
							class="button1 button1M" title="下页"><i class="fa fa-forward"></i></a><a
							class="button1 button1R" title="尾页"><i
							class="fa fa-step-forward"></i></a>
					</div> <script language="javaScript">/* Code removed by ScrapBook */
					</script> --></td>
				<td>&nbsp;</td>
			</tr>
		</tbody>
	</table>
</body>
</html>
