<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/sysManager/";
%>	
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改 - 10oa</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/view.css">
<script src="../js/jquery-1.8.3.min.js"></script>
<script>
	function check(){
		document.forms[0].submit();
	}
</script>
</head>
<body id="colloaBody">
	<table style="min-width: 950px; width: 100%; height: 100%;"
		cellspacing="0" cellpadding="0" border="0">
		<tbody>
			<tr valign="top">
				<td id="colloaForm">
					<form id="myForm" action="../role.do?action=editRole" method="post">
						<table class="tableForm" summary="" style1="table-layout:fixed;"
							cellspacing="0" cellpadding="0" border="0">
							<colgroup>
								<col width="100">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<td>&nbsp;名称<b style="color: red;">*</b></td>
									<td id="dbf.name"
										dbf.type="required,unique(userX where sid<>1000001)"><input
										id="role_name" name="role_name" class="fieldEditable" value=${role.role_name }></td>
								</tr>
								<tr>
									<td>&nbsp;描述</td>
									<td id="dbf.description"><textarea 
									name="role_description"
										class="fieldEditable" style="height: 200px;" >${role.role_description }</textarea>
									<input  name="role_id" type="hidden" value="${role.role_id }">
										</td>
								</tr>
							</tbody>
						</table>
					</form>
					<div id="_vWorkflowActionsShow" align="center">
						<a class="button" href="javascript:check()">确定</a>
						<a class="button" href="javascript:history.back()">取消</a>
					</div> <br></td>
			</tr>
		</tbody>
	</table>
</body>
</html>
