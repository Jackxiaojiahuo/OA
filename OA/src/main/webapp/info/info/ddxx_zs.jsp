<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<title>消息 - Colloa</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="../css/font-awesome.min.css">
<link rel="stylesheet" href="css/ddxx_zs.css">
</head>
<body id="colloaBody">
<table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
  <tbody>
  	<c:choose>
  		<c:when test="${outbox!=null }">
	  		<tr valign="top">
		      <td id="colloaForm"><table cellspacing="0" cellpadding="0" border="0">
		          <tbody>
		            <tr>
		              <td class="textBig"><img src="css/priority0.gif">${outbox.outbox_title }</td>
		              <td align="right">
		<a href="javascript:location.reload()" class="button1 button1L" title="刷新"><i class="fa fa-bolt fa-lg"></i></a><span id="oWorkflowList1"><a href="../../email.do?action=del&type=0&id=${outbox.send_id }" class="button1 button1M">删除</a></span><a href="../../email.do?action=ss&type=3" class="button1 button1R" title="关闭"><i class="fa fa-times-circle fa-lg"></i></a>
		              </td>
		            </tr>
		          </tbody>
		        </table>
		        <br>
		        <div style="padding: 10px; border-top: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221);"> 发件人: ${name }  (<fmt:formatDate type="date" value="${outbox.outbox_date }"/>)&nbsp;&nbsp;&nbsp;&nbsp;
		          <div id="oVistors" style="display: none; width: 350px; border: 1px solid rgb(221, 221, 221); background-color: rgb(255, 255, 255); position: absolute; z-index: 10; padding: 10px; margin: -11px; min-height: 100px;"><a style="float: right;"><i class="fa fa-remove fa-lg"></i></a>已阅读人列表：</div>
		          <br>
		          收件人: ${outbox.outbox_receiverName }</div>
		        <br>
		        <p>${outbox.outbox_content }</p></td>
		    </tr>	
  		</c:when>
  		<c:when test="${inbox!=null }">
  			<tr valign="top">
		      <td id="colloaForm"><table cellspacing="0" cellpadding="0" border="0">
		          <tbody>
		            <tr>
		              <td class="textBig"><img src="css/priority0.gif">${inbox.inbox_title }</td>
		              <td align="right">
		<a href="javascript:location.reload()" class="button1 button1L" title="刷新"><i class="fa fa-bolt fa-lg"></i></a><span id="oWorkflowList1"><a href="ddxx_fsxx.jsp?sender=${inbox.inbox_sender }&senderName=${inbox.inbox_senderName}" class="button1 button1M">回复</a><a href="../../email.do?action=del&type=1&id=${inbox.receive_id }" class="button1 button1M">删除</a></span><a href="../../email.do?action=ss&type=3" class="button1 button1R" title="关闭"><i class="fa fa-times-circle fa-lg"></i></a>
		              </td>
		            </tr>
		          </tbody>
		        </table>
		        <br>
		        <div style="padding: 10px; border-top: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221);"> 发件人: ${inbox.inbox_senderName }  (${inbox.inbox_date })&nbsp;&nbsp;&nbsp;&nbsp;
		          <div id="oVistors" style="display: none; width: 350px; border: 1px solid rgb(221, 221, 221); background-color: rgb(255, 255, 255); position: absolute; z-index: 10; padding: 10px; margin: -11px; min-height: 100px;"><a style="float: right;"><i class="fa fa-remove fa-lg"></i></a>已阅读人列表：</div>
		          <br>
		          收件人: ${inbox.inbox_receiverName }</div>
		        <br>
		        <p>${inbox.inbox_content }</p></td>
		    </tr>	
  		</c:when>
  	</c:choose>
    
  </tbody>
</table>
</body>
</html>
