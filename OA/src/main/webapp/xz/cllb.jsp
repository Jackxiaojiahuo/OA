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
<link rel="stylesheet" href="css/cllb.min.css">
<link rel="stylesheet" href="css/cllb.css">
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
              <td><h1><img style="cursor: pointer;" src="css/menu.png"> 车辆管理</h1></td>
              <td id="oWorkflowList" align="right"><span id="oWorkflowList1"><a class="button1 button1L"  href="info/cldj.jsp">✚ 登记</a></span><a href="javascript:location.reload()" class="button1 button1R" title="刷新">&nbsp;<i class="fa fa-bolt fa-lg"></i></a></td>
            </tr>
          </tbody>
        </table>
        <br>
         <div style="width:200px;border:1px rgb(221, 221, 221) solid;border-radius: 5px;float: left;padding: 30px 0px 25px;">
        <ul class="nav nav-pills nav-stacked" >
		  <li class="active"><a href="javascript:location.reload()">车辆列表</a></li>
		  <li><a href="ycsq.jsp">用车申请</a></li>
		</ul>
        </div>
        <!-- <a class="textHighlight" href="hylb.html"><img src="css/folder.png" border="0">会议室列表</a>
        <a href="hyyd.html" border="0"><img src="css/folder.png" border="0">会议室预定</a> -->
        <div id="colloaContent2">
        <c:forEach var="c" items="${list }">
          <div class="boxBorder" style="padding: 20px;">
            <div style="display: inline-block; vertical-align: top; margin-right: 20px;">
            <a><img class="radius" src="../${c.pic }" border="0" width="300"></a></div>
            <div style="display: inline-block; vertical-align: top;">
              <div class="textBig"><a href="info/zscllb.html">${c.name }</a></div>
              <br>
              牌号：${c.no }<br>
              状态：<c:choose>
           		<c:when test="${c.status eq 1 }">
		              <img src="css/userXStatus0.png">正常<br>
           		</c:when>
           		<c:when test="${c.status eq 2 }">
		              <img src="css/userXStatus10.png">维修<br>
           		</c:when> 
           		<c:otherwise>
		              <img src="css/userXStatus-1.png">报废<br>
           		</c:otherwise>     
           </c:choose>
            操作:
              <a href="../car.do?action=findCar&id=${c.id }" class="btn btn-primary">修改</a>&nbsp;&nbsp;
              <c:if test="${c.status ne 3 }">
	              <a href="../car.do?action=delCar&id=${c.id }" class="btn btn-primary">删除</a>
              </c:if>
</div>
          </div>
          </c:forEach>
          <div>
	          <ul class="pagination">
			    <li><a href="../car.do?action=findCar&curpage=1">首页</a></li>
			    <li class="previous"><a href="../car.do?action=findCar&curpage=${car.curpage eq 1 ? 1 : car.curpage-1 }">上一页</a></li>
			    <li><a>第 ${car.curpage }/${car.maxpage } 页</a></li>
			    <li class="next"><a href="../car.do?action=findCar&curpage=${car.curpage+1 gt car.maxpage ? car.maxpage : car.curpage+1 }">下一页</a></li>
			    <li><a href="../car.do?action=findCar&curpage=${car.maxpage }">末页</a></li>
				</ul>
          </div>
          </div>
		</td></tr></tbody></table>
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