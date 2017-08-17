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
	<title>设置 - 10oa</title>
	<link rel="shortcut icon" href="css/colloa.ico">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/zssq_tz_sz.css">
	<style></style>
	<script src="jquery-1.8.2.min.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(function(){
			$("select").val(${param.tSId})
		});
		function bjq(){
			document.forms[0].submit();
		}
	</script>
	</head>
	<body id="colloaBody">
    <table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
      <tbody>
        <tr valign="top">
          <td id="colloaForm"><form action="../../Topic.do" method="post">
          	  <input type="hidden" name="action" value="up">
              <div class="boxBorder" style="padding: 30px;">
              <div class="textBig">OA系统管理员岗位职责都有哪些？</div>
              <br>
              <table class="tableListBorder" style="table-layout: fixed;" summary="" cellspacing="0" cellpadding="0" border="0">
                  <colgroup>
                <col width="100">
                <col>
                </colgroup>
                  <tbody>
                  <tr>
                      <td class="fieldLable">从属于</td>
                      <td id="dbf.psid" dbf.source="select sid,name,psid,stype from categoryX where modello='categoryX.postX.discuss' and statusX>0 order by sortId,name" dbf.key="155040" dbf.type="required!0"><div id="e.dbf.psidSource">
                          <select name="tSId" class="fieldGetValueBySource">
                          <option value="1">合理化建议</option>
                          <option value="2">技术交流</option>
                          <option value="3">企业文化</option>
                          <option value="4">生活娱乐</option>
                        </select>
                        </div></td>
                    </tr>
                  <tr>
                      <td class="fieldLable">设置</td>
                      <td><input id="dbf.flag" <c:if test="${param.tType==0 }">checked="checked"</c:if> name="tType" value="0" type="radio">
                      普通&nbsp;&nbsp;&nbsp;
                      <input id="dbf.flag" <c:if test="${param.tType==1 }">checked="checked"</c:if> name="tType" type="radio" value="1">
                      精华 
                    </tr>
                </tbody>
                </table>
            </div>
              <input id="id" name="id" value="${param.tId }" type="hidden">
              <script language="javaScript">/* Code removed by ScrapBook */</script><br>
              <div id="_vWorkflowActionsShow" align="right"> 
              <a class="button" onclick="bjq()">确定</a>
               <a href="javascript:history.go(-1)" class="button">取消</a> </div>
              <br>
            </form></td>
        </tr>
      </tbody>
    </table>
</body>
</html>
