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
  <link href="../js/bootstarp/core/css/bootstrap.min.css" rel="stylesheet" type="text/css">
 <script src="../js/bootstarp/jquery-3.1.0.js"></script>
<script src="../js/bootstarp/core/js/bootstrap.min.js" type="text/javascript"></script>
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
				<div class="textBig"><h2><img style="cursor: pointer;" src="css/menu.png">&nbsp;修改角色信息</h2></div>
						<br>
					<form id="myForm" action="../role.do?action=editRole" method="post">
						<table class="tableForm" summary="" style1="table-layout:fixed;"
							cellspacing="0" cellpadding="0" border="0">
							<colgroup>
								<col width="100">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<td><label><b style="color: red;">*</b>名称</label></td>
									<td id="dbf.name"
										><input
										id="role_name" name="role_name" class="form-control" value=${role.role_name }></td>
								</tr>
								<tr>
									<td><label><b style="color: red;">*</b>描述</label></td>
									<td id="dbf.description"><textarea 
									name="role_description"
										class="form-control" style="height: 200px;" >${role.role_description }</textarea>
									<input  name="role_id" type="hidden" value="${role.role_id }">
										<label
										class="error"></label></td>
								</tr>
							</tbody>
						</table>
					</form>
					<div id="_vWorkflowActionsShow" align="center">
						<input type="button" onclick="check()" class="btn btn-primary" value="确定">
        	<input class="btn btn-primary" type="button" onclick="javascript:location='../role.do?action=findAllRole';" value="取消">
					</div> <br></td>
			</tr>
		</tbody>
	</table>
</body>
</html>
