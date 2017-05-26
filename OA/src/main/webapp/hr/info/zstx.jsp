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
<style>
/* Code tidied up by ScrapBook */
</style>
</head>
<body id="colloaBody">
	<table style="min-width: 950px; width: 100%; height: 100%;" border="0"
		cellpadding="0" cellspacing="0">
		<tbody>
			<tr valign="top">
				<td id="colloaForm">
				<input type="hidden" name="zs" value="4">
				<table class="tableForm"
						style="table-layout: fixed;" align="center" border="0"
						cellpadding="0" cellspacing="0">
						<colgroup>
							<col width="60">
							<col>
							<col width="80">
							<col width="150">
						</colgroup>
						<tbody>
							<tr>
								<td style="text-align: right;">&nbsp;<span
									style="color: rgb(255, 0, 0);">*</span>主题:
								</td>
								<td id="dbf.subject" dbf.type="required">${of.of_theme }</td>
								<td style="text-align: right;">&nbsp;优先级:</td>
								<td>${of.of_priority }</td>
							</tr>
							<tr>
								<td style="text-align: right;">&nbsp;步骤:</td>
								<td><span id="mapping.dbf.procXSource">填单人知悉</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人:
									<span id="mapping.dbf.responsorSource">沈涛辉,</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人:
									<span id="mapping.dbf.participantsSource"></span></td>
								<td style="text-align: right;">&nbsp;结束时间:</td>
								<td id="dbf.endTime" dbf.type="date" dbf.source="date,editable">${of.of_shopdate }</td>
							</tr>
						</tbody>
					</table>
					<div style="text-align: center;">&nbsp;</div>
					<div style="text-align: center;">
						<span style="font-size: 20px;"><strong>调休申请单</strong></span>
					</div>
					<div>
						<table class="tableListBorder" align="center" border="0"
							cellpadding="0" cellspacing="0">
							<colgroup>
								<col width="120">
								<col width="200">
								<col width="120">
								<col width="200">
								<col width="120">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<td style="text-align: center;"><span
										style="color: rgb(255, 0, 0);">*</span>申请人</td>
									<td id="dbf.operator" dbf.type="required"
										dbf.source="editable,prompt:select sid,name from userX where stype=0 and statusX>0 and name like '%[!prompt]%' order by name"
										dbf.key="1000089">${of.em.emp_name }</td>
									<td style="text-align: center;"><span
										style="color: rgb(255, 0, 0);">*</span>所属部门</td>
									<td id="dbf.division" dbf.type="required!0,required"
										dbf.source="form.fieldSource.division" dbf.key="1000034">${of.dept.depart_name }</td>
									<td style="text-align: center;" dbf.type="date"
										dbf.source="datetime,editable"><span
										style="color: rgb(255, 0, 0);">*</span>申请时间</td>
									<td id="dbf.time2" dbf.type="date,required" dbf.source="date">${of.of_applydate }</td>
								</tr>
								<tr>
									<td style="text-align: center;"><span
										style="color: rgb(255, 0, 0);">*</span>调休时间</td>
									<td id="dbf.time0" dbf.type="date,required"
										dbf.source="datetime,editable">${of.of_cdate }</td>
									<td style="width: 102px; text-align: center;">～</td>
									<td id="dbf.time1" dbf.type="date,required"
										dbf.source="datetime,editable">${of.of_ddate }</td>
									<td style="text-align: center;" dbf.type="date,required"
										dbf.source="datetime,editable">&nbsp;<span
										style="color: rgb(255, 0, 0);">*</span>共计时长
									</td>
									<td dbf.type="date,required" dbf.source="datetime,editable"><input
										disabled="" id="dbf.number3" style="width: 40px;" value="${of.of_day }"
										name="dbf.number3" dbf.type="number,required"> 天 <input
										disabled="" id="dbf.number4" style="width: 40px;" value="${of.of_hour }"
										name="dbf.number4" dbf.type="amount,required"> 小时</td>
								</tr>
								<tr>
									<td style="text-align: center;"><span
										style="color: rgb(255, 0, 0);">*</span>调休事由</td>
									<td id="请休假事由" style="height: 80px;" colspan="5"
										dbf.type="required" dbf.source="">${of.of_reason }</td>
								</tr>
								<tr>
									<td style="text-align: center;"><span
										style="color: rgb(255, 0, 0);">*</span>工作代理人</td>
									<td id="工作代理人" colspan="5" dbf.type="required" dbf.source="">${of.of_agent }</td>
								</tr>
							</tbody>
						</table>
					</div>
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
											<a href="zstx_lct.html">› 显示流程图</a>
										</div>
										【处理过程】
									</div>
									<div
										style="padding: 5px 10px 0px; border-top: 1px dotted rgb(221, 221, 221);">
										<img src="../css/userX0.gif"> 沈涛辉 <span class="textGray">(2016/4/12
											15:22)</span>
									</div>
									<div style="padding: 0px 10px 5px 30px;">
										[<b>提交审批</b>]
									</div>
									<div
										style="padding: 5px 10px 0px; border-top: 1px dotted rgb(221, 221, 221);">
										<img src="../css/userX0.gif"> 李萌 <span class="textGray">(2016/4/13
											14:33)</span>
									</div>
									<div style="padding: 0px 10px 5px 30px;">
										[<b>通过并转领导审批</b>]
									</div>
									<div
										style="padding: 5px 10px 0px; border-top: 1px dotted rgb(221, 221, 221);">
										<img src="../css/userX0.gif"> 王刚 <span class="textGray">(2016/4/19
											17:36)</span>
									</div>
									<div style="padding: 0px 10px 5px 30px;">
										[<b>通过</b>]
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