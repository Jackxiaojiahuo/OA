<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/goal/er/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'zsrw.jsp' starting page</title>
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="css/zsrw.min.css">
<link rel="stylesheet" href="css/zsrw.css">
</head>

<body id="colloaBody">
	<table style="min-width: 950px; width: 100%; height: 100%;"
		cellspacing="0" cellpadding="0" border="0">
		<tbody>
			<tr valign="top">
				<td id="colloaForm"><table style="table-layout: fixed;"
						class="tableForm" cellspacing="0" cellpadding="0" border="0"
						align="center">
						<colgroup>
							<col>
							<col width="180">
						</colgroup>
						<tbody>
							<tr>
								<td>&nbsp;步骤: <span id="mapping.dbf.procXSource">${a.assi_state }</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人:${a.assignment_create_name}
									<span id="mapping.dbf.responsorSource"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!-- 参与人:
									<span id="mapping.dbf.participantsSource"></span> --></td>
								<!-- <td>&nbsp;优先级: <input id="dbf.priority" name="dbf.priority"
									value="-1" autocomplete="off" disabled="" type="radio">低<input
									id="dbf.priority" name="dbf.priority" value="0" checked=""
									autocomplete="off" disabled="" type="radio">中<input
									id="dbf.priority" name="dbf.priority" value="1"
									autocomplete="off" disabled="" type="radio">高
								</td> -->
							</tr>
						</tbody>
					</table>
					<table cellspacing="0" cellpadding="0" border="0">
						<tbody>
							<tr>
								<td
									style="text-align: center; line-height: 1; height: 40px; font-size: 20px; font-weight: bold;"
									id="dbf.subject" dbf.type="required" dbf.source="">${a.assignment_name }</td>
							</tr>
						</tbody>
					</table>
					<table style="table-layout: fixed;" class="tableListBorder"
						cellspacing="0" cellpadding="0" border="0" align="center">
						<colgroup>
							<col width="100">
							<col width="350">
							<col width="100">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<td style="text-align: center;">任务分类</td>
								<td>${a.assignment_classify }</td>
								<td style="text-align: center;">从属于</td>
								<td id="dbf.psid" dbf.type=""
									dbf.source="select sid,subject from taskX where modello='taskX.workPlan' and statusX=-10 and observer like '%251000112%25' order by endTime desc"
									dbf.key="0">${a.assignment_name }</td>
							</tr>
							<tr>
								 <td style="text-align: center;">创建人</td>
								<td>${a.assignment_create_name }</td> 
								<td style="text-align: center;">所属部门</td>
								<td>${a.dept.depart_name }</td>
							</tr>
							<tr>
								<td style="text-align: center;"><strong><font
										color="#ff0000">*</font></strong>开始时间</td>
								<td id="dbf.startTime" dbf.type="date,required"
									dbf.source="date,editable">${a.assignment_create_time }</td>
								<td style="text-align: center;">结束时间</td>
								<td id="dbf.endTime" dbf.type="date" dbf.source="date,editable">${a.assignment_terminal_time }</td>
							</tr>
							<tr>
								<td style="text-align: center;"><strong><font
										color="#ff0000">*</font></strong>相关执行人</td>
								<td id="dbf.text1" dbf.type="required"
									dbf.source="form.userX.users" dbf.key="1000071,">${a.assignment_executor_name }</td>
								<td style="text-align: center;">工作量</td>
								<td>${a.assignment_workload }天</td>
							</tr>
							<tr>
								<td style="text-align: center;">任务说明</td>
								<td style="height: 120px; vertical-align: top;" id="任务说明"
									colspan="3" dbf.type="" dbf.source="">${a.assignment_explain }</td>
							</tr>
							
							<tr>
								<td style="text-align: center;">执行结果</td>
								 <td style="height: 120px; vertical-align: top;" id="执行结果"
									colspan="3" dbf.type="" dbf.source="">${a.assignment_executor_fruit}</td> 
							</tr>
							
						</tbody>
					</table>
					<div style="margin: 20px 0px;" align="right">
						<script language="javaScript">/* Code removed by ScrapBook */
						</script>
						<a class="button1 button1L" title="刷新">&nbsp;<i
							class="fa fa-bolt fa-lg"></i></a><span id="oWorkflowList1"><a
							class="button1 button1M">打印表单</a><a class="button1 button1M">打印本页面</a></span><a
							class="button1 button1R" href="javascript:history.back()" title="关闭">&nbsp;<i
							class="fa fa-times-circle fa-lg"></i></a>
					</div>
					</td>
				<td>&nbsp;</td>
			</tr>
		</tbody>
	</table>
</body>
</html>
