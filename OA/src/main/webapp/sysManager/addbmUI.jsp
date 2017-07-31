<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/sysManager/";
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
<style>
.error {
	color: red;
}
</style>
<script src="../js/jquery-1.8.3.min.js"></script>
<script src="../js/check.js"></script>
<script>
	function checkdepart_name() {
		var des = $("#depart_name").val();
		des = des.replace(/</g, "&lt;");
		des = des.replace(/>/g, "&gt;");
		$("#depart_name+label").html("");
		if (des == ""|| des.length==0) {
			$("#depart_name+label").html("请输入部门名称");
			return false;
		} else if (filterSqlStr(des)) {
			$("#depart_name+label").html("字符中包含了敏感字符" + sql_str() + ",请重新输入！");
			return false;
		}
		return true;
	}
	function checkdepart_des() {
		var des = $("#depart_description").val();
		des = des.replace(/</g, "&lt;");
		des = des.replace(/>/g, "&gt;");
		$("#depart_description+label").html("");
		if (des == "" || des.length==0) {
			return true;
		} else if (filterSqlStr(des)) {
			$("#depart_description+label").html(
					"字符中包含了敏感字符" + sql_str() + ",请重新输入！");
			return false;
		}
	}
	function check(){
		var flag=true;
  		if(!checkdepart_name()) flag=false;
  		if(!checkdepart_des()) flag=false;
  		return flag;
	}
	function sub(){
		if(check())
  			$("#myForm")[0].submit();
  	}
</script>
</head>
<body id="colloaBody">
	<table style="min-width: 950px; width: 100%; height: 100%;"
		cellspacing="0" cellpadding="0" border="0">
		<tbody>
			<tr valign="top">
				<td id="colloaForm">
					<form action="../depart.do?action=addDepart" method="post" id="myForm" onsubmit="return check()">
						<table class="tableForm" summary="" style="table-layout: fixed;"
							cellspacing="0" cellpadding="0" border="0">
							<colgroup>
								<col width="100">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<td>&nbsp;从属于</td>
									<td><select id="parent" name="depart_pid"
										style="width: 200px">
											<option value="0">===请选择上级部门===</option>
											<c:forEach var="depart" items="${list }">
												<option value="${depart.depart_id }">${depart.depart_name }</option>
											</c:forEach>
									</select></td>
								</tr>
								<tr>
									<td>&nbsp;名称<b style="color: red;">*</b></td>
									<td><input id="depart_name" name="depart_name"
										class="fieldEditable" value="" onblur="checkdepart_name()"><label
										class="error"></label></td>
								</tr>
								<tr>
									<td>&nbsp;描述</td>
									<td><textarea name="depart_description"
											id="depart_description" class="fieldEditable"
											style="height: 200px;"></textarea><label class="error"></label></td>
								</tr>
							</tbody>
						</table>
					</form>
					<div id="_vWorkflowActionsShow" align="right">
						<a href="javascript:sub()" class="button">确定</a><a
							href="javascript:history.back()" class="button">取消</a>
					</div> <br>
				</td>
			</tr>
		</tbody>
	</table>
</body>
<script>
	/* $(function(){
		var $parent=$("#parent")
		var info=$parent.html();
		$.post("../depart_find_select.do",
			function(data){
			$.each(data,function(index,item){
					alert(item);
				$.each(item,function(k,v){
					info+="<option value='"+k+"'>"+v+"</option>";
				});
			})
				
				$parent.html(info);
			},"json");	
		 $.ajax({
			   type: "POST",
			   url: "../depart_find_select.do",
			   dataType:"json",
			   success: function(msg){
			     alert( "成功了: " + msg );
			   },
			   error:function(d){
				   alert("出错了");
			   }
			}); 
	})*/
</script>
</html>