<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/xz/info/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登记 - 10oa</title>
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="../css/djgongtong.min.css">
<link rel="stylesheet" href="../css/hydj.css">
<style></style>
<link href="../../js/bootstarp/core/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../../js/bootstarp/fileinput/css/fileinput.css" media="all"
	rel="stylesheet" type="text/css" />
<link href="../../js/bootstarp/dialog/css/bootstrap-dialog.css"
	type="text/css" />
<script src="../../js/bootstarp/jquery-3.1.0.js"></script>
<script src="../../js/bootstarp/core/js/bootstrap.min.js"
	type="text/javascript"></script>
<script src="../../js/bootstarp/fileinput/js/fileinput.js"
	type="text/javascript"></script>
<script src="../../js/bootstarp/fileinput/js/locales/zh.js"
	type="text/javascript"></script>
<script src="../../js/bootstarp/dialog/js/bootstrap-dialog.js"
	type="text/javascript"></script>
</head>
<body id="colloaBody">
	<table style="min-width: 950px; width: 100%; height: 100%;"
		cellspacing="0" cellpadding="0" border="0">
		<tbody>
			<tr valign="top">
				<td id="colloaForm">
						<div class="textBig"><h2>登记车辆</h2></div>
						<br>
						<div class="boxBorder" style="padding: 30px;">
							<form class="form-block" id="myForm" method="post"
								action="../../car.do?action=addCar"
								enctype="multipart/form-data"
								onsubmit="return check()">
								
								<!--
                    class="file" data-upload-url="#"
                     <img class="fieldGetValueBySource" id="tu" src="../css/fieldSource.gif">
                      <div id="e.dbf.thumbnails"><img class="radius" style="width: 300px;" src="../css/noThumb.jpg" border="0"></div>
                       -->
								<div class="form-group">
									<label><b style="color: red;">*</b>名称</label> <input id="e.dbf.name"
										required="required" placeholder="请输入会议室名称" name="name"
										autocomplete="off" class="form-control" value="${c.name }">
								</div>
								<div class="form-group">
									<label><b style="color: red;">*</b>牌号</label> <input id="e.dbf.specification"
										required="required" placeholder="请输入会议室容量" name="no"
										autocomplete="off" class="form-control" value="${c.no }">
								</div>
								<div class="form-group">
									<label><b style="color: red;">*</b>状态</label> <input id="zc" checked=""
										value="1" name="status" type="radio" class=""> <label for="zc"><img
										src="../css/userXStatus0.png">正常</label> <input id="wx"
										value="2" name="status" type="radio"> <label for="wx"><img
										src="../css/userXStatus10.png">维修</label> <input id="bf"
										value="3" name="status" type="radio"> <label for="bf"><img
										src="../css/userXStatus-1.png">报废</label>
										</div>
										<input type="hidden" name="id" value="${c.id }">
								<div align="center">
								<input type="submit" class="btn btn-primary" value="确定"
									> <input type="button"
									class="btn btn-primary" onclick="javascript:history.back()"
									value="取消">
							</div>
							</form>
								</div>
							
							<br></td>
			</tr>
		</tbody>
	</table>
</body>
<script>
	/* $('#file-1').fileinput({
	 "language": "zh",
	 "showUpload":false,
	 "showPreview":true
	 }); */
	 function check(){
		 
	 }
</script>
<c:if test="${msg ne null }">
	<script>
		var msg = '${msg}';
		var dlg=BootstrapDialog.show({
			"title" : "提示信息",
			"message" : msg,
			"type" : BootstrapDialog.TYPE_SUCCESS
		});
		setTimeout(function(){
		    dlg.close();
		},1000);
	</script>
	<%
		session.setAttribute("msg", null);
	%>
</c:if>
</html>
