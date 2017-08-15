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

<title>My JSP 'czjh.jsp' starting page</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="css/czjh.min.css">
<link rel="stylesheet" href="css/czjh.css">
<script src="jquery-1.8.2.min.js" type="text/javascript"></script>
<script>
	$(function() {
		$('#btn').click(function() {
			 var s = $('input[name=field]:checked()').val();
			 var c = $('input[name=con]').val();
			//var co={"names":s,"count":c} 
			location.href = '../../pros.do?action=cz&names=' + s + '&count=' + c + '';
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
								<td><span class="textBig">查找工作计划</span> <input checked=""
									name="field" value="prospectus_create_name" type="radio">按创建人
									<input name="field" value="prospectus_name" type="radio">按计划名称

									<!-- <input
									name="field" value="divisionSource" type="radio">按所属部门 <input
									name="field" value="startTime" dbf.type="date" type="radio">按开始时间
									 -->
									<br> <input class="textBig" style="width: 550px;"
									id="words" maxlength="100" name="con"> <span
									class="textBig" id="to" style="display: none;"> ~ </span> <input
									class="textBig" style="width: 270px; display: none;"
									id="words2" maxlength="100"> <img id="btn"
									src="css/search.png"
									style="vertical-align: top; cursor: pointer;"></td>
								<td align="right"><script language="javaScript">/* Code removed by ScrapBook */
								</script><a class="button1 button1L" title="刷新"><i
										class="fa fa-bolt fa-lg"></i></a><span id="oWorkflowList1"></span><a
									class="button1 button1R"  href="javascript:history.back()" title="关闭"><i
										class="fa fa-times-circle fa-lg"></i></a></td>
							</tr>
						</tbody>
					</table> <br>

					<table class="tableList" cellspacing="0" cellpadding="0" border="0">
						<thead>
							<tr>
								<th><img src="css/priority0.gif">计划名称</th>
								<th>创建人</th>
								<th>所属部门</th>
								<th>开始时间</th>
								<th>结束时间</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="p" items="${list }">
							
								<tbody>
									<td><img src="css/priority0.gif"><a href="../../pros.do?action=jhzs&prospectus_id=${p.prospectus_id}">${p.prospectus_name }</td>
									<td>${p.prospectus_create_name }</td>
									<td>${p.dept.depart_name }</td>
									<td>${p.prospectus_create_time }</td>
									<td>${p.prospectus_terminal_time }</td>
									
								</tbody>
								
							</c:forEach>
							
						</tbody>
					</table> 
			 <%-- <div style="padding: 20px 0px;">
					 <a class="button1 button1L" href="../pros.do?action=cz&index=1" title="首页">&nbsp;<i class="fa fa-step-backward"></i></a><a 
					 class="button1 button1M" href="../pros.do?action=cz&index=${page.index-1 eq 0 ? 1 : page.index-1}" title="上页">&nbsp;<i class="fa fa-backward"></i></a><span 
					 class="button1M">共有 ${page.count}条记录，第 ${page.index}/${page.total} 页</span><a 
					 class="button1 button1M" href="../pros.do?action=cz&index=${page.index+1 gt page.total ? page.total : page.index+1}" title="下页">&nbsp;<i class="fa fa-forward"></i></a><a 
					 class="button1 button1R" href="../pros.do?action=cz&index=${page.total}" title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a>		 
			 </div>   --%>
				</td>
				<td>&nbsp;</td>
			</tr>
		</tbody>
	</table>
</body>
</html>
