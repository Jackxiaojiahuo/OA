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
				<input type="hidden" name="zs" value="3">
				<table style="table-layout: fixed;"
						class="tableForm" align="center" border="0" cellpadding="0"
						cellspacing="0">
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
								<td id="dbf.subject" dbf.type="required">${f.fg_theme }</td>
								<td style="text-align: right;">&nbsp;优先级:</td>
								<td>${f.fg_priority }</td>
							</tr>
							<tr>
								<td style="text-align: right;">&nbsp;步骤:</td>
								<td><span id="mapping.dbf.procXSource">填单</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人:
									<span id="mapping.dbf.responsorSource">王刚,</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人:
									<span id="mapping.dbf.participantsSource"></span></td>
								<td style="text-align: right;">&nbsp;结束时间:</td>
								<td id="dbf.endTime" dbf.type="date" dbf.source="date,editable">${f.fg_shopdate }</td>
							</tr>
						</tbody>
					</table>
					<div style="text-align: center;">&nbsp;</div>
					<div style="text-align: center;">
						<span style="font-size: 20px;"><strong>请休假申请单</strong></span>
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
										dbf.key="1000111" dbf.value="王刚">${f.em.emp_name }</td>
									<td style="text-align: center;"><span
										style="color: rgb(255, 0, 0);">*</span>所属部门</td>
									<td id="dbf.division" dbf.type="required!0,required"
										dbf.source="form.fieldSource.division" dbf.key="1000002">${f.dept.depart_name }</td>
									<td style="text-align: center;"><span
										style="color: rgb(255, 0, 0);">*</span>申请时间</td>
									<td id="dbf.time2" dbf.type="date,required" dbf.source="date">${f.fg_shopdate }</td>
								</tr>
								<tr>
									<td style="text-align: center;"><span
										style="color: rgb(255, 0, 0);">*</span>请休假时间</td>
									<td id="dbf.time0" dbf.type="date,required"
										dbf.source="datetime,editable">${f.fg_cdate }</td>
									<td style="text-align: center;">～</td>
									<td id="dbf.time1" dbf.type="date,required"
										dbf.source="datetime,editable">${f.fg_ddate }</td>
									<td style="text-align: center;" dbf.type="date,required"
										dbf.source="datetime,editable">&nbsp;<span
										style="color: rgb(255, 0, 0);">*</span>共计时长
									</td>
									<td dbf.type="date,required" dbf.source="datetime,editable"><input
										disabled="" style="width: 40px;" id="dbf.number3"
										name="dbf.number3" value="${f.fg_day }" dbf.type="number,required">
										天 <input disabled="" style="width: 40px;" id="dbf.number4"
										name="dbf.number4" value="${f.fg_hour }" dbf.type="amount,required">
										小时</td>
								</tr>
								<tr>
									<td style="text-align: center;"><span
										style="color: rgb(255, 0, 0);">*</span>请休假类别</td>
									<td colspan="5">${f.fg_type }</td>
								</tr>
								<tr>
									<td style="text-align: center;"><span
										style="color: rgb(255, 0, 0);">*</span>请休假事由</td>
									<td style="height: 80px;" id="请休假事由" colspan="5"
										dbf.type="required" dbf.source="">${f.fg_reason }</td>
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
											<a href="zsqxj_lct.html">› 显示流程图</a>
										</div>
										【处理过程】
									</div>
									<div
										style="padding: 5px 10px 0px; border-top: 1px dotted rgb(221, 221, 221);">
										<img src="../css/userX0.gif"> 王刚 <span class="textGray">(2016/10/2
											14:51)</span>
									</div>
									<div style="padding: 0px 10px 5px 30px;"></div>
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