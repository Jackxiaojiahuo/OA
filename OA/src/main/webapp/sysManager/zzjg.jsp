<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/sysManager/";
%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/zzjg_font-awesome.min.css">
<link rel="stylesheet" href="css/zzjg_view.css">
<script src="../js/jquery-1.8.3.min.js"></script>
</head>
<body>
<table style="min-width: 120px; width: 100%; height: 100%;" border="0" cellpadding="0" cellspacing="0">
<tbody>
    <tr valign="top">
	<td id="colloaContent">
     <table  border="0" cellpadding="0" cellspacing="0">
          <tbody>
            <tr>
              <td><h1><img style="cursor: pointer;" src="css/menu.png"> 组织机构</h1></td>
              <td align="right">
              	<a href="../depart.do?action=findAllDpeart_select" class="button1 button1L">✚ 新增组织机构</a></span><a 
              href="../depart_findByPid.do"  class="button1 button1R" title="刷新">&nbsp;<i class="fa fa-bolt fa-lg"></i></a></td>
            </tr>
          </tbody>
        </table>
        <br>
        <table  class="tableList"  border="0" cellpadding="0" cellspacing="0">
	    	<thead>
	           <tr>
	               <th>名称</th>
	               <th>描述</th>
	               <th>操作</th>
	           </tr>
		     </thead>
          <tbody>
          	<c:forEach items="${departList }" var="depart">
	            <tr id="${depart.depart_id }">
	              <td style="padding-left: 10px;"><a><img src="css/userX10000.gif" border="0"> ${depart.depart_name }</a></td>
	              <td>${depart.depart_description }</td>
	              <td><a  href="../depart.do?action=findDepartById&depart_id=${depart.depart_id }"  class="buttonPortal" title="修改">
	              &nbsp;<i class="fa fa-eyedropper fa-lg"></i></a>
	              <a href="javascript:if (confirm('确认删除?'))  location='../depart.do?action=delDepartById&depart_id=${depart.depart_id }' " class="buttonPortal" title="删除">&nbsp;<i class="fa fa-remove fa-lg"></i></a>&nbsp;
	              </td>
	            </tr>
	            <c:forEach items="${depart.childrenList }" var="d">
		            <tr id="${d.depart_id }">
		              <td style="padding-left: 25px;"><a><img src="css/userX10000.gif" border="0"> ${d.depart_name }</a></td>
		              <td>${d.depart_description }</td>
		              <td><a  href="../depart.do?action=findDepartById&depart_id=${d.depart_id }"  class="buttonPortal" title="修改">
		              &nbsp;<i class="fa fa-eyedropper fa-lg"></i></a>
		              <a href="javascript:if (confirm('确认删除?'))  location='../depart.do?action=delDepartById&depart_id=${d.depart_id }' " class="buttonPortal" title="删除">&nbsp;<i class="fa fa-remove fa-lg"></i></a>&nbsp;
		              </td>
		            </tr>
		            <c:forEach items="${d.childrenList }" var="d1">
			            <tr id="${d1.depart_id }">
			              <td style="padding-left: 40px;"><a><img src="css/userX10000.gif" border="0"> ${d1.depart_name }</a></td>
			              <td>${d1.depart_description }</td>
			              <td><a  href="../depart.do?action=findDepartById&depart_id=${d1.depart_id }"  class="buttonPortal" title="修改">
			              &nbsp;<i class="fa fa-eyedropper fa-lg"></i></a>
			              <a href="javascript:if (confirm('确认删除?'))  location='../depart.do?action=delDepartById&depart_id=${d1.depart_id }' " class="buttonPortal" title="删除">&nbsp;<i class="fa fa-remove fa-lg"></i></a>&nbsp;
			              </td>
			            </tr>
          			</c:forEach>
          		</c:forEach>
          	</c:forEach>
          </tbody>
        </table>
</tr></tbody></table>
</body>
</html>