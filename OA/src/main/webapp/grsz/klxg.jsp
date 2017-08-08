<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/grsz/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>修改口令 - 10oa</title>
  <link rel="shortcut icon" href="css/colloa.ico">
  <link rel="stylesheet" href="css/klxg_font-awesome.min.css">
  <link rel="stylesheet" href="css/klxg_view.css">
  <link href="../js/bootstarp/core/css/bootstrap.min.css" rel="stylesheet" type="text/css">
 <script src="../js/bootstarp/jquery-3.1.0.js"></script>
<script src="../js/bootstarp/core/js/bootstrap.min.js" type="text/javascript"></script>
  <script src="../js/jquery.validate.js"></script>
  <script src="../js/messages_zh.js"></script>
  <script>
  $(function(){
	  $("#myForm").validate({
		  rules:{
			  pwdOld:{  
	                required:true,  
	                checkPwd:true  
	            },  
	            pwd1:{  
	                required:true,  
	                checkPwd:true   
	            },
	            pwd2:{  
	                required:true,  
	                equalTo:pwd1 
	            }
		  },
		  messages:{
			  pwdOld:{ 
			        required:"*必填！", 
			        rangelength:"*长度为6到16位！"
			      },
		      pwd1:{ 
			        required:"*必填！", 
			        rangelength:"*长度为6到16位！" 
			      },    
		      pwd2:{ 
		        required:"*必填！", 
		        equalTo:"*两次输入的密码不一致！"
		      }
		  },
	  //提交表单后，（第一个）未通过验证的表单获得焦点 
	    focusInvalid:true, 
	    //当未通过验证的元素获得焦点时，移除错误提示 
	    focusCleanup:true
	  });
	  $.validator.addMethod("checkPwd",function(value,element,params){  
	      var checkPwd = /^\w{6,16}$/g;  
	      return this.optional(element)||(checkPwd.test(value));  
	  },"*只允许6-16位英文字母、数字或者下画线！");
  });
  function check(){
	  if($("#myForm").valid())
		  $("#myForm").submit();
  }
  </script>
<style>
.error{
	color:red;
}
</style>
</head>
<body id="colloaBody">
<table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
<tbody>
<tr valign="top">
<td id="colloaForm">
<form id="myForm" method="post" action="../emp.do?action=updatePwd">
<div class="boxBorderCaption" style="padding: 0px 30px;">修改口令</div>
<div class="boxBorderContent" style="padding: 30px;">
<table class="tableForm" summary="" style="table-layout: fixed;" cellspacing="0" cellpadding="0" border="0" align="center"><colgroup><col width="200px"><col>
    </colgroup><tbody>
        <tr>
            <td>&nbsp;输入您的旧口令<b style="color: red;">*</b></td>
            <td id="passwordOld" dbf.type="required"><input name="pwdOld"  class="fieldEditable" id="pwdOld" type="password">
            </td>
        </tr>
        <tr>
            <td>&nbsp;输入您的新口令<b style="color: red;">*</b></td>
            <td id="password" dbf.type="required"><input name="pwd1" class="fieldEditable" id="pwd1" type="password"></td>
        </tr>
        <tr>
            <td>&nbsp;再次输入新口令以确认<b style="color: red;">*</b></td>
            <td id="password2" dbf.type="required"><input name="pwd2" class="fieldEditable" id="pwd2" type="password"></td>
        </tr>
        <tr>
            <td><div class="error">${pwdmsg }</div></td><td style="height: 35px;" valign="middle"><img src="css/key.gif"> 只允许6-16位英文字母、数字或者下画线！</td>
        </tr>
    </tbody>
</table>
</div>
</form><br><div id="_vWorkflowActionsShow" align="center"><input type="button" onclick="check()" class="btn btn-primary" value="确定">
<input class="btn btn-primary" type="button" onclick="javascript:location='../emp.do?action=showInfo&emp_id=${s_emp.emp_id }';" value="取消"></div><br></td></tr></tbody></table></body>
</html>