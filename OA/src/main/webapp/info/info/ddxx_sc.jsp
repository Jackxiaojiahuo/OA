<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/info/info/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除 - Colloa</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/ddxx_sc.css">
</head>
<body id="colloaBody">
<table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
  <tbody>
    <tr valign="top">
      <td id="colloaForm"><form>
          <div class="boxBorder" style="padding: 10px 30px;">
            <p><img src="css/warning.gif"> 您确定要删除下列记录吗？</p>
            <ul>
              <li>苏州的客户的发票</li>
            </ul>
          </div>
          <br>
        </form>
        <form method="post">
          <input id="viewState" name="viewState" type="hidden">
        </form>
        <script language="javaScript">/* Code removed by ScrapBook */</script><br>
        <div id="_vWorkflowActionsShow" align="right"><a class="button">确定</a><a href="javascript:history.go(-1)" class="button">取消</a></div>
        <br></td>
    </tr>
  </tbody>
</table>
</body>
</html>
