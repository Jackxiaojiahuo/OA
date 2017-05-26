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
	              <tr>
	                  <td style="padding-left: 0px;"><input id="100000" checked="checked" disabled type="checkbox">
	                    <img src="css/folder.gif"> 我的桌面</td>
	                </tr>
	                <tr>
	                  <td style="padding-left: 15px;"><input id="103000" type="checkbox">
	                    <img src="css/folder.gif"> 管理驾驶舱</td>
	                </tr>
	                <tr>
	                  <td style="padding-left: 15px;"><input id="930100" checked="checked" disabled type="checkbox">
	                    <img src="css/folder.gif"> 个人设置</td>
	                </tr>
	                <tr>
                  <td style="padding-left: 30px;"><input id="900340" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 修改口令</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="900360" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 设置状态</td>
                </tr>
	                <tr>
                  <td style="padding-left: 0px;"><input id="110000" checked="checked" disabled type="checkbox">
                    <img src="css/folder.gif"> 我的事务</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="110010" checked="checked" disabled type="checkbox">
                    <img src="css/folder.gif"> 新建流程事务</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="110100" checked="checked" disabled type="checkbox">
                    <img src="css/folder.gif"> 待处理的事务</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="110200" checked="checked" disabled type="checkbox">
                    <img src="css/folder.gif"> 已处理的事务</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="110300" checked="checked" disabled type="checkbox">
                    <img src="css/folder.gif"> 我发起的事务</td>
                </tr>
                <tr>
                  <td style="padding-left: 0px;"><input id="130000" checked="checked" disabled type="checkbox">
                    <img src="css/folder.gif"> 目标管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="132000" checked="checked" disabled type="checkbox">
                    <img src="css/folder.gif"> 我的工作计划</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="132500" type="checkbox">
                    <img src="css/folder.gif"> 全部工作计划</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="133000" checked="checked" disabled type="checkbox">
                    <img src="css/folder.gif"> 我的工作任务</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="133500" type="checkbox">
                    <img src="css/folder.gif"> 全部工作任务</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="134000" checked="checked" disabled type="checkbox">
                    <img src="css/folder.gif"> 我的工作报告</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="134500" type="checkbox">
                    <img src="css/folder.gif"> 全部工作报告</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="135000" checked="checked" disabled type="checkbox">
                    <img src="css/folder.gif"> 我的工作日程</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="135500" type="checkbox">
                    <img src="css/folder.gif"> 全部工作日程</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="132010" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 制定工作计划</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="133010" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 新增工作任务</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="134010" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 撰写工作报告</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="135020" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 设置工作日程</td>
                </tr>
                 <tr>
                  <td style="padding-left: 0px;"><input id="150000" checked="checked" disabled type="checkbox">
                    <img src="css/folder.gif"> 信息中心</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="150100" checked="checked" disabled type="checkbox">
                    <img src="css/folder.gif"> 内部通讯录</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="150500" checked="checked" disabled type="checkbox">
                    <img src="css/folder.gif"> 电子消息</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="150510" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 未读消息</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="150520" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 已读消息</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="150530" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 已发送消息</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="150540" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 草稿箱</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="150550" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 星标消息</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="150510" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 发送消息</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="150520" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 回复</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="150530" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 回复全部</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="150540" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 转发</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="150550" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 发送消息[基于草稿]</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="150560" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 删除</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="150570" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 设置星标</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="151000" checked="checked" disabled type="checkbox">
                    <img src="css/folder.gif"> 信息公告</td>
                </tr>
               <tr>
                  <td style="padding-left: 15px;"><input id="151100" type="checkbox">
                    <img src="css/folder.gif"> 公告管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="151110" type="checkbox">
                    <img src="css/item.gif"> 发布公告</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="151120" type="checkbox">
                    <img src="css/item.gif"> 修改</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="151130" type="checkbox">
                    <img src="css/item.gif"> 删除</td>
                </tr>
               <tr>
                  <td style="padding-left: 15px;"><input id="155000" checked="checked" disabled type="checkbox">
                    <img src="css/folder.gif"> 知识社区</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="155010" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 社区发帖</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="155020"  type="checkbox">
                    <img src="css/item.gif"> 设置</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="155030" type="checkbox">
                    <img src="css/item.gif"> 删除</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="155050" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 设置关注</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="155070" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 回复</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="155080" type="checkbox">
                    <img src="css/item.gif"> 设为最佳</td>
                </tr>
               <tr>
                  <td style="padding-left: 0px;"><input id="650000" checked="checked" disabled type="checkbox">
                    <img src="css/folder.gif"> 行政管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="653100" checked="checked" disabled type="checkbox">
                    <img src="css/folder.gif"> 会议室管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653110" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 会议室列表</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653120" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 会议室预定</td>
                </tr>
                  <tr>
                  <td style="padding-left: 30px;"><input id="653010" type="checkbox">
                    <img src="css/item.gif"> 会议室登记</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653020" type="checkbox">
                    <img src="css/item.gif"> 会议室修改</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653030" type="checkbox">
                    <img src="css/item.gif"> 会议室删除</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653150" type="checkbox">
                    <img src="css/item.gif"> 会议室预定查询</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="653200" checked="checked" disabled type="checkbox">
                    <img src="css/folder.gif"> 车辆管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653210" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 车辆列表</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653220" checked="checked" disabled type="checkbox">
                    <img src="css/item.gif"> 用车申请</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653010" type="checkbox">
                    <img src="css/item.gif"> 车辆登记</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653020" type="checkbox">
                    <img src="css/item.gif"> 车辆修改</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653030" type="checkbox">
                    <img src="css/item.gif"> 车辆删除</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653250" type="checkbox">
                    <img src="css/item.gif"> 用车申请查询</td>
                </tr>
               <tr>
                  <td style="padding-left: 0px;"><input id="700000" type="checkbox">
                    <img src="css/folder.gif"> 人力资源</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="702000" type="checkbox">
                    <img src="css/folder.gif"> 员工管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="702010" type="checkbox">
                    <img src="css/item.gif"> 新增员工</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="702020" type="checkbox">
                    <img src="css/item.gif"> 修改</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="702030" type="checkbox">
                    <img src="css/item.gif"> 删除</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="702050" type="checkbox">
                    <img src="css/item.gif"> 查找</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="703100" type="checkbox">
                    <img src="css/folder.gif"> 招聘和配置</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="703110" type="checkbox">
                    <img src="css/item.gif"> 招聘管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="703120" type="checkbox">
                    <img src="css/item.gif"> 入职管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="703150" type="checkbox">
                    <img src="css/item.gif"> 转正管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="703170" type="checkbox">
                    <img src="css/item.gif"> 岗位调动管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="703190" type="checkbox">
                    <img src="css/item.gif"> 离职管理</td>
                </tr>
                 <tr>
                  <td style="padding-left: 30px;"><input id="703110" type="checkbox">
                    <img src="css/item.gif"> 招聘申请</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="703120" type="checkbox">
                    <img src="css/item.gif"> 入职申请</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="703150" type="checkbox">
                    <img src="css/item.gif"> 转正申请</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="703170" type="checkbox">
                    <img src="css/item.gif"> 岗位调动申请</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="703190" type="checkbox">
                    <img src="css/item.gif"> 离职申请</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="703190" type="checkbox">
                  <img src="css/folder.gif"> 考勤管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="703210" type="checkbox">
                    <img src="css/item.gif"> 出差申请</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="703220" type="checkbox">
                    <img src="css/item.gif"> 外出申请</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="703230" type="checkbox">
                    <img src="css/item.gif"> 加班申请</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="703240" type="checkbox">
                    <img src="css/item.gif"> 请休假申请</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="703250" type="checkbox">
                    <img src="css/item.gif"> 调休申请</td>
                </tr>
                <tr>
                  <td style="padding-left: 0px;"><input id="900360" type="checkbox">
                  <img src="css/folder.gif"> 系统管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="900360" type="checkbox">
                  <img src="css/folder.gif"> 组织机构</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="900110" type="checkbox">
                    <img src="css/item.gif"> 新增组织机构</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="900120" type="checkbox">
                    <img src="css/item.gif"> 修改</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="900130" type="checkbox">
                    <img src="css/item.gif"> 删除</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="900360" type="checkbox">
                  <img src="css/folder.gif"> 岗位角色</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="900210" type="checkbox">
                    <img src="css/item.gif"> 新增岗位角色</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="900460" type="checkbox">
                    <img src="css/item.gif"> 模块权限设置(按角色)</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="900220" type="checkbox">
                    <img src="css/item.gif"> 修改</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="900230" type="checkbox">
                    <img src="css/item.gif"> 删除</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="900360" type="checkbox">
                  <img src="css/folder.gif"> 用户管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="900310" type="checkbox">
                    <img src="css/item.gif"> 新增用户</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="900320" type="checkbox">
                    <img src="css/item.gif"> 修改</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="900330" type="checkbox">
                    <img src="css/item.gif"> 删除</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="900340" type="checkbox">
                    <img src="css/item.gif"> 岗位或角色</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="900360" type="checkbox">
                    <img src="css/item.gif"> 初始化口令</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="900700" type="checkbox">
                    <img src="css/folder.gif"> 在线用户</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="900800" type="checkbox">
                    <img src="css/folder.gif"> 系统日志</td>
                </tr>
                <tr>
                  <td style="padding-left: 0px;"><img src="css/folder.gif"> 自定义流程</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="1000001" type="checkbox">
                    <img src="css/item.gif"> 复杂业务和Word生成</td>
                </tr>
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