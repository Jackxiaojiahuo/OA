<%@page import="org.apache.shiro.web.session.HttpServletSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/xz/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登记 - 10oa</title>
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="css/hylb.min.css">
<link rel="stylesheet" href="css/hylb.css">
<style></style>
<link href="../js/bootstarp/core/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../js/bootstarp/fileinput/css/fileinput.css" media="all"
	rel="stylesheet" type="text/css" />
<link href="../js/bootstarp/dialog/css/bootstrap-dialog.css"
	type="text/css" />
<script src="../js/bootstarp/jquery-3.1.0.js"></script>
<script src="../js/bootstarp/core/js/bootstrap.min.js"
	type="text/javascript"></script>
<script src="../js/bootstarp/fileinput/js/fileinput.js"
	type="text/javascript"></script>
<script src="../js/bootstarp/fileinput/js/locales/zh.js"
	type="text/javascript"></script>
<script src="../js/bootstarp/dialog/js/bootstrap-dialog.js"
	type="text/javascript"></script>
<script>
	$(function(){
		 $('#colloaMenu2 a').click(function(){
    		$(this).siblings().removeClass('textHighlight');
    		$(this).addClass('textHighlight');
  		});
	})
</script>
<table style="min-width: 120px; width: 100%; height: 100%;" border="0" cellpadding="0" cellspacing="0"><tbody>
    <tr valign="top">
	<td id="colloaContent">
<table border="0" cellpadding="0" cellspacing="0">
          <tbody>
            <tr>
              <td><h1><img style="cursor: pointer;" src="css/menu.png"> 会议室管理</h1></td>
              <td id="oWorkflowList" align="right"><span id="oWorkflowList1"><a class="button1 button1L" href="info/hydj.jsp">✚ 登记</a></span><a class="button1 button1R" title="刷新" href="javascript:location.reload()">&nbsp;<i class="fa fa-bolt fa-lg"></i></a></td>
            </tr>
          </tbody>
        </table>
        <br>
        <!--  style="width:200px;border:1px rgb(221, 221, 221);border-radius: 5px;float: left;padding: 30px 0px 25px;"  -->    
    
        <div style="width:200px;border:1px rgb(221, 221, 221) solid;border-radius: 5px;float: left;padding: 30px 0px 25px;">
        <ul class="nav nav-pills nav-stacked" >
		  <li class="active"><a href="javascript:location.reload()">会议室列表</a></li>
		  <li><a href="hyyd.jsp">会议室预定</a></li>
		</ul>
        <!-- <a class="textHighlight" href="hylb.html"><img src="css/folder.png" border="0">会议室列表</a>
        <a href="hyyd.html" border="0"><img src="css/folder.png" border="0">会议室预定</a> --></div>
        <div id="colloaContent2"><script language="javaScript">/* Code removed by ScrapBook */</script><script language="javaScript">/* Code removed by ScrapBook */</script>
        <c:forEach var="hy" items="${list }">
        
        
          <div class="boxBorder" style="padding: 20px;">
            <div style="display: inline-block; vertical-align: top; margin-right: 20px;"><a><img class="radius" src="../${hy.pic }" border="0" width="300"></a></div>
            <div style="display: inline-block; vertical-align: top;">
              <div class="textBig"><a>${hy.name }</a></div>
              <br>
              容量：${hy.capacity }<br>
              位置：${hy.location }<br>
              内部设备：${hy.device }<br>
              状态：<c:choose>
           		<c:when test="${hy.status eq 1 }">
		              <img src="css/userXStatus0.png">正常<br>
           		</c:when>
           		<c:when test="${hy.status eq 2 }">
		              <img src="css/userXStatus10.png">维修<br>
           		</c:when> 
           		<c:otherwise>
		              <img src="css/userXStatus-1.png">报废<br>
           		</c:otherwise>     
           </c:choose>
              描述：${hy.description }<br>
              操作:
              <a href="../board.do?action=findBoard&id=${hy.id }" class="btn btn-primary">修改</a>&nbsp;&nbsp;
              <c:if test="${hy.status ne 3 }">
	              <a href="../board.do?action=delBoard&id=${hy.id }" class="btn btn-primary">删除</a>
              </c:if>
              </div>
          </div>
          </c:forEach>
          <div>
	          <ul class="pagination">
			    <li><a href="../board.do?action=findBoard&curpage=1">首页</a></li>
			    <li class="previous"><a href="../board.do?action=findBoard&curpage=${board.curpage eq 1 ? 1 : board.curpage-1 }">上一页</a></li>
			    <li><a>第 ${board.curpage }/${board.maxpage } 页</a></li>
			    <li class="next"><a href="../board.do?action=findBoard&curpage=${board.curpage+1 gt board.maxpage ? board.maxpage : board.curpage+1 }">下一页</a></li>
			    <li><a href="../board.do?action=findBoard&curpage=${board.maxpage }">末页</a></li>
				</ul>
          </div>
         <%-- &laquo; &larr; &rarr; &raquo;  <a href="../board.do?action=findBoard&curpage=1" class="button1 button1L" title="首页">&nbsp;<i class="fa fa-step-backward">&nbsp;</i>
          </a><a href="../board.do?action=findBoard&curpage=${board.curpage eq 1 ? 1 : board.curpage-1 }" class="button1 button1M" title="上页">&nbsp;<i class="fa fa-backward"></i>
          </a><span class="button1M">第 ${board.curpage }/${board.maxpage } 页
          </span><a href="../board.do?action=findBoard&curpage=${board.curpage+1 gt board.maxpage ? board.maxpage : board.curpage+1 }" class="button1 button1M" title="下页">&nbsp;<i class="fa fa-forward"></i>
          </a><a href="../board.do?action=findBoard&curpage=${board.maxpage }" class="button1 button1R" title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a></div>
        --%>
		</td></tr></tbody></table>
		<c:if test="${msg ne null }">
	<script>
		var msg = '${msg}';
		var dlg=BootstrapDialog.show({
			"title" : "提示",
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