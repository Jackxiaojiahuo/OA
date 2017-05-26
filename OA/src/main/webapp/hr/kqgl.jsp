<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/hr/";
%>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="css/kqgl.min.css">
<link rel="stylesheet" href="css/kqgl.css">
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script>
	$(function() {
		$('#colloaMenu2 a').click(function() {
			$(this).siblings().removeClass('textHighlight');
			$(this).addClass('textHighlight');
		});
	});
</script>
</head>
<body>
	<table style="min-width: 120px; width: 100%; height: 100%;" border="0"
		cellpadding="0" cellspacing="0">
		<tbody>
			<tr valign="top">
				<td id="colloaContent"><table border="0" cellpadding="0"
						cellspacing="0">
						<tbody>
							<tr>
								<td><h1>
										<img style="cursor: pointer;" src="css/menu.png"> 考勤管理
									</h1></td>
								<td id="oWorkflowList" align="right"><c:if
										test="${num==0 }">
										<span id="oWorkflowList1"><a class="button1 button1L"
											href="info/ccsq.jsp?sq=0">✚ 出差申请*</a><a
											class="button1 button1M" href="info/cccx.jsp">查找</a></span><a class="button1 button1R" title="刷新"
											href="javascript:location.reload()">&nbsp;<i
											class="fa fa-bolt fa-lg"></i></a>
									</c:if> <c:if test="${num==1 }">
										<span id="oWorkflowList1"><a class="button1 button1L"
											href="info/wcsq.jsp?sq=1">✚ 外出申请*</a><a
											class="button1 button1M" href="info/wccz.jsp">查找</a></span><a class="button1 button1R" title="刷新"
											href="javascript:location.reload()">&nbsp;<i
											class="fa fa-bolt fa-lg"></i></a>
									</c:if> <c:if test="${num==2 }">
										<span id="oWorkflowList1"><a class="button1 button1L"
											href="info/jbsq.jsp?sq=2">✚ 加班申请*</a><a
											class="button1 button1M" href="info/jbcz.jsp">查找</a></span><a class="button1 button1R" title="刷新"
											href="javascript:location.reload()">&nbsp;<i
											class="fa fa-bolt fa-lg"></i></a>
									</c:if> <c:if test="${num==3 }">
										<span id="oWorkflowList1"><a class="button1 button1L"
											href="info/qxjsq.jsp?sq=3">✚ 请休假申请*</a><a
											class="button1 button1M" href="info/qxjcz.jsp">查找</a></span><a class="button1 button1R" title="刷新"
											href="javascript:location.reload()">&nbsp;<i
											class="fa fa-bolt fa-lg"></i></a>
									</c:if> <c:if test="${num==4 }">
										<span id="oWorkflowList1"><a class="button1 button1L"
											href="info/txsq.jsp?sq=4">✚ 调休申请*</a><a
											class="button1 button1M" href="info/txcz.jsp">查找</a></span><a class="button1 button1R" title="刷新"
											href="javascript:location.reload()">&nbsp;<i
											class="fa fa-bolt fa-lg"></i></a>
									</c:if></td>
							</tr>
						</tbody>
					</table> <br>
					<div id="colloaMenu2">
						<a href="../work.do?action=Wklist&num=0"><img
							src="css/folder.png" border="0"> 出差申请</a> <a
							href="../work.do?action=Wklist&num=1"><img src="css/folder.png"
							border="0"> 外出申请</a> <a href="../work.do?action=Wklist&num=2"><img
							src="css/folder.png" border="0"> 加班申请</a> <a
							href="../work.do?action=Wklist&num=3"><img src="css/folder.png"
							border="0"> 请休假申请</a> <a href="../work.do?action=Wklist&num=4"><img
							src="css/folder.png" border="0"> 调休申请</a>
					</div>
					<div id="colloaContent2">
						<table class="tableList" border="0" cellpadding="0"
							cellspacing="0">
							<thead>
								<c:choose>
									<c:when test="${num==0 }">
										<tr>
											<th>主题</th>
											<th>申请人</th>
											<th>所属部门</th>
											<th>目的地</th>
											<th>时间段</th>
										</tr>
									</c:when>
									<c:when test="${num==1 }">
										<tr>
											<th>主题</th>
											<th>申请人</th>
											<th>所属部门</th>
											<th>外出地点</th>
											<th>时间段</th>
										</tr>
									</c:when>
									<c:when test="${num==2 }">
										<tr>
											<th>主题</th>
											<th>申请人</th>
											<th>所属部门</th>
											<th>时间段</th>
											<th>共计时长</th>
										</tr>
									</c:when>
									<c:when test="${num==3 }">
										<tr>
											<th>主题</th>
											<th>申请人</th>
											<th>所属部门</th>
											<th>类型</th>
											<th>时间段</th>
											<th>共计时长</th>
										</tr>
									</c:when>
									<c:when test="${num==4 }">
										<tr>
											<th>主题</th>
											<th>申请人</th>
											<th>所属部门</th>
											<th>时间段</th>
											<th>共计时长</th>
										</tr>
									</c:when>
								</c:choose>
							</thead>
							<tbody>
								<c:choose>
									<c:when test="${num==0 }">
										<c:forEach var="t" items="${list }">
											<tr>
												<td><a
													href="../work.do?action=kqzs&tv_id=${t.tv_id }&zs=0"><i
														style="color: orange;"
														class="fa fa-calendar-minus-o fa-lg"></i><img
														src="css/priority0.gif" border="0">${t.tv_theme }</a></td>
												<td>${t.em.emp_name }</td>
												<td>${t.dept.depart_name }</td>
												<td>${t.tv_termini }</td>
												<td>${t.tv_cdate }/${t.tv_ddate }</td>
											</tr>
										</c:forEach>
									</c:when>
									<c:when test="${num==1 }">
										<c:forEach var="e" items="${list }">
											<tr>
												<td><a
													href="../work.do?action=kqzs&eg_id=${e.eg_id }&zs=1"><i
														style="color: orange;"
														class="fa fa-calendar-minus-o fa-lg"></i><img
														src="css/priority0.gif" border="0">${e.eg_theme }</a></td>
												<td>${e.em.emp_name }</td>
												<td>${e.dept.depart_name }</td>
												<td>${e.eg_site }</td>
												<td>${e.eg_egress }/${e.eg_return }</td>
											</tr>
										</c:forEach>
									</c:when>
									<c:when test="${num==2 }">
										<c:forEach var="o" items="${list }">
											<tbody>
												<td><a
													href="../work.do?action=kqzs&oi_id=${o.oi_id }&zs=2"><i
														style="color: orange;"
														class="fa fa-calendar-minus-o fa-lg"></i><img
														src="css/priority0.gif" border="0">${o.oi_theme }</a></td>
												<td>${o.em.emp_name }</td>
												<td>${o.dept.depart_name }</td>
												<td>${o.oi_cdate }/${o.oi_ddate }</td>
												<td>${o.oi_day }天${o.oi_hour }时</td>
											</tbody>
										</c:forEach>
									</c:when>
										<c:when test="${num==3 }">
										<c:forEach var="f" items="${list }">
											<tr>
												<td><a
													href="../work.do?action=kqzs&fg_id=${f.fg_id}&zs=3"><i
														style="color: orange;"
														class="fa fa-calendar-minus-o fa-lg"></i><img
														src="css/priority0.gif" border="0">${f.fg_theme }</a></td>
												<td>${f.em.emp_name }</td>
												<td>${f.dept.depart_name }</td>
												<td>${f.fg_type }</td>
												<td>${f.fg_cdate }/${f.fg_ddate }</td>
												<td>${f.fg_day }天${f.fg_hour }时</td>
											</tr>
										</c:forEach>
									</c:when>
								<c:when test="${num==4 }">
										<c:forEach var="of" items="${list }">
											<tr>
												<td><a
													href="../work.do?action=kqzs&of_id=${of.of_id}&zs=4"><i
														style="color: orange;"
														class="fa fa-calendar-minus-o fa-lg"></i><img
														src="css/priority0.gif" border="0">${of.of_theme }</a></td>
												<td>${of.em.emp_name }</td>
												<td>${of.dept.depart_name }</td>
												<td>${of.of_cdate }/${of.of_ddate }</td>
												<td>${of.of_day }天${of.of_hour }时</td>
											</tr>
										</c:forEach>
									</c:when>
								</c:choose>
							</tbody>
						</table>
						<c:choose>
			<c:when test="${num==0 }">
					<div style="padding: 20px 0px;">
					 <a class="button1 button1L" href="../work.do?action=Wklist&num=0&index=1" title="首页">&nbsp;<i class="fa fa-step-backward"></i></a><a 
					 class="button1 button1M" href="../work.do?action=Wklist&num=0&index=${page.index-1 eq 0 ? 1 : page.index-1}" title="上页">&nbsp;<i class="fa fa-backward"></i></a><span 
					 class="button1M">共有 ${page.count}条记录，第 ${page.index}/${page.total} 页</span><a 
					 class="button1 button1M" href="../work.do?action=Wklist&num=0&index=${page.index+1 gt page.total ? page.total : page.index+1}" title="下页">&nbsp;<i class="fa fa-forward"></i></a><a 
					 class="button1 button1R" href="../work.do?action=Wklist&num=0&index=${page.total}" title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a>		 
			</div>
			</c:when>
			<c:when test="${num==1 }">
					<div style="padding: 20px 0px;">
					 <a class="button1 button1L" href="../work.do?action=Wklist&num=1&index=1" title="首页">&nbsp;<i class="fa fa-step-backward"></i></a><a 
					 class="button1 button1M" href="../work.do?action=Wklist&num=1&index=${page.index-1 eq 0 ? 1 : page.index-1}" title="上页">&nbsp;<i class="fa fa-backward"></i></a><span 
					 class="button1M">共有 ${page.count}条记录，第 ${page.index}/${page.total} 页</span><a 
					 class="button1 button1M" href="../work.do?action=Wklist&num=1&index=${page.index+1 gt page.total ? page.total : page.index+1}" title="下页">&nbsp;<i class="fa fa-forward"></i></a><a 
					 class="button1 button1R" href="../work.do?action=Wklist&num=1&index=${page.total}" title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a>		 
			</div>
			</c:when>
			<c:when test="${num==2 }">
					<div style="padding: 20px 0px;">
					 <a class="button1 button1L" href="../work.do?action=Wklist&num=2&index=1" title="首页">&nbsp;<i class="fa fa-step-backward"></i></a><a 
					 class="button1 button1M" href="../work.do?action=Wklist&num=2&index=${page.index-1 eq 0 ? 1 : page.index-1}" title="上页">&nbsp;<i class="fa fa-backward"></i></a><span 
					 class="button1M">共有 ${page.count}条记录，第 ${page.index}/${page.total} 页</span><a 
					 class="button1 button1M" href="../work.do?action=Wklist&num=2&index=${page.index+1 gt page.total ? page.total : page.index+1}" title="下页">&nbsp;<i class="fa fa-forward"></i></a><a 
					 class="button1 button1R" href="../work.do?action=Wklist&num=2&index=${page.total}" title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a>		 
			</div>
			</c:when>
			<c:when test="${num==3 }">
					<div style="padding: 20px 0px;">
					 <a class="button1 button1L" href="../work.do?action=Wklist&num=3&index=1" title="首页">&nbsp;<i class="fa fa-step-backward"></i></a><a 
					 class="button1 button1M" href="../work.do?action=Wklist&num=3&index=${page.index-1 eq 0 ? 1 : page.index-1}" title="上页">&nbsp;<i class="fa fa-backward"></i></a><span 
					 class="button1M">共有 ${page.count}条记录，第 ${page.index}/${page.total} 页</span><a 
					 class="button1 button1M" href="../work.do?action=Wklist&num=3&index=${page.index+1 gt page.total ? page.total : page.index+1}" title="下页">&nbsp;<i class="fa fa-forward"></i></a><a 
					 class="button1 button1R" href="../work.do?action=Wklist&num=3&index=${page.total}" title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a>		 
			</div>
			</c:when>
			<c:when test="${num==4 }">
					<div style="padding: 20px 0px;">
					 <a class="button1 button1L" href="../work.do?action=Wklist&num=4&index=1" title="首页">&nbsp;<i class="fa fa-step-backward"></i></a><a 
					 class="button1 button1M" href="../work.do?action=Wklist&num=4&index=${page.index-1 eq 0 ? 1 : page.index-1}" title="上页">&nbsp;<i class="fa fa-backward"></i></a><span 
					 class="button1M">共有 ${page.count}条记录，第 ${page.index}/${page.total} 页</span><a 
					 class="button1 button1M" href="../work.do?action=Wklist&num=4&index=${page.index+1 gt page.total ? page.total : page.index+1}" title="下页">&nbsp;<i class="fa fa-forward"></i></a><a 
					 class="button1 button1R" href="../work.do?action=Wklist&num=4&index=${page.total}" title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a>		 
			</div>
			</c:when>
			</c:choose>
					</div></td>
			</tr>
		</tbody>
	</table>
</body>
</html>