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

<title>My JSP 'zsbg.jsp' starting page</title>
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="css/zsbg.min.css">
<link rel="stylesheet" href="css/zsbg.css">

</head>

<body id="colloaBody">
	<table style="min-width: 950px; width: 100%; height: 100%;"
		cellspacing="0" cellpadding="0" border="0">
		<tbody>
			<tr valign="top">
				<td id="colloaForm"><table class="tableForm"
						style="table-layout: fixed;" cellspacing="0" cellpadding="0"
						border="0" align="center">
						<colgroup>
							<col>
							<col width="180">
						</colgroup>
						<tbody>
							<tr>
								<td>&nbsp;步骤: <span id="mapping.dbf.procXSource">${r.repo_state }</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人:${r.report_create_name }
									<span id="mapping.dbf.responsorSource"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!-- 参与人:
									<span id="mapping.dbf.participantsSource"></span> --></td>
								<!-- <td>&nbsp;优先级: <input id="dbf.priority" value="-1"
									name="dbf.priority" autocomplete="off" disabled="" type="radio">低<input
									id="dbf.priority" checked="" value="0" name="dbf.priority"
									autocomplete="off" disabled="" type="radio">中<input
									id="dbf.priority" value="1" name="dbf.priority"
									autocomplete="off" disabled="" type="radio">高
								</td> -->
							</tr>
						</tbody>
					</table>
					<table cellspacing="0" cellpadding="0" border="0">
						<tbody>
							<tr>
								<td id="dbf.subject"
									style="font-size: 20px; height: 40px; font-weight: bold; text-align: center; line-height: 1;"
									dbf.source="" dbf.type="required">${r.report_name }</td>
							</tr>
						</tbody>
					</table>
					<table class="tableListBorder" style="table-layout: fixed;"
						cellspacing="0" cellpadding="0" border="0" align="center">
						<colgroup>
							<col width="100">
							<col width="350">
							<col width="100">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<td style="text-align: center;">报告分类</td>
								<td>${r.report_classify }</td>
								<td style="text-align: center;">从属于</td>
								<td id="dbf.psid"
									dbf.source="select sid,subject from taskX where modello='taskX.workPlan' and statusX=-10 and observer like '%251000046%25' order by endTime desc"
									dbf.type="" dbf.key="0">${r.report_name }</td>
							</tr>
							<tr>
								<td style="text-align: center;">创建人</td>
								<td>${r.report_create_name }</td>
								<td style="text-align: center;">所属部门</td>
								<td>${r.dept.depart_name }</td>
							</tr>
							<tr>
								<td style="text-align: center;">创建时间</td>
								<td>${r.report_create_time }</td>
								<td style="text-align: center;"><strong><font
										color="#ff0000">*</font></strong>评审人</td>
								<td id="dbf.text0" dbf.source="form.userX.users"
									dbf.type="required" dbf.key="1000061,">${r.report_review_name }</td>
							</tr>
							<tr>
								<td id="tableDetail"
									style=/* "height: 250px; */ vertical-align: top; padding: 10px;"
									colspan="4" dbf.source="" dbf.type="html">
									<table class="tableListBorder" cellspacing="0" cellpadding="0"
										border="0" align="center">
										<colgroup>
											<col width="60">
											<col>
										</colgroup>
										<tbody>
											<tr>
												<td style="text-align: center;">序号</td>
												<td style="text-align: center;">报告事项</td>
											</tr>
											
											<tr>
												<td style="text-align: center;" dbf.source="" dbf.type="">${r.report_content_id }</td>
												<td dbf.source="" dbf.type="">${r.report_content }</td>
											</tr>
											
										</tbody>
									</table>
								</td>
							</tr>
							<!-- <tr>
								<td style="text-align: center;">附件</td>
								<td id="attachments" colspan="3" dbf.source="files">&nbsp;</td>
							</tr> -->
						</tbody>
					</table> <script language="javascript">/* Code removed by ScrapBook */
					</script>
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

