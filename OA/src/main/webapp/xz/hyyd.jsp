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
<link rel="stylesheet" href="css/hyyd.min.css">
<link rel="stylesheet" href="css/zygongtong.css">
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
              <td id="oWorkflowList" align="right"><span id="oWorkflowList1"><a class="button1 button1L" href="info/hysyd.jsp">✚ 会议室预定</a><a class="button1 button1M" href="info/hyydcx.html">会议室预定查询</a></span><a class="button1 button1R" title="刷新" href="javascript:location.reload()">&nbsp;<i class="fa fa-bolt fa-lg"></i></a></td>
            </tr>
          </tbody>
        </table>
        <br>
        <!--  style="width:200px;border:1px rgb(221, 221, 221);border-radius: 5px;float: left;padding: 30px 0px 25px;"  -->    
    
        <div style="width:200px;border:1px rgb(221, 221, 221) solid;border-radius: 5px;float: left;padding: 30px 0px 25px;">
        <ul class="nav nav-pills nav-stacked" >
		  <li><a href="../board.do?action=findBoard">会议室列表</a></li>
		  <li class="active"><a href="javascript:location.reload()">会议室预定</a></li>
		</ul>
        <!-- <a class="textHighlight" href="hylb.html"><img src="css/folder.png" border="0">会议室列表</a>
        <a href="hyyd.html" border="0"><img src="css/folder.png" border="0">会议室预定</a> --></div>
<div id="colloaContent2"><script language="javaScript">/* Code removed by ScrapBook */</script><script language="javaScript">/* Code removed by ScrapBook */</script>
          <table class="tableList" border="0" cellpadding="0" cellspacing="0">
            <thead>
              <tr>
                <th>主题</th>
                <th>申请人</th>
                <th>所属部门</th>
                <th>预定会议室</th>
                <th>时间段</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach var="b" items="${list }">
              <tr>
                <td><a href="../bs.do?action=findBs&id=${b.id }"><i style="color: orange;" class="fa fa-calendar-minus-o fa-lg"></i><img src="css/priority0.gif" border="0">${b.subject }</a></td>
                <td>${b.emp.emp_name }&nbsp;</td>
                <td>${b.emp.dept.depart_name }&nbsp;</td>
                <td>${b.board.name }</td>
                <td>${b.beginTime } ~ <br>
                  ${b.endTime }</td>
              </tr>
             </c:forEach>
            </tbody>
          </table>
           <div>
	          <ul class="pagination">
			    <li><a href="../bs.do?action=findBs&curpage=1">首页</a></li>
			    <li class="previous"><a href="../bs.do?action=findBs&curpage=${page.curpage eq 1 ? 1 : page.curpage-1 }">上一页</a></li>
			    <li><a>第 ${page.curpage }/${page.maxpage } 页</a></li>
			    <li class="next"><a href="../bs.do?action=findBs&curpage=${page.curpage+1 gt page.maxpage ? page.maxpage : page.curpage+1 }">下一页</a></li>
			    <li><a href="../bs.do?action=findBs&curpage=${page.maxpage }">末页</a></li>
				</ul>
          </div>
        </div></td>
    </tr>
  </tbody>
</table>
<script language="javaScript">/* Code removed by ScrapBook */</script>
</body>
</html>
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