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
<title>增加 - 10oa</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/view.css">
<style>
.error {
	color: red;
}
</style>
<script src="../js/jquery-1.8.3.min.js"></script>
<script>
function checkdepart_name() {
	var des = $("#roleName").val();
	des = des.replace(/</g, "&lt;");
	des = des.replace(/>/g, "&gt;");
	$("#roleName+label").html("");
	if (des == ""|| des.length==0) {
		$("#roleName+label").html("请输入角色名称");
		return false;
	} else if (filterSqlStr(des)) {
		$("#roleName+label").html("字符中包含了敏感字符" + sql_str() + ",请重新输入！");
		return false;
	}
	return true;
}
function checkdepart_des() {
	var des = $("#roleDescription").val();
	des = des.replace(/</g, "&lt;");
	des = des.replace(/>/g, "&gt;");
	$("#roleDescription+label").html("");
	if (des == "" || des.length==0) {
		return true;
	} else if (filterSqlStr(des)) {
		$("#roleDescription+label").html(
				"字符中包含了敏感字符" + sql_str() + ",请重新输入！");
		return false;
	}
}
function check(){
	var flag=true;
		if(!checkdepart_name()) flag=false;
		if(!checkdepart_des()) flag=false;
		return flag;
}
	function sub(){
		if(check())
			document.forms[0].submit();
	}
</script>
</head>
<body id="colloaBody">
<table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
  <tbody>
    <tr valign="top">
      <td id="colloaForm">
		<form method="post" action="../role.do?action=addRole">
          <table class="tableForm" summary="" style="table-layout:fixed;" cellspacing="0" cellpadding="0" border="0">
            <colgroup>
            <col width="100">
            <col>
            </colgroup>
            <tbody>
              <tr>
                <td>&nbsp;名称<b style="color: red;">*</b></td>
                <td id="dbf.name">
                	<input id="roleName" name="role_name" required="required" class="fieldEditable" ><label
										class="error"></label>
                </td>
              </tr>
              <tr>
                <td>&nbsp;描述</td>
                <td id="dbf.description">
                <textarea id="roleDescription" name="role_description" class="fieldEditable" style="height: 200px;"></textarea><label
										class="error"></label></td>
              </tr>
            </tbody>
          </table>
		</form>
        <div id="_vWorkflowActionsShow" align="center">
        	<a href="javascript:sub()" class="button">确定</a>
        	<a class="button" href="javascript:history.back()">取消</a></div>
        <br>
        </td>
    </tr>
  </tbody>
</table>

</body>
</html>
