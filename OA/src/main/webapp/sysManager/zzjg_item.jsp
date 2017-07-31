<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:forEach items="${departList }" var="depart">
	<tr id="${depart.depart_id }">
		<td style="padding-left: ${level*20+10}px;"><a><img
				src="css/userX10000.gif" border="0"> ${depart.depart_name }</a></td>
		<td>${depart.depart_description }</td>
		<td>${depart.depart_statu eq 1 ? "有效" : "失效" }</td>
		<td><a
			href="../depart.do?action=findDepartById&depart_id=${depart.depart_id }"
			class="buttonPortal" title="修改"> &nbsp;<i
				class="fa fa-eyedropper fa-lg"></i></a> <a
			href="javascript:if (confirm('确认删除?'))  location='../depart.do?action=delDepartById&depart_id=${depart.depart_id }' "
			class="buttonPortal" title="删除">&nbsp;<i
				class="fa fa-remove fa-lg"></i></a>&nbsp;</td>
	</tr>
	<c:if test="${fn:length(depart.childrenList) > 0}">
		<!-- 如果有childen -->
		<c:set var="level" value="${level + 1}" scope="request" />
		<!-- 循环一次子列表，level+1 -->
		<c:set var="departList" value="${depart.childrenList}" scope="request" />
		<!-- 注意此处，子列表覆盖departList，在request作用域 -->
		<c:import url="zzjg_item.jsp" />
		<!-- 这就是递归了 -->
	</c:if>
</c:forEach>
<c:set var="level" value="${level - 1}" scope="request" /><!-- 退出时，level-1 -->  