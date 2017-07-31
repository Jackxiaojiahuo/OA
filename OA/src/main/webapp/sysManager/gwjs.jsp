<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/sysManager/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 <base href="<%=basePath%>">
	<link rel="shortcut icon" href="css/colloa.ico">
	<link rel="stylesheet" href="css/gwjs_font-awesome.min.css">
	<link rel="stylesheet" href="css/qxgl2font-awesome.min.css">
	<link rel="stylesheet" href="css/gwjs_view.css">
	<script src="../js/jquery-1.8.3.min.js"></script>
	<script>
		function del(id){
			location="../role.do?action=delRoleById&role_id="+id;	
		}
	</script>
	
</head>
<body>
  
<table style="min-width: 120px; width: 100%; height: 100%;" border="0"
	cellpadding="0" cellspacing="0">
	<tbody>
		<tr valign="top">
			<td id="colloaContent">
				<table border="0" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td><h1>
									<img style="cursor: pointer;" src="css/menu.png"> 岗位角色
								</h1></td>
							<td align="right"><a href="addjsUI.jsp" class="button1 button1L">✚ 新增岗位角色</a></span><a
								href="../role.do?action=findAllRole" class="button1 button1R" title="刷新">&nbsp;<i
									class="fa fa-bolt fa-lg"></i></a></td>
						</tr>
					</tbody>
				</table> <br>
			<table style="table-layout: fixed;" border="0" cellpadding="0"
				cellspacing="0">
				<tbody>
					<tr valign="top">
						<td>
							<table class="tableList" border="0" cellpadding="0"
								cellspacing="0">
								<thead>
									<tr>
										<th>名称</th>
										<th>描述</th>
										<th>状态</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="role" items="${roleList }">
									<tr>
										<td><a><img src="css/userX10.gif" border="0">
												${role.role_name }</a></td>
										<td>${role.role_description }</td>
										<td>${role.role_statu eq 1 ? "有效" : "失效" }</td>
										<td>
											<a href="../res.do?action=findAllRes&role_id=${role.role_id }" class="buttonPortal" 
											title="模块访问权设置(按用户)">&nbsp;<i class="fa fa-key fa-lg"></i></a>
											<c:if test="${role.role_id ne 1 }">
												<a href='../role.do?action=findRoleById&role_id=${role.role_id }' class='buttonPortal'
											title='修改'>&nbsp;<i class='fa fa-eyedropper fa-lg'></i></a>
											<a class='buttonPortal' title='删除'
											 href="javascript:if (confirm('确认删除?'))  location='../role.do?action=delRoleById&role_id=${role.role_id }' ">&nbsp;<i
												class='fa fa-remove fa-lg'></i></a>
											</c:if>
										</td>
									</tr>
								</c:forEach>
								</tbody>
							</table>
							<div style="padding: 20px 0px;">
								<a href="../role.do?action=findAllRole&index=1" class="button1 button1L" title="首页">&nbsp;<i
									class="fa fa-step-backward"></i></a><a href="../role.do?action=findAllRole&index=${page.index eq 1 ? page.index : page.index-1 }" class="button1 button1M"
									title="上页">&nbsp;<i class="fa fa-backward"></i></a><span
									class="button1M">共有 ${page.count }条记录，第 ${page.index}/${page.total } 页</span><a
									 href="../role.do?action=findAllRole&index=${page.total gt page.index ? page.index+1 : page.index }" class="button1 button1M" title="下页">&nbsp;<i
									class="fa fa-forward"></i></a><a class="button1 button1R"
									 href="../role.dofindAllRole&index= ${page.total }" title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</tr>
	</tbody>
</table>
  </body>
</html>