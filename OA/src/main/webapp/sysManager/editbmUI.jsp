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
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/view.css">
<script src="../js/jquery-1.8.3.min.js"></script>
<script>
	$(function(){
		$("#parent").val($("#parent_id").val());
	});
	function check(){
		if($("#depart_name").val()==""){
			alert("请输入部门名称");
		}else{
			document.forms[0].submit();
		}
	}
</script>
</head>
<body id="colloaBody">
<table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
  <tbody>
    <tr valign="top">
      <td id="colloaForm">
      <form action="../depart.do?action=editDepart" method="post">
          <table class="tableForm" summary="" style="table-layout:fixed;" cellspacing="0" cellpadding="0" border="0">
            <colgroup>
            <col width="100">
            <col>
            </colgroup>
            <tbody>
              <tr>
                <td>&nbsp;从属于</td>
                <td><select id="parent" name="depart_pid" style="width:200px">
                	<option value="0">===请选择上级部门===</option>
                	<c:forEach var="departs" items="${list }">
	                	<option value="${departs.depart_id }">${departs.depart_name }</option>
                	</c:forEach>
                	</select>
                  <input type="hidden" id="parent_id" value="${depart.depart_pid }">
                  </td>
              </tr>
              <tr>
                <td>&nbsp;名称<b style="color: red;">*</b></td>
                <td id="dbf.name" >
                <input id="depart_name" name="depart_name" class="fieldEditable" value="${depart.depart_name }"></td>
              </tr>
              <tr>
                <td>&nbsp;描述</td>
                <td id="dbf.description">
                <input  name="depart_id" type="hidden" value="${depart.depart_id }">
                <textarea id="depart_decription" name="depart_description" class="fieldEditable" style="height: 200px;">${depart.depart_description }</textarea></td>
              </tr>
            </tbody>
          </table>
        </form>
        <div id="_vWorkflowActionsShow" align="right"><a href="javascript:check()" class="button">确定</a><a href="javascript:history.back()" class="button">取消</a></div>
        <br></td>
    </tr>
  </tbody>
</table>
</body>
</html>