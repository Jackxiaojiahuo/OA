<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/hr/info/";
%>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="../css/cz.min.css">
<link rel="stylesheet" href="../css/cz.css">
<script src="jquery-1.8.2.min.js" type="text/javascript"></script>
<script>
	$(function() {
		$('#btn').click(function(){
			var s=$('input[name=field]:checked()').val();
			var c=$('input[name=con]').val();
			$("#names").val(s);
			$("#count").val(c);
			document.forms[0].submit();
		});
	})
</script>
</head>
<body id="colloaBody">
	<table style="min-width: 950px; width: 100%; height: 100%;"
		cellspacing="0" cellpadding="0" border="0">
		<tbody>
			<tr valign="top">
			<form action="../../work.do?action=kqcz&op=tx" method="post">
		    	<input type="hidden" id="names" name="names">
		    	<input type="hidden" id="count" name="count">
		    </form>
				<td id="colloaForm"><table cellspacing="0" cellpadding="0"
						border="0">
						<tbody>
							<tr>
								<td><span class="textBig">查找调休申请</span> <input checked=""
									name="field" value="of_theme" type="radio">按主题 <input
									name="field" value="of_cdate" dbf.type="datetime" type="radio">按调休开始时间<br>
								<input class="textBig" style="width: 550px;" id="words" maxlength="100" name="con">
                 <span class="textBig" id="to" style="display: none;"> ~ </span>
                 <input class="textBig" style="width: 270px; display: none;" id="words2" maxlength="100">
                <img id="btn" src="../css/search.png"style="vertical-align: top; cursor: pointer;"></td>
								<td align="right"><script language="javaScript">/* Code removed by ScrapBook */</script><a class="button1 button1L" title="刷新" href="javascript:location.reload()">&nbsp;<i class="fa fa-bolt fa-lg"></i></a><span id="oWorkflowList1"></span><a class="button1 button1R" title="关闭" href="javascript:history.back()">&nbsp;<i class="fa fa-times-circle fa-lg"></i></a></td>
							</tr>
						</tbody>
					</table>
					<br>

					<table class="tableList" cellspacing="0" cellpadding="0" border="0">
						<thead>
							<tr>
								<th>主题</th>
								<th>申请人</th>
								<th>所属部门</th>
								<th>时间段</th>
								<th>共计时长</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list }" var="of">
								<tr>
									<td><a href="../../work.do?action=kqzs&emp_id=${of.of_id }"><img src="../css/userX0.gif" border="0">${of.of_theme }</a></td>
									<td>${of.em.emp_name }</td>
									<td>${of.dept.depart_name }</td>
									<td>${of.of_cdate }/${of.of_ddate }</td>
									<td>${of.of_day }天${of.of_hour }时</td>
								</tr>
							</c:forEach>
						</tbody>
					</table> 
					
					
					
					</td>
			</tr>
		</tbody>
	</table>
</body>
</html>