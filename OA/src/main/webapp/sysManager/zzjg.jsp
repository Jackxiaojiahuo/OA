<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/sysManager/";
%>	
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/zzjg_font-awesome.min.css">
<link rel="stylesheet" href="css/zzjg_view.css">
<link href="../js/bootstarp/core/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../js/bootstarp/dialog/css/bootstrap-dialog.css"
	type="text/css" rel="stylesheet" />
<script src="../js/bootstarp/jquery-3.1.0.js"></script>
<script src="../js/bootstarp/core/js/bootstrap.min.js"
	type="text/javascript"></script>
<script src="../js/bootstarp/dialog/js/bootstrap-dialog.js"
	type="text/javascript"></script>
</head>
<body>
<table style="min-width: 120px; width: 100%; height: 100%;" border="0" cellpadding="0" cellspacing="0">
<tbody>
    <tr valign="top">
	<td id="colloaContent">
     <table  border="0" cellpadding="0" cellspacing="0">
          <tbody>
            <tr>
              <td><h1><img style="cursor: pointer;" src="css/menu.png"> 组织机构</h1></td>
              <td align="right">
              	<a href="../depart.do?action=findAllDepart_select" class="button1 button1L">✚ 新增组织机构</a></span><a 
              href="../depart.do?action=findAllDepart_list"  class="button1 button1R" title="刷新">&nbsp;<i class="fa fa-bolt fa-lg"></i></a></td>
            </tr>
          </tbody>
        </table>
        <br>
        <table  class="tableList"  border="0" cellpadding="0" cellspacing="0">
	    	<thead>
	           <tr>
	               <th>名称</th>
	               <th>描述</th>
	               <th>状态</th>
	               <th>操作</th>
	           </tr>
		     </thead>
          <tbody>
          <c:set var="level" value="0" scope="request" /><!-- 记录树的层次，注意scope-->
	      <c:import url="zzjg_item.jsp" />
          </tbody>
        </table>
</tr></tbody></table>
</body>
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
		session.removeAttribute("msg");
	%>
</c:if>
</html>