<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/login/";
%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login - 10oa</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/view.css">
<link href="../js/bootstarp/core/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../js/bootstarp/dialog/css/bootstrap-dialog.css"
	type="text/css" rel="stylesheet" />
<script src="../js/bootstarp/jquery-3.1.0.js"></script>
<script src="../js/bootstarp/core/js/bootstrap.min.js"
	type="text/javascript"></script>
<script src="../js/bootstarp/dialog/js/bootstrap-dialog.js"
	type="text/javascript"></script>
<style>
#error{
color:red;}
</style>
<script>
	function login(){
		document.forms[0].submit();
	}
</script>
</head>
<body id="colloaBody">
	<table style="height: 100%;" cellspacing="0" cellpadding="0" border="0">
		<tbody>
			<tr height="35px">
				<td style="color: white;">&nbsp;</td>
			</tr>
			<tr>
				<td id="colloaLogin" align="center">
					<div id="colloaName">
						<img src="css/10oa.png" height="40px">
					</div> <img src="css/dotBlue.gif" style="cursor: pointer;"
					onclick="skin('skinBlue');"> <img src="css/dotGreen.gif"
					style="cursor: pointer;" onclick="skin('skinGreen');"> <img
					src="css/dotYellow.gif" style="cursor: pointer;"
					onclick="skin('skinYellow');"> <img src="css/dotRed.gif"
					style="cursor: pointer;" onclick="skin('skinRed');"> <img
					src="css/dotGray.gif" style="cursor: pointer;"
					onclick="skin('skinGray');"><br>
				<br>
					<form onkeypress="if(event.keyCode==13) login();" method="post" action="../login.do?action=login">
						<table style="width: 250px; table-layout: fixed;" cellspacing="0"
							cellpadding="5" border="0" align="center">
							<colgroup>
								<col width="40px">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<td class="left" align="center"><img src="css/person.png"></td>
									<td class="right"><input placeholder="请输入用户名" autocomplete="off"
										name="username" id="username" maxlength="20" value="admin" type="text"></td>
								</tr>
								<tr height="5px">
									<td colspan="2"></td>
								</tr>
								<tr>
									<td class="left" align="center"><img src="css/lock.png"></td>
									<td class="right"><input placeholder="请输入口令" autocomplete="off"
										name="password" id="password" maxlength="20" value="000000" type="password"></td>
								</tr>
								<tr height="5px">
									<td colspan="2" id="error">${emsg }</td>
								</tr>
								<tr>
									<td colspan="2" class="button"
										onclick="login()" align="center">登录系统</td>
								</tr>
								<tr height="5px">
									<td colspan="2"></td>
								</tr>
								<tr>
									<td colspan="2" id="oInform" align="center">&nbsp;</td>
								</tr>
							</tbody>
						</table>
					</form> <br>
				<br>
				</td>
			</tr>
			<tr height="35px">
				<td align="center"><a href="http://www.10oa.com/"
					target="_blank">版权所有© 蓝鱼软件有限公司</a></td>
			</tr>
		</tbody>
	</table>
	<script language="Javascript">
	function show(msg){
		var dlg=BootstrapDialog.show({
			"title" : "提示信息",
			"message" : msg,
			"type" : BootstrapDialog.TYPE_SUCCESS
		});
		setTimeout(function(){
		    dlg.close();
		},2000);
	}
		$(function(){
			var url=window.location.href;
			var par=url.substr(url.indexOf("?")+4);
			if(par=="1"){
				show("登录超时,重新登录");
			}else if(par=="0"){
				show("你的账号已在另一地点登录");
			}
		});	
	</script>
</body>
</html>
