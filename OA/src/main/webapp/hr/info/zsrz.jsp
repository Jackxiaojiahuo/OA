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
					$("#state").val("1");
				}
				if(id==2){
					$("#state").val("2");
				}
					document.forms[0].submit();
				}
		</script>
	</head>

	<body id="colloaBody">
		<table style="min-width: 950px; width: 100%; height: 100%;" border="0" cellpadding="0" cellspacing="0">
			<tbody>
				<tr valign="top">
					<td id="colloaForm">
					<input type="hidden" name="zs" value="1">
						<table class="tableForm" style="table-layout: fixed;" align="center" border="0" cellpadding="0" cellspacing="0">
							<colgroup>
								<col width="60">
								<col>
								<col width="80">
								<col width="150">
							</colgroup>
							<tbody>
								<tr>
									<td style="text-align: right;" >&nbsp;<span style="color: rgb(255, 0, 0);">*</span>主题:</td>
									<td id="dbf.subject" dbf.type="required" colspan="5">${e.et_theme }</td>
									</tr>
								<tr>
									<td style="text-align: right;">&nbsp;步骤:</td>
									<td colspan="3"><span id="mapping.dbf.procXSource">主管审批</span></td>
									<td style="text-align: right;">&nbsp;结束时间:</td>
									<td id="dbf.endTime" dbf.type="date" dbf.source="date,editable">${e.et_shopdate }</td>
								</tr>
							</tbody>
						</table>
						<div>
							<div style="text-align: center;">&nbsp;</div>
							<div style="text-align: center;"><span style="font-size: 20px;"><strong>入职申请单</strong></span></div>
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
										<td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>入职人</td>
										<td id="dbf.operator" dbf.type="required" dbf.source="editable,prompt:select sid,name from userX where stype=0 and statusX>0 and name like '%[!prompt]%' order by name" dbf.key="1000060">${e.et_name }</td>
										<td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>入职日期</td>
										<td id="dbf.operatorSource" dbf.type="date,required" dbf.source="date">${e.et_joindate }</td>
									</tr>
									<tr>
										<td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>入职部门</td>
										<td id="dbf.division" dbf.type="required!0,required" dbf.source="form.fieldSource.division" dbf.key="1000009">${e.dept.depart_name }</td>
										<td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>入职岗位</td>
										<td id="dbf.positionX" dbf.type="required">${e.et_post }</td>
									</tr>
									<tr>
										<td style="text-align: center;">出生日期</td>
										<td id="出生日期" dbf.type="date" dbf.source="date">${e.et_birth }</td>
										<td style="text-align: center;">性别</td>
										<td>${e.et_sex }</td>
									</tr>
									
									<tr>
										<td style="text-align: center;">工作年限</td>
										<td id="工作年限" dbf.type="" dbf.source="">${e.et_life }</td>
										<td style="text-align: center;">备注</td>
										<td id="备注" style="height: 80px;" colspan="1" dbf.type="" dbf.source="">${e.et_remarks }</td>
									</tr>
									<tr>
										
									</tr>
									<tr>
										<td style="text-align: center;">入职处理</td>
										<td colspan="3" dbf.type="" dbf.source=""><input disabled="" id="入职处理" name="入职处理" type="checkbox">人事手续已经办理 <input disabled="" id="入职处理" name="入职处理" type="checkbox">行政资源已经发放&nbsp;<input disabled="" id="入职处理" name="入职处理" type="checkbox">信息系统已经开通（请人事专员或系统管理员在本系统的【员工管理】模块中新增员工信息）</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div>&nbsp;</div>
						<form class="formTaskflow" action="../../recruit.do?action=zppzsp&sp=1" method="post">
						<table class="tableListBorder" style="table-layout: fixed;" align="center" border="0" cellpadding="0" cellspacing="0">
								 <tr>
									<input type="hidden" name="et_id"  value="${e.et_id }">
									<input type="hidden" name="eaa_state" id="state">
									<input type="hidden" name="eaa_date" id="date">
									<td style="text-align: center;">审批意见</td>
									<td id="审批说明" style="height: 80px;" colspan="5.5"><input id="e.dbf.description" class="fieldEditable" name="eaa_conclusion"></td>
								</tr> 
						</table>
						</form>
						<div style="margin: 20px 0px;" align="right">
							<script language="javaScript">
								/* Code removed by ScrapBook */
							</script>
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
												<!-- <a href="zsrz_lct.html">› 显示流程图</a> -->
											</div>【处理过程】</div>
										<div style="padding: 5px 10px 0px; border-top: 1px dotted rgb(221, 221, 221);"><img src="../css/userX0.gif"> ${e.em.emp_name }<span class="textGray">(${e.eaa_date })</span></div>
										<div style="padding: 0px 10px 5px 30px;">[<b>${e.eaa_conclusion }</b>] </div>
									</td>
									<td></td>
									<td>
										<!-- <div class="boxBorder">
											<div style="padding: 2px 10px; border-bottom: 1px dotted rgb(221, 221, 221); margin-bottom: 5px;">【父事务】</div>

										</div>
										<div class="boxBorder">
											<div style="padding: 2px 10px; border-bottom: 1px dotted rgb(221, 221, 221); margin-bottom: 5px;">【子事务】</div>

										</div> -->
									</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
	</body>

</html>