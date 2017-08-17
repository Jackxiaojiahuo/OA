<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/work/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的桌面 - 10oa</title>

<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/xjlcsw.css">
<table style="min-width: 120px; width: 100%; height: 100%;" border="0"
	cellpadding="0" cellspacing="0">
	<tbody>
		<tr valign="top">
			<td id="colloaContent">
				<table border="0" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td><h1>
									<img style="cursor: pointer;" src="css/menu.png"> 新建流程事务
								</h1></td>
							<td class="textGray">* 请从下列被授权访问的流程中，选择相应的流程并新建一个事务（即流程单）</td>
						</tr>
					</tbody>
				</table> <br>
				<div class="boxBorder" style="padding: 30px 20px;">
					<span
						style="display: inline-block; margin: 5px 10px; min-width: 170px;"><a
						style="margin: 0px;" class="button1 radius"
						href="work/zdgzjh.html">✚ 制定工作计划</a> <a href="work/zdgzjhtu.html"><img
							src="css/flowChart.gif" border="0"></a></span><span
						style="display: inline-block; margin: 5px 10px; min-width: 170px;"><a
						href="work/xzgzrw.html" style="margin: 0px;"
						class="button1 radius">✚ 新增工作任务</a> <a href="work/xzgzrwtu.html"><img
							src="css/flowChart.gif" border="0"></a></span><span
						style="display: inline-block; margin: 5px 10px; min-width: 170px;">
						<a href="work/zxgzbg.html" style="margin: 0px;"
						class="button1 radius">✚ 撰写工作报告</a> <a href="work/zxgzbgtu.html"><img
							src="css/flowChart.gif" border="0"></a>
					</span>
					<div style="height: 15px;"></div>
					<span
						style="display: inline-block; margin: 5px 10px; min-width: 170px;">
						<a href="../info/info/gggl_fbgg.jsp" style="margin: 0px;"
						class="button1 radius">✚ 发布公告</a> <a href="work/fbggtu.html"><img
							src="css/flowChart.gif" border="0"></a>
					</span>
					<div style="height: 15px;"></div>
					<span
						style="display: inline-block; margin: 5px 10px; min-width: 170px;">
						<a href="../hr/info/zpsq.jsp" style="margin: 0px;"
						class="button1 radius">✚ 招聘申请</a> <a href="work/zpsqtu.html"><img
							src="css/flowChart.gif" border="0"></a>
					</span><span
						style="display: inline-block; margin: 5px 10px; min-width: 170px;">
						<a href="../hr/info/rzsq.jsp" style="margin: 0px;"
						class="button1 radius">✚ 入职申请</a> <a href="work/rzsqtu.html"><img
							src="css/flowChart.gif" border="0"></a>
					</span><span
						style="display: inline-block; margin: 5px 10px; min-width: 170px;">
						<a href="../hr/info/zzsq.jsp" style="margin: 0px;"
						class="button1 radius">✚ 转正申请</a> <a href="work/zzsqtu.html"><img
							src="css/flowChart.gif" border="0"></a>
					</span><span
						style="display: inline-block; margin: 5px 10px; min-width: 170px;">
						<a href="../hr/info/lzsq.jsp" style="margin: 0px;"
						class="button1 radius">✚ 离职申请</a> <a href="work/lzsqtu.html"><img
							src="css/flowChart.gif" border="0"></a>
					</span><span
						style="display: inline-block; margin: 5px 10px; min-width: 170px;">
						<a href="../hr/info/ccsq.jsp" style="margin: 0px;"
						class="button1 radius">✚ 出差申请</a> <a href="work/ccsqtu.html"><img
							src="css/flowChart.gif" border="0"></a>
					</span><span
						style="display: inline-block; margin: 5px 10px; min-width: 170px;">
						<a href="../hr/info/wcsq.jsp" style="margin: 0px;"
						class="button1 radius">✚ 外出申请</a> <a href="work/wcsqtu.html"><img
							src="css/flowChart.gif" border="0"></a>
					</span><span
						style="display: inline-block; margin: 5px 10px; min-width: 170px;">
						<a href="../hr/info/jbsq.jsp" style="margin: 0px;"
						class="button1 radius">✚ 加班申请</a> <a href="work/jbsqtu.html"><img
							src="css/flowChart.gif" border="0"></a>
					</span><span
						style="display: inline-block; margin: 5px 10px; min-width: 170px;">
						<a href="../hr/info/qxjsq.jsp" style="margin: 0px;"
						class="button1 radius">✚ 请休假申请</a> <a href="work/qxjsqtu.html"><img
							src="css/flowChart.gif" border="0"></a>
					</span><span
						style="display: inline-block; margin: 5px 10px; min-width: 170px;">
						<a href="../hr/info/txsq.jsp" style="margin: 0px;"
						class="button1 radius">✚ 调休申请</a> <a href="work/txsqtu.html"><img
							src="css/flowChart.gif" border="0"></a>
					</span>
			</td>
		</tr>
	</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</body>
</html>