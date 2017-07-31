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
<link rel="stylesheet" href="css/clgl_gongtong .min.css">
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
              <td><h1><img style="cursor: pointer;" src="css/menu.png"> 车辆管理</h1></td>
              <td id="oWorkflowList" align="right"><span id="oWorkflowList1"><a class="button1 button1L" href="info/hyydcx.html">✚ 用车申请</a><a class="button1 button1M" href="info/ycsqcx.html">用车申请查询</a></span><a href="javascript:location.reload()" class="button1 button1R" title="刷新">&nbsp;<i class="fa fa-bolt fa-lg"></i></a></td>
            </tr>
          </tbody>
        </table>
        <br>
         <div style="width:200px;border:1px rgb(221, 221, 221) solid;border-radius: 5px;float: left;padding: 30px 0px 25px;">
        <ul class="nav nav-pills nav-stacked" >
		  <li><a href="../car.do?action=findCar">车辆列表</a></li>
		  <li  class="active"><a href="javascript:location.reload()">用车申请</a></li>
		</ul>
        </div>
        <!-- <a class="textHighlight" href="hylb.html"><img src="css/folder.png" border="0">会议室列表</a>
        <a href="hyyd.html" border="0"><img src="css/folder.png" border="0">会议室预定</a> -->
        <div id="colloaContent2"><script language="javaScript">/* Code removed by ScrapBook */</script><script language="javaScript">/* Code removed by ScrapBook */</script>
          <table class="tableList" border="0" cellpadding="0" cellspacing="0">
            <thead>
              <tr>
                <th>主题</th>
                <th>申请人</th>
                <th>所属部门</th>
                <th>指定车辆</th>
                <th>时间段</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><a href="info/zsycsq.html"><i style="color: orange;" class="fa fa-calendar-minus-o fa-lg"></i><img src="css/priority0.gif" border="0"><span style="color: red;">用车申请-沈华-1000971</span></a></td>
                <td>沈华&nbsp;</td>
                <td>销售部&nbsp;</td>
                <td>沃尔沃</td>
                <td>2016/5/9 8:30 ~ <br>
                  2016/5/9 10:30</td>
              </tr>
              <tr>
                <td><a><i style="color: orange;" class="fa fa-calendar-minus-o fa-lg"></i><img src="css/priority0.gif" border="0">用车申请-沈华-1000527</a></td>
                <td>沈华&nbsp;</td>
                <td>销售部&nbsp;</td>
                <td></td>
                <td>2016/4/25 6:30 ~ <br>
                  2016/4/25 12:00</td>
              </tr>
              <tr>
                <td><a><i style="color: orange;" class="fa fa-calendar-minus-o fa-lg"></i><img src="css/priority0.gif" border="0"><span style="color: red;">用车申请-陈慧红-1000139</span></a></td>
                <td>陈慧红&nbsp;</td>
                <td>采购部&nbsp;</td>
                <td></td>
                <td>2016/4/15 13:00 ~ <br>
                  2016/4/15 15:30</td>
              </tr>
              <tr>
                <td><a><i style="color: rgb(51, 51, 51);" class="fa fa-trash-o fa-lg"></i><img src="css/priority0.gif" border="0">用车申请#0406#1000055</a></td>
                <td>超级管理员&nbsp;</td>
                <td>&nbsp;</td>
                <td>沃尔沃</td>
                <td>2016/4/15 ~ <br>
                  2016/4/17</td>
              </tr>
              <tr>
                <td><a><i style="color: rgb(60, 188, 60);" class="fa fa-calendar-check-o fa-lg"></i><img src="css/priority0.gif" border="0">用车申请-李萌-1000351</a></td>
                <td>李萌&nbsp;</td>
                <td>销售部&nbsp;</td>
                <td>丰田柯斯达</td>
                <td>2016/4/14 9:00 ~ <br>
                  2016/4/14 17:30</td>
              </tr>
              <tr>
                <td><a><i style="color: rgb(60, 188, 60);" class="fa fa-calendar-check-o fa-lg"></i><img src="css/priority0.gif" border="0">用车申请-严必行-1000204</a></td>
                <td>严必行&nbsp;</td>
                <td>财务部&nbsp;</td>
                <td>丰田</td>
                <td>2016/4/11 9:00 ~ <br>
                  2016/4/11 13:00</td>
              </tr>
              <tr>
                <td><a><i style="color: rgb(51, 51, 51);" class="fa fa-trash-o fa-lg"></i><img src="css/priority0.gif" border="0">用车申请-李萌-1000144</a></td>
                <td>李萌&nbsp;</td>
                <td>销售部&nbsp;</td>
                <td>路虎</td>
                <td>2016/4/10 13:00 ~ <br>
                  2016/4/10 15:00</td>
              </tr>
              <tr>
                <td><a><i style="color: orange;" class="fa fa-calendar-minus-o fa-lg"></i><img src="css/priority0.gif" border="0">用车申请-徐超-1000208</a></td>
                <td>徐超&nbsp;</td>
                <td>网络部&nbsp;</td>
                <td></td>
                <td>2016/4/8 14:00 ~ <br>
                  2016/4/8 15:00</td>
              </tr>
              <tr>
                <td><a><i style="color: rgb(60, 188, 60);" class="fa fa-calendar-check-o fa-lg"></i><img src="css/priority0.gif" border="0">用车申请-张倩-1000128</a></td>
                <td>张倩&nbsp;</td>
                <td>北京分公司&nbsp;</td>
                <td>路虎</td>
                <td>2016/4/8 9:00 ~ <br>
                  2016/4/8 11:00</td>
              </tr>
              <tr>
                <td><a><i style="color: rgb(51, 51, 51);" class="fa fa-trash-o fa-lg"></i><img src="css/priority0.gif" border="0">用车申请-李白军-1000130</a></td>
                <td>李白军&nbsp;</td>
                <td>售后部&nbsp;</td>
                <td>丰田</td>
                <td>2016/4/8 8:30 ~ <br>
                  2016/4/8 11:00</td>
              </tr>
              <tr>
                <td><a><i style="color: rgb(60, 188, 60);" class="fa fa-calendar-check-o fa-lg"></i><img src="css/priority0.gif" border="0">用车申请-李萌-1000125</a></td>
                <td>李萌&nbsp;</td>
                <td>销售部&nbsp;</td>
                <td>丰田</td>
                <td>2016/4/7 10:00 ~ <br>
                  2016/4/7 11:00</td>
              </tr>
              <tr>
                <td><a><i style="color: rgb(51, 51, 51);" class="fa fa-trash-o fa-lg"></i><img src="css/priority0.gif" border="0">用车申请 #李萌 #1000010</a></td>
                <td>超级管理员&nbsp;</td>
                <td>&nbsp;</td>
                <td></td>
                <td>2016/4/6 9:00 ~ <br>
                  2016/4/6 11:00</td>
              </tr>
            </tbody>
          </table>
          <script language="javaScript">/* Code removed by ScrapBook */</script>
          <div style="padding: 20px 0px;">
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