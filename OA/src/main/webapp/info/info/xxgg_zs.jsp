<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/info/info/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>公告 - 10oa</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="../css/font-awesome.min.css">
<link rel="stylesheet" href="css/xxgg_zs.css">
<style></style>
</head>
<body id="colloaBody">
<table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
  <tbody>
    <tr valign="top">
      <td id="colloaForm"><style type="text/css">
/* Code tidied up by ScrapBook */
.tableForm { display: none; }
</style>
        <table class="tableForm" style="margin-bottom: 20px; table-layout: fixed;" cellspacing="0" cellpadding="0" border="0">
          <colgroup>
          <col width="60">
          <col>
          <col width="80">
          <col width="120">
          </colgroup>
          <tbody>
            <tr>
              <td align="right">&nbsp;步骤:</td>
              <td><span id="mapping.dbf.procXSource">发布中</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人: <span id="mapping.dbf.responsorSource"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人: <span id="mapping.dbf.participantsSource"></span></td>
              <td style="text-align: right;">&nbsp;优先级:</td>
              <td><input id="dbf.priority" value="-1" name="dbf.priority" autocomplete="off" type="radio">
                低
                <input id="dbf.priority" checked="" value="0" name="dbf.priority" autocomplete="off" type="radio">
                中
                <input id="dbf.priority" value="1" name="dbf.priority" autocomplete="off" type="radio">
                高</td>
            </tr>
          </tbody>
        </table>
        <table class="tableListBorder" style="table-layout: fixed;" summary="" cellspacing="0" cellpadding="0" border="0">
          <colgroup>
          <col width="10%">
          <col width="35%">
          <col width="10%">
          <col>
          </colgroup>
          <tbody>
            <tr>
              <td class="fieldLable"><b style="color: red;">*</b>分类</td>
              <td id="dbf.psid2" dbf.type="required!0" dbf.source="select sid,name,psid,stype from categoryX where modello='categoryX.taskX.bulletin' and statusX>0 order by sortId,name" dbf.key="151010"><c:choose>
                  <c:when test="${n.noticeClassify==1 }"> 新闻资讯 </c:when>
                  <c:when test="${n.noticeClassify==2 }"> 通知公告 </c:when>
                  <c:when test="${n.noticeClassify==3 }"> 规章制度 </c:when>
                  <c:otherwise> 行业动态 </c:otherwise>
                </c:choose></td>
              <td class="fieldLable">关键字</td>
              <td id="dbf.keyInfo">${n.noticeKeyword }</td>
            </tr>
          </tbody>
        </table>
        <table cellspacing="10" cellpadding="0" border="0">
          <tbody>
            <tr>
              <td id="dbf.subject" style="font-size: 30px; height: 60px; font-weight: bold; color: rgb(204, 0, 0); text-align: center; background-color:rgb(243, 250, 255); line-height: 1;" dbf.type="required" dbf.source="">${n.noticeTitle }</td>
            </tr>
            <tr>
              <td id="content" style="height: 300px; vertical-align: top;" dbf.type="html" dbf.source=""> ${n.noticeContent } </td>
            </tr>
          </tbody>
        </table>
        <div style="margin: 20px 0px;" align="right"><script language="javaScript">/* Code removed by ScrapBook */</script><a href="javascript:location.reload()" class="button1 button1L" title="刷新"><i class="fa fa-bolt fa-lg"></i></a><span id="oWorkflowList1"><a class="button1 button1M" onClick="window.print()">打印本页面</a></span><a href="../../xxgg.do?action=ss" class="button1 button1R" title="关闭"><i class="fa fa-times-circle fa-lg"></i></a></div>
        <table class="tableListBorder" cellspacing="0" cellpadding="0" border="0">
          <tbody>
            <tr valign="top">
              <td class="fieldLable" width="10%">已阅读人</td>
              <td> <c:forEach var="b" items="${billList }">
              ${b.assignee } ( <fmt:formatDate type="both" 
            	value="${b.endTime }" />),
            </c:forEach></td>
            </tr>
          </tbody>
        </table></td>
    </tr>
  </tbody>
</table>
</body>
</html>