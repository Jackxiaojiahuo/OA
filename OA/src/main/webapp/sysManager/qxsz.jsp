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
<title>模块访问权设置(按角色) - 10oa</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/mkcz2_font-awesome.min.css">
<link rel="stylesheet" href="css/mkcz2_view.css">
<script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
<link rel="stylesheet" href="js/jquery_treeview/jquery.treeview.css">
<script src="js/jquery_treeview/jquery.treeview.js"></script>
<script type="text/javascript">
		$(function(){
			$("[myType=1],[myType=1]+label").hover(
				function(){
					$("[myType=1]").attr("disabled","true");
				},
				function(){
					$("[myType=1]").removeAttr("disabled");
				}
			);
			// 指定事件处理函数
			$("[name=privilegeIds]").click(function(){
				
				// 当选中或取消一个权限时，也同时选中或取消所有的下级权限
				$(this).siblings("ul").find("input").attr("checked", this.checked);
				
				// 当选中一个权限时，也要选中所有的直接上级权限
				if(this.checked == true){
					$(this).parents("li").children("input").attr("checked", true);
				}
				
			});
		});
		function formSubmit(){
			document.forms[0].submit();
		}
	</script>

</head>
<body id="colloaBody">
<table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
  <tbody>
    <tr valign="top">
      <td id="colloaForm">
          <div class="boxBorderCaption"><shiro:principal property="emp_name"/> : 模块操作权设置(按角色)</div>
          <div class="boxBorderContent" style="height: 350px; overflow: auto;">
            <table border="0">
              <!--显示数据列表-->
					<tbody id="TableData">
					<form method="post" action="../res.do?action=addQxForRole">
					<!-- 回显角色id数据 -->
					<input type="hidden" name="role_id" value="${param.role_id }">
						<tr class="TableDetail1">
							<!-- 显示权限树 -->
							<td>
					<!-- 显示树状结构内容 -->
					<ul id="tree">
					<c:forEach var="res" items="${resList }">
						<li>
							<input type="checkbox" name="privilegeIds" value="${res.r_id}" id="cb_${res.r_id}"  ${res.r_check eq 1 ? 'myType="1"' : null }
								<c:forEach var="roleRes" items="${roleResList }">
									<c:if test="${roleRes.res_id eq res.r_id }">
										checked
									</c:if>
								</c:forEach>
							 />
							<label value="2" for="cb_${res.r_id}"><img src="css/folder.gif">${res.r_name}</label>
							<ul>
							<c:forEach var="res1" items="${res.childrenList }">
								<li>
									<input type="checkbox" name="privilegeIds" value="${res1.r_id}" id="cb_${res1.r_id}" ${res1.r_check eq 1 ? 'myType="1"' : null }
										<c:forEach var="roleRes" items="${roleResList }">
										<c:if test="${roleRes.res_id eq res1.r_id }">
											checked
										</c:if>
									</c:forEach>
									/>
									<label for="cb_${res1.r_id}"><img src="css/folder.gif">${res1.r_name}</label>
									<ul>
									<c:forEach var="res2" items="${res1.childrenList }">
										<li>
											<input type="checkbox" name="privilegeIds" value="${res2.r_id}" id="cb_${res2.r_id}" ${res2.r_check eq 1 ? 'myType="1"' : null }  
												<c:forEach var="roleRes" items="${roleResList }">
									<c:if test="${roleRes.res_id eq res2.r_id }">
										checked
									</c:if>
								</c:forEach>
									/>
											<label for="cb_${res2.r_id}"><img src="css/item.gif">${res2.r_name}</label>
										</li>
									</c:forEach>
									</ul>
								</li>		
							</c:forEach>
							</ul>
						</li>
					</c:forEach>
					</ul>
					</td>
				</tr>
				</form>
        <script language="javascript">
        	$("#tree").treeview();
        </script>
              </tbody>
            </table></div>
        <div id="_vWorkflowActionsShow" align="right">
        <a class="button" href="javascript:formSubmit()">确定</a>
        <a class="button" href="javascript:history.back()">取消</a></div>
        <br>
        <br></td>
    </tr>
  </tbody>
</table>
</body>
</html>