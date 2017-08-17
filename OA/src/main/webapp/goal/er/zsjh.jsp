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
<title>My JSP 'zsjh.jsp' starting page</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="css/zsjh.min.css">
<link rel="stylesheet" href="css/zsjh.css">

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
								<td>&nbsp;步骤: <span id="mapping.dbf.procXSource">详细工作计划<%-- ${p.pros_state } --%></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人:${p.prospectus_create_name }<span
									id="mapping.dbf.responsorSource"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!-- 参与人:
									<span id="mapping.dbf.participantsSource"></span> --></td>
								<td><input type="hidden" name="prospectus_id"
									value="${p.prospectus_id }"></td>
							</tr>
						</tbody>
					</table>
					<table cellspacing="0" cellpadding="0" border="0">
						<tbody>
							<tr>
								<td id="dbf.subject"
									style="font-size: 20px; height: 40px; font-weight: bold; text-align: center; line-height: 1;"
									dbf.source="" dbf.type="required">${p.prospectus_name }
									(${p.dept.depart_name })</td>
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
								<td style="text-align: center;">计划分类</td>
								<td>${p.prospectus_classify }</td>
								<td style="text-align: center;">计划状态</td>
								<td id="dbf.psid"
									dbf.source="select sid,subject from taskX where modello='taskX.workPlan' and statusX=-10 and observer like '%251000068%25' order by endTime desc"
									dbf.type="" dbf.key="0">${p.pros_state  }</td>
							</tr>
							<tr>
								<td style="text-align: center;">创建人</td>
								<td>${p.prospectus_create_name }</td>
								<td style="text-align: center;">所属部门</td>
								<td>${p.dept.depart_name }</td>
							</tr>
							<tr>
								<td style="text-align: center;"><strong><font
										color="#ff0000">*</font></strong>开始时间</td>
								<td id="dbf.startTime" dbf.source="date,editable"
									dbf.type="date,required">${p.prospectus_create_time }</td>
								<td style="text-align: center;"><strong><font
										color="#ff0000">*</font></strong>结束时间</td>
								<td id="dbf.endTime" dbf.source="date,editable"
									dbf.type="date,required">${p.prospectus_terminal_time }</td>
							</tr>
							<tr>
								<td style="text-align: center;"><strong><font
										color="#ff0000">*</font></strong>评审人</td>
								<td id="dbf.text0" dbf.source="form.userX.users"
									dbf.type="required" dbf.key="1000061,">${p.prospectus_review_name }</td>
								<td style="text-align: center;"><strong><font
										color="#ff0000">*</font></strong>执行人</td>
								<td id="dbf.text1" dbf.source="form.userX.users"
									dbf.type="required" dbf.key="1000069,1000068,1000067,">${p.prospectus_executor_name }</td>
							</tr>
							<%-- <tr>
								<td id="tableDetail"
									style=" vertical-align: top; padding: 10px;"
									colspan="4" dbf.source="" dbf.type="html">
									<table class="tableListBorder" cellspacing="0" cellpadding="0"
										border="0" align="center">
										<colgroup>
											<col width="60">
											<col>
											<col width="200">
											<col width="200">
										</colgroup>
										<tbody>
											<tr>
												<td style="text-align: center;">序号</td>
												
												<td style="text-align: center;">计划事项</td>
												<td style="width: 96px; text-align: center;">执行人</td>
												<td style="width: 130px; text-align: center;">执行时间</td>
											</tr>																						
											<tr>
													<td style="text-align: center;">${p.prospectus_content_id}</td>
													<td style="text-align: center;">${p.prospectus_content }</td>
													<td style="text-align: center;">${p.prospectus_executor_name }</td>
													<td style="text-align: center;">${p.prospectus_executor_time }</td>										
											</tr>										
										</tbody>
									</table>
								</td>
							</tr> --%>
							<tr>
								<td style="text-align: center;">计划内容</td>
								 <td style="height: 120px; vertical-align: top;" id="执行结果"
									colspan="3" dbf.type="" dbf.source="">${p.prospectus_content }</td> 
							</tr>
							
						</tbody>
					</table> <script language="javascript">/* Code removed by ScrapBook */
					</script>
					<div style="margin: 20px 0px;" align="right">
						<script language="javaScript">/* Code removed by ScrapBook */
						</script>
						<a class="button1 button1L" title="刷新">&nbsp;<i
							class="fa fa-bolt fa-lg"></i></a><span id="oWorkflowList1"><a
							class="button1 button1M">打印表单</a><a class="button1 button1M">打印本页面</a></span><a
							class="button1 button1R"  href="javascript:history.back()" title="关闭">&nbsp;<i
							class="fa fa-times-circle fa-lg" ></i></a>
					</div>
					<%-- <table style="table-layout: fixed;" cellspacing="0" cellpadding="0"
						border="0">
						<colgroup>
							<col width="60%">
							<col width="2%">
							<col>
						</colgroup>
						<tbody>
							<tr valign="top">
								<!-- <td class="boxBorder">
									<div style="padding: 2px 10px;">
										<div style="float: right;">
											<a href="lct/jhlc.html">› 显示流程图</a>
										</div>
										【处理过程】
									</div>
									<div
										style="padding: 5px 10px 0px; border-top: 1px dotted rgb(221, 221, 221);">
										<img src="css/userX0.gif"> 王萍 <span class="textGray">(2016/4/27
											15:53)</span>
									</div>
									<div style="padding: 0px 10px 5px 30px;">
										[<b>转评审</b>]
									</div>
								</td> -->
								<td></td>
								<td>
									<div class="boxBorder">
										<div
											style="padding: 2px 10px; border-bottom: 1px dotted rgb(221, 221, 221); margin-bottom: 5px;">【父事务】</div>

									</div>
									<div class="boxBorder">
										<div
											style="padding: 2px 10px; border-bottom: 1px dotted rgb(221, 221, 221); margin-bottom: 5px;">【子事务】</div>
										<a style="display: block; padding-left: 10px;"><i
											style="color: rgb(60, 188, 60);"
											class="fa fa-calendar-check-o fa-lg"></i><img
											src="css/priority0.gif" border="0">[接待杭州分公司同事]</a><a
											style="display: block; padding-left: 10px;"><i
											style="color: orange;" class="fa fa-calendar-minus-o fa-lg"></i><img
											src="css/priority1.gif" border="0"><span
											style="color: red;">[北京雨海科技公司接待]</span></a>
									</div>
								</td>
							</tr>
						</tbody>
					</table> --%></td>
				<td>&nbsp;</td>
			</tr>
		</tbody>
	</table>
</body>
</html>