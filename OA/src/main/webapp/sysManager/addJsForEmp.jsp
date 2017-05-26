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
<title>岗位或角色 - 10oa</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/gwjs1_font-awesome.min.css">
<link rel="stylesheet" href="css/gwjs1_view.css">
<script src="../js/jquery-1.8.3.min.js"></script>
<script>
	$(function(){
		
	});
	function addJsForEmp(){
		document.forms[0].submit();
	}
</script>
</head>
<body id="colloaBody">
<table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
  <tbody>
    <tr valign="top">
      <td id="colloaForm">
          <div class="boxBorderCaption">${map['emp'].emp_name }: 岗位或角色</div>
          <div class="boxBorderContent" style="height: 350px; overflow: auto;">
            <table border="0">
              <tbody>
				  <form action="../emp.do?action=updateRoleForEmp" method="post">
		          <input type="hidden" name="emp_id" value="${map['emp'].emp_id }">
	              <c:forEach var="role" items="${map['roleList'] }">
	                <tr>
	                  <td>
	                  	<input id="${role.role_id }" name="role_ids" value="${role.role_id }" type="checkbox" 
	                  	<c:forEach var="emprole" items="${empRole }">
	                  		<c:if test="${role.role_id eq emprole.role_id }">
	                  			checked
	                  		</c:if>
		              	</c:forEach>
	                  	>
	                    <label for="${role.role_id }"><img src="css/userX10.gif" border="0"> ${role.role_name }</label>
	                  </td>
	                </tr>
	              </c:forEach>
			     </form>
              </tbody>
            </table>
            </div>
	        <div id="_vWorkflowActionsShow" align="right">
		        <a href="javascript:addJsForEmp()" class="button">确定</a>
		        <a href="javascript:history.back()" class="button">取消</a>
		    </div>
       </td>
    </tr>
  </tbody>
</table>
</body>
</html>