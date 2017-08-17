<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/goal/";
%>
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'qbgzbg.jsp' starting page</title>

<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="css/qbgzbg.min.css">
<link rel="stylesheet" href="css/qbgzbg.css">
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script src="js/nav.js"></script>
</head>

<body>
	<table style="min-width: 980px; width: 100%; height: 100%;" border="0"
		cellpadding="0" cellspacing="0">
		<tbody>
			<tr valign="top">

				<td id="colloaContent"><table border="0" cellpadding="0"
						cellspacing="0">
						<tbody>
							<tr>
								<td><h1>
										<img style="cursor: pointer;" src="css/menu.png"> 我的工作报告
									</h1></td>
								<td align="right"><span id="oWorkflowList1"><a
										href="er/xzbg.jsp" class="button1 button1L">✚ 撰写工作报告*</a><a
										href="er/czbggr.jsp" class="button1 button1M">查找</a></span><a
									class="button1 button1R" title="刷新">&nbsp;<i
										class="fa fa-bolt fa-lg"></i></a> <script language="javaScript">/* Code removed by ScrapBook */
										</script></td>
							</tr>
						</tbody>
					</table> <br>
					<table style="table-layout: fixed;" border="0" cellpadding="0"
						cellspacing="0">
						<colgroup>
							<col width="20%">
							<col width="2%">
							<col>
						</colgroup>
						<tbody>
							<tr valign="top">
								<td><table class="tableList" border="0" cellpadding="0"
										cellspacing="0">
										<thead>
											<tr>
												<th style="padding-left: 16px;">分类</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td style="padding: 16px;" class="treeOfNavigation"><a
													href="../repo.do?action=Reportlist&num=0&report_create_name=${s_emp.emp_name }"
													class="textHighlight"><img src="css/folder.png"
														border="0"> (显示所有)</a> <a
													href="../repo.do?action=Reportlist&num=1&state=0&report_create_name=${s_emp.emp_name }"><img
														src="css/folder.png" border="0"> 评审中的报告 </a> <a
													href="../repo.do?action=Reportlist&num=1&state=1&report_create_name=${s_emp.emp_name }"><img
														src="css/folder.png" border="0"> 已关闭的报告 </a></td>
											</tr>
											<tr>
												<td style="padding: 16px;" class="treeOfNavigation"><a
													href="../repo.do?action=Reportlist&num=2&classify=0&report_create_name=${s_emp.emp_name }"><img
														src="css/folder.png" border="0"> 年度报告 </a> <a
													href="../repo.do?action=Reportlist&num=2&classify=1&report_create_name=${s_emp.emp_name }"><img
														src="css/folder.png" border="0"> 季度报告 </a> <a
													href="../repo.do?action=Reportlist&num=2&classify=2&report_create_name=${s_emp.emp_name }"><img
														src="css/folder.png" border="0"> 月度报告 </a> <a
													href="../repo.do?action=Reportlist&num=2&classify=3&report_create_name=${s_emp.emp_name }"><img
														src="css/folder.png" border="0"> 周报告 </a> <a
													href="../repo.do?action=Reportlist&num=2&classify=4&report_create_name=${s_emp.emp_name }"><img
														src="css/folder.png" border="0"> 项目报告 </a> <a
													href="../repo.do?action=Reportlist&num=2&classify=5&report_create_name=${s_emp.emp_name }"><img
														src="css/folder.png" border="0"> 其他报告 </a></td>
											</tr>
										</tbody>
									</table></td>
								<td></td>
								<td><table class="tableList" border="0" cellpadding="0"
										cellspacing="0">
										<thead>
											<tr>
												<th><img src="css/priority0.gif">报告名称</th>
												<th>创建人</th>
												<th>所属部门</th>
												<th>评审人</th>
												<th>创建时间</th>
											</tr>
										</thead>
										<c:forEach var="r" items="${list }">
											<tbody>
												<td><a
													href="../repo.do?action=bgzs&report_id=${r.report_id}">${r.report_name }</td>
												<td>${r.report_create_name }</td>
												<td>${r.dept.depart_name }</td>
												<td>${r.report_review_name }</td>
												<td>${r.report_create_time }</td>

											</tbody>
										</c:forEach>
										<tr>
						</tbody>
					</table>
					<div style="padding: 20px 0px;">
						<a class="button1 button1L"
							href="../repo.do?action=Reportlist&index=1&report_create_name=${s_emp.emp_name }" title="首页">&nbsp;<i
							class="fa fa-step-backward"></i></a><a class="button1 button1M"
							href="../repo.do?action=Reportlist&report_create_name=${s_emp.emp_name }&index=${page.index-1 eq 0 ? 1 : page.index-1}"
							title="上页">&nbsp;<i class="fa fa-backward"></i></a><span
							class="button1M">共有 ${page.count}条记录，第
							${page.index}/${page.total} 页</span><a class="button1 button1M"
							href="../repo.do?action=Reportlist&report_create_name=${s_emp.emp_name }&index=${page.index+1 gt page.total ? page.total : page.index+1}"
							title="下页">&nbsp;<i class="fa fa-forward"></i></a><a
							class="button1 button1R"
							href="../repo.do?action=Reportlist&report_create_name=${s_emp.emp_name }&index=${page.total}"
							title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a>
					</div></td>
			</tr>
		</tbody>
	</table>

</body>
</html>
