<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/hr/info/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="../css/zs.min.css">
<link rel="stylesheet" href="../css/zs.css">
<script>
	function aa() {
		var CheckAll = document.getElementById('All');
		var CheckBox = document.getElementsByTagName('input');
		CheckAll.onclick = function() {
			for (i = 0; i < CheckBox.length; i++) {
				if (CheckBox[i].checked == true) {
					CheckBox[i].checked = false;
				} else {
					CheckBox[i].checked = true
				}
			}
			;
		};
	};
	aa()
</script>
</head>
<body id="colloaBody">
	<table style="min-width: 950px; width: 100%; height: 100%;" border="0"
		cellpadding="0" cellspacing="0">
		<tbody>
			<tr valign="top">
				<td id="colloaForm">
				<input type="hidden" name="zs" value="0">
				<table style="table-layout: fixed;"
						class="tableForm" align="center" border="0" cellpadding="0"
						cellspacing="0">
						<colgroup>
							<col width="60">
							<col>
							<col width="60">
							<col width="120">
						</colgroup>
						<tbody>
							<tr>
								<td style="text-align: right;">&nbsp;<span
									style="color: rgb(255, 0, 0);">*</span>主题:
								</td>
								<td id="dbf.subject" dbf.type="required">${t.tv_theme }</td>
								<td style="text-align: right;">&nbsp;优先级:</td>
								<td>${t.tv_priority }</td>
							</tr>
							<tr>
								<td style="text-align: right;">&nbsp;步骤:</td>
								<td colspan="3"><span id="mapping.dbf.procXSource">领导审批</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人:
									<span id="mapping.dbf.responsorSource">王刚,</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人:
									<span id="mapping.dbf.participantsSource"></span></td>
							</tr>
						</tbody>
					</table>
					<div style="text-align: center;">&nbsp;</div>
					<div style="text-align: center;">
						<span style="font-size: 20px;"><strong>出差申请单</strong></span>
					</div>
					<div>
						<table style="table-layout: fixed;" class="tableListBorder"
							align="center" border="0" cellpadding="0" cellspacing="0">
							<colgroup>
								<col width="100">
								<col width="180">
								<col width="100">
								<col width="250">
								<col width="100">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<td style="text-align: center;"><span
										style="color: rgb(255, 0, 0);">*</span>申请人</td>
									<td id="dbf.operator" dbf.type="required"
										dbf.source="editable,prompt:select sid,name from userX where stype=0 and statusX>0 and name like '%[!prompt]%' order by name"
										dbf.key="1000112">${t.em.emp_name }</td>
									<td style="text-align: center;"><span
										style="color: rgb(255, 0, 0);">*</span>所属部门</td>
									<td id="dbf.division" dbf.type="required"
										dbf.source="form.fieldSource.division" dbf.key="1000009">${t.dept.depart_name }</td>
									<td style="text-align: center;"><span
										style="color: rgb(255, 0, 0);">*</span>申请时间</td>
									<td id="dbf.time2" dbf.type="date,required" dbf.source="date">${t.tv_applydate }</td>
								</tr>
								<tr>
									<td style="text-align: center;"><span
										style="color: rgb(255, 0, 0);">*</span>出差时间</td>
									<td id="dbf.time0" dbf.type="date,required"
										dbf.source="datetime,editable">${t.tv_cdate }</td>
									<td style="text-align: center;" dbf.type="" dbf.source="">~</td>
									<td id="dbf.time1" dbf.type="date,required"
										dbf.source="datetime,editable">${t.tv_ddate }</td>
									<td style="text-align: center;"><span
										style="color: rgb(255, 0, 0);">*</span>目的地</td>
									<td id="dbf.text5" dbf.type="required" dbf.source="">${t.tv_termini }</td>
								</tr>
								<tr>
									<td style="text-align: center;"><span
										style="color: rgb(255, 0, 0);">*</span>出差事由</td>
									<td style="height: 80px;" id="出差事由" colspan="5"
										dbf.type="required" dbf.source="">${t.tv_reason }</td>
								</tr>
								<tr>
									<td style="text-align: center;">交通工具</td>
									<td colspan="5">${t.tv_traffic }</td>
								</tr>
								<tr>
									<td style="text-align: center;">出差报告</td>
									<td style="height: 150px; vertical-align: top;" id="出差汇报"
										colspan="5" dbf.type="" dbf.source="">${t.tv_report }</td>
								</tr>
								<tr>
									<td style="text-align: center;">出差结果</td>
									<td colspan="5">${t.tv_result }
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div>&nbsp;</div>
					<table style="table-layout: fixed;" class="tableForm"
						align="center" border="0" cellpadding="0" cellspacing="0">
						<colgroup>
							<col width="60">
							<col>
						</colgroup>
					</table>
					<div>&nbsp;</div>
					<div style="margin: 20px 0px;" align="right">
						<a class="button1 button1L" title="刷新" href="javascript:location.reload()">&nbsp;<i class="fa fa-bolt fa-lg"></i></a><span id="oWorkflowList1"><a class="button1 button1M" onClick="window.print()">打印本页面</a></span><a class="button1 button1R" title="关闭" href="javascript:history.back()">&nbsp;<i class="fa fa-times-circle fa-lg"></i></a>
					</div>
					<table style="table-layout: fixed;" border="0" cellpadding="0"
						cellspacing="0">
						<colgroup>
							<col width="60%">
							<col width="2%">
							<col>
						</colgroup>
						<tbody>
							<tr valign="top">
								<td class="boxBorder">
									<div style="padding: 2px 10px;">
										<div style="float: right;">
											<a href="zscc_lct.html">› 显示流程图</a>
										</div>
										【处理过程】
									</div>
									<div
										style="padding: 5px 10px 0px; border-top: 1px dotted rgb(221, 221, 221);">
										<img src="../css/userX0.gif"> 李浩 <span class="textGray">(2016/5/4
											16:41)</span>
									</div>
									<div style="padding: 0px 10px 5px 30px;">
										[<b>提交主管审批</b>]
									</div>
									<div
										style="padding: 5px 10px 0px; border-top: 1px dotted rgb(221, 221, 221);">
										<img src="../css/userX0.gif"> 李萌 <span class="textGray">(2016/5/9
											8:12)</span>
									</div>
									<div style="padding: 0px 10px 5px 30px;">
										[<b>通过并转领导审批</b>]
									</div>
								</td>
								<td></td>
								<td>
									<div class="boxBorder">
										<div
											style="padding: 2px 10px; border-bottom: 1px dotted rgb(221, 221, 221); margin-bottom: 5px;">【父事务】</div>

									</div>
									<div class="boxBorder">
										<div
											style="padding: 2px 10px; border-bottom: 1px dotted rgb(221, 221, 221); margin-bottom: 5px;">【子事务】</div>

									</div>
								</td>
							</tr>
						</tbody>
					</table></td>
			</tr>
		</tbody>
	</table>
</body>
</html>