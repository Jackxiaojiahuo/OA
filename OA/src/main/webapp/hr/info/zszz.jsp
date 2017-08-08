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
		<link rel="stylesheet" href="../css/sq.css">
	<script src="jquery-1.8.2.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="jquery-ui.min.js"></script>
		<script>
			function aa() {
				var CheckAll = document.getElementById('All');
				var CheckBox = document.getElementsByTagName('input');
				CheckAll.onclick = function() {
					for(i = 0; i < CheckBox.length; i++) {
						if(CheckBox[i].checked == true) {
							CheckBox[i].checked = false;
						} else {
							CheckBox[i].checked = true
						}
					};
				};
			};
			aa();
			function check(id){
			if(id==1){
				$("input[name=eaa_state]").val("1");
			}
			if(id==2){
				$("input[name=eaa_state]").val("2");
			}
				document.forms[0].submit();
			}
		</script>
		<style>
			/* Code tidied up by ScrapBook */
		</style>
	</head>

	<body id="colloaBody">
		<table style="min-width: 950px; width: 100%; height: 100%;" border="0" cellpadding="0" cellspacing="0">
			<tbody>
				<tr valign="top">
					<td id="colloaForm">
					<input type="hidden" name="zs" value="2">
						<table class="tableForm" style="table-layout: fixed;" align="center" border="0" cellpadding="0" cellspacing="0">
							<colgroup>
								<col width="60">
								<col>
								<col width="80">
								<col width="150">
							</colgroup>
							<tbody>
								<tr>
									<td style="text-align: right;">&nbsp;<span style="color: rgb(255, 0, 0);">*</span>主题:</td>
									<td id="dbf.subject" dbf.type="required" colspan="5">${b.b_theme }</td>
								</tr>
								<tr>
									<td style="text-align: right;">&nbsp;步骤:</td>
									<td colspan="3"><span id="mapping.dbf.procXSource">主管审批</span></td>
									<td style="text-align: right;">&nbsp;结束时间:</td>
									<td id="dbf.endTime" dbf.type="date" dbf.source="date,editable">${b.b_shopdate }</td>
								</tr>
							</tbody>
						</table>
						<div>
							<div class="titlep" style="text-align: center;">&nbsp;</div>
							<div class="titlep" style="text-align: center;"><strong><span style="font-size: 20px;">转正申请单</span></strong></div>
						</div>
						<div>
							<table class="tableListBorder" style="table-layout: fixed;" align="center" border="0" cellpadding="0" cellspacing="0">
								<colgroup>
									<col width="150">
									<col width="300">
									<col width="150">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>申请人</td>
										<td id="dbf.operator" dbf.type="required" dbf.source="editable,prompt:select sid,name from userX where stype=0 and statusX>0 and name like '%[!prompt]%' order by name" dbf.key="1000060">${b.em.emp_name }</td>
										<td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>申请日期</td>
										<td id="dbf.time2" dbf.type="date,required" dbf.source="date">${b.b_applydate }</td>
									</tr>
									<tr>
										<td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>所属部门</td>
										<td id="dbf.division" dbf.type="required!0" dbf.source="form.fieldSource.division" dbf.key="1000002">${b.dept.depart_name }</td>
										<td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>申请岗位</td>
										<td id="dbf.positionX" dbf.type="required" dbf.source="">${b.b_post }</td>
									</tr>
									<tr>
										<td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>入职日期</td>
										<td id="入职日期" dbf.type="date,required" dbf.source="date">${b.b_joindate }</td>
										<td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>转正日期</td>
										<td id="dbf.time0" dbf.type="date,required" dbf.source="date">${b.b_become }</td>
									</tr>
									<tr>
										<td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>试用期主要工作内容</td>
										<td id="试用期主要工作内容" style="height: 80px;" colspan="3" dbf.type="required" dbf.source="">${b.b_content }</td>
									</tr>
									<tr>
										<td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>试用期主要工作成绩</td>
										<td id="试用期主要工作成绩" style="height: 80px;" colspan="3" dbf.type="required" dbf.source="">${b.b_achievement }</td>
									</tr>
									<tr>
										<td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>试用期存在的问题</td>
										<td id="试用期存在的问题" style="height: 80px;" colspan="3" dbf.type="required" dbf.source="">${b.b_problem }</td>
									</tr>
									<tr>
										<td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>对存在问题的改进设想</td>
										<td id="对存在问题的改进设想" style="height: 80px;" colspan="3" dbf.type="required" dbf.source="">${b.b_imagine }</td>
									</tr>
									<tr>
										<td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>主管评语</td>
										<td id="主管评语" style="height: 80px;" colspan="3" dbf.type="required" dbf.source="">${b.b_comment }</td>
									</tr>
									<tr>
										<td style="text-align: center;">转正处理</td>
										<td colspan="3" dbf.type="" dbf.source=""><input disabled="" id="转正处理" checked="" name="转正处理" type="checkbox">人事手续已经办理 <input disabled="" id="转正处理" checked="" name="转正处理" type="checkbox">信息系统已经变更（请人事专员或系统管理员在本系统的【员工管理】模块中变更员工信息）</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div>&nbsp;</div>
						<form class="formTaskflow" action="../../recruit.do?action=zppzsp&sp=2" method="post">
						<table class="tableListBorder" style="table-layout: fixed;" align="center" border="0" cellpadding="0" cellspacing="0">
								 <tr>
									<input type="hidden" name="re_id"  value="${b.b_id }">
									<input type="hidden" name="eaa_state">
									<input type="hidden" name="eaa_date">
									<td style="text-align: center;">审批意见</td>
									<td id="审批说明" style="height: 80px;" colspan="5.5"><input id="e.dbf.description" class="fieldEditable" name="eaa_conclusion"></td>
								</tr> 
						</table>
						</form>
						<div style="margin: 20px 0px;" align="right">
							<a class="button1 button1L" title="刷新" href="javascript:location.reload()">&nbsp;<i class="fa fa-bolt fa-lg"></i></a><span id="oWorkflowList1"><a class="button1 button1M" onClick="window.print()">打印本页面</a></span><span id="oWorkflowList1"><a class="button1 button1M" onClick="check(1)">结束审批</a></span><span id="oWorkflowList1"><a class="button1 button1M" onClick="check(2)">退回</a></span><a class="button1 button1R" title="关闭" href="javascript:history.back()">&nbsp;<i class="fa fa-times-circle fa-lg"></i></a>
						</div>
						<table style="table-layout: fixed;" border="0" cellpadding="0" cellspacing="0">
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
												<!-- <a href="zszz_lct.html">› 显示流程图</a> -->
											</div>【处理过程】</div>
										<div style="padding: 5px 10px 0px; border-top: 1px dotted rgb(221, 221, 221);"><img src="../css/userX0.gif"> ${b.em.emp_name } <span class="textGray">(${b.eaa_date })</span></div>
										<div style="padding: 0px 10px 5px 30px;">[<b>${b.eaa_conclusion }</b>] </div>
									</td>
									<!-- <td></td>
									<td>
										<div class="boxBorder">
											<div style="padding: 2px 10px; border-bottom: 1px dotted rgb(221, 221, 221); margin-bottom: 5px;">【父事务】</div>

										</div>
										<div class="boxBorder">
											<div style="padding: 2px 10px; border-bottom: 1px dotted rgb(221, 221, 221); margin-bottom: 5px;">【子事务】</div>

										</div>
									</td> -->
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
	</body>

</html>