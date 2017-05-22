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
<link rel="stylesheet" href="css/qxgl2font-awesome.min.css">
<link rel="stylesheet" href="css/qxgl2view.css">
<script src="../js/jquery-1.8.3.min.js"></script>
<script src="js/mk.js"></script>
</head>
<body id="colloaBody">
<table style="min-width: 980px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
  <tbody>
    <tr valign="top">
      <td id="colloaContent"><table cellspacing="0" cellpadding="0" border="0">
          <tbody>
            <tr>
              <td><h1><img style="cursor: pointer;" src="css/menu.png"> 权限管理</h1></td>
              <td class="textGray" align="center">* 用户具有自身、所属组织机构以及所属岗位角色的综合权限</td>
              <td id="oWorkflowList" align="right"></td>
            </tr>
          </tbody>
        </table>
        <br>
        <div id="colloaMenu2"><a class="textHighlight" href="#"><img src="css/share.gif" border="0"> 按角色设置权限</a></div>
        <div id="colloaContent2">
          <table class="tableList" style="table-layout: fixed;" cellspacing="0" cellpadding="0" border="0">
            <colgroup>
            <col width="100px">
            <col width="80px">
            </colgroup>
            <thead>
              <tr>
                <th>名称</th>
                <th>操作</th>
              </tr>
            </thead>
            <tbody id="treeOfNavigation">
              <tr>
                <td><span><img src="css/blank16.gif" border="0"></span><img src="css/userX10.gif" border="0"> 所有角色</td>
                <td><a href="menuqx.jsp"  class="buttonPortal" title="模块访问权设置(按用户)">&nbsp;<i class="fa fa-key fa-lg"></i></a><a href="buttonqx.jsp" class="buttonPortal" title="模块操作权设置(按用户)">&nbsp;<i class="fa fa-key fa-lg"></i></a>&nbsp;</td>
              </tr>
              <c:forEach var="role" items="${roleList }">
	              <tr>
	                <td><span><img src="css/blank16.gif" border="0"></span><img src="css/userX10.gif" border="0"> ${role.role_name }</td>
	                <td><a href="../res.do?action=findAllRes&r_type=0&role_id=${role.role_id }" class="buttonPortal" title="模块访问权设置(按用户)">&nbsp;<i class="fa fa-key fa-lg"></i></a><a href="../res.do?action=findAllRes&r_type=1&role_id=${role.role_id }" class="buttonPortal" title="模块操作权设置(按用户)">&nbsp;<i class="fa fa-key fa-lg"></i></a>&nbsp;</td>
	              </tr>
              </c:forEach>
            </tbody>
          </table>
         </div></td>
    </tr>
  </tbody>
</table>
</body>
</html>