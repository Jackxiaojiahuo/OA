<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/sysManager/";
%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改 - 10oa</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/zxyh_font-awesome.min.css">
<link rel="stylesheet" href="css/zxyh_view.css">
<script src="../js/jquery-1.8.3.min.js"></script>
</head>
<body id="colloaBody">
<table style="min-width: 120px; width: 100%; height: 100%;" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr valign="top">
      <td id="colloaContent"><table border="0" cellpadding="0" cellspacing="0">
          <tbody>
            <tr>
              <td><h1><img style="cursor: pointer;" src="css/menu.png"> 在线用户 [<span id="oTotal">${uoCount }</span>]</h1></td>
              <td id="oAppStarted" class="textGray"></td>
              <td align="right"><a href="../login.do?action=uo" class="button1 button1A" title="刷新">&nbsp;<i class="fa fa-bolt fa-lg"></i></a></td>
            </tr>
          </tbody>
        </table>
        <br>
        <div id="oList" class="boxBorder" style="padding: 30px;">
	        <c:forEach var="uo" items="${uoList }">
		        <span style="display: inline-block; vertical-align: top; width: 220px; margin: 0px 20px 20px 0px;">
		          <div style="float: left; width: 65px;"><img src="css/userPicture.gif"></div>
		          <span class="textBig">${uo.emp.emp_name }</span><br>
		          ${uo.ip }<br>
		          ${uo.intoTime }</span>
	        </c:forEach>
         </div>
        </td>
    </tr>
  </tbody>
</table>
</body>
</html>