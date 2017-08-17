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
<title>公告 - Colloa</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="../css/font-awesome.min.css">
<link rel="stylesheet" href="css/gggl_zsxx.css">
</head>
<body id="colloaBody">
<table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
  <tbody>
    <tr valign="top">
      <td id="colloaForm"><table class="tableForm" style="margin-bottom: 20px; table-layout: fixed;" cellspacing="0" cellpadding="0" border="0">
          <colgroup>
          <col width="60">
          <col>
          <col width="80">
          <col width="120">
          </colgroup>
          <tbody>
            <tr>
              <td align="right">&nbsp;步骤:</td>
              <td><span id="mapping.dbf.procXSource">${n.noticeState }</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人: <span id="mapping.dbf.responsorSource">${n.noticePerson }</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td style="text-align: right;">&nbsp;优先级:</td>
              <td><input id="dbf.priority" <c:if test="${n.noticeType==0 }">checked="checked"</c:if>  value="0" name="noticeType" autocomplete="off" disabled="" type="radio">
                低
                <input id="dbf.priority" <c:if test="${n.noticeType==1 }">checked="checked"</c:if> value="1" name="noticeType" autocomplete="off" disabled="" type="radio">
                中
                <input id="dbf.priority" <c:if test="${n.noticeType==2 }">checked="checked"</c:if> value="2" name="noticeType" autocomplete="off" disabled="" type="radio">
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
              <td id="dbf.psid2" dbf.type="required!0" dbf.source="select sid,name,psid,stype from categoryX where modello='categoryX.taskX.bulletin' and statusX>0 order by sortId,name" dbf.key="151010">
              	${n.noticeClassify==1?'新闻资讯':'' }
              	${n.noticeClassify==2?'通知公告':'' }
              	${n.noticeClassify==3?'规章制度':'' }
              	${n.noticeClassify==4?'行业动态':'' }
              </td>
              <td class="fieldLable">关键字</td>
              <td id="dbf.keyInfo">${n.noticeKeyword }</td>
            </tr>
          </tbody>
        </table>
        <table cellspacing="10" cellpadding="0" border="0">
          <tbody>
            <tr>
              <td id="dbf.subject" style="font-size: 30px; height: 60px; font-weight: bold; color: rgb(204, 0, 0);background-color:rgb(243, 250, 255); text-align: center; line-height: 1;" dbf.type="required" dbf.source="">${n.noticeTitle }</td>
            </tr>
            <tr>
              <td id="content" style="height: 300px; vertical-align: top;" dbf.type="html" dbf.source="">
				${n.noticeContent }
		      </td>
            </tr>
          </tbody>
        </table>
        <script language="javaScript">/* Code removed by ScrapBook */</script>
        <div style="margin: 20px 0px;" align="right"><script language="javaScript">/* Code removed by ScrapBook */</script><a href="javascript:location.reload()" class="button1 button1L" title="刷新"><i class="fa fa-bolt"></i></a><span id="oWorkflowList1"><c:if test="${n.noticeState=='撤除' }"><a class="button1 button1M" href="../../Notice.do?action=ss&type=xg&id=${n.noticeId }">修改*</a></c:if><c:if test="${n.noticeState=='发布中' }"><a href="../../Notice.do?action=del&id=${n.noticeId }" class="button1 button1M">删除</a></c:if></span><a href="../../Notice.do?action=ss" class="button1 button1R" title="关闭"><i class="fa fa-times-circle"></i></a><script language="javaScript">/* Code removed by ScrapBook */</script></div>
        <table style="table-layout: fixed;" cellspacing="0" cellpadding="0" border="0">
          <colgroup>
          <col width="60%">
          <col width="2%">
          <col>
          </colgroup>
          <tbody>
            <tr valign="top">
              <td class="boxBorder"><div style="padding: 2px 10px;">
                  <div style="float: right;"><a href="../js/image.jsp">› 显示流程图</a></div>
                  【处理过程】</div>
                  <c:forEach var="b" items="${billList }">
                 	<div style="padding: 5px 10px 0px; border-top: 1px dotted rgb(221, 221, 221);"><img src="css/userX0.gif"> ${b.assignee }<span class="textGray">( <fmt:formatDate type="both" 
            value="${b.endTime }" />)</span></div>
                	<div style="padding: 0px 10px 5px 30px;">[<b>${b.name }</b>] </div>
                	<div style="padding: 0px 10px 5px 30px;"></div>
                  </c:forEach>
                </td>
              <td></td>
              <td><div class="boxBorder">
                  <div style="padding: 2px 10px; border-bottom: 1px dotted rgb(221, 221, 221); margin-bottom: 5px;">【父事务】</div>
                </div>
                <div class="boxBorder">
                  <div style="padding: 2px 10px; border-bottom: 1px dotted rgb(221, 221, 221); margin-bottom: 5px;">【子事务】</div>
                  <br>
                </div></td>
            </tr>
          </tbody>
        </table></td>
    </tr>
  </tbody>
</table>
</body>
</html>
