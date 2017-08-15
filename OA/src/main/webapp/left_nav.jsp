<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
	   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的桌面 - 10oa</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/view.css">
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script src="js/left_nav.js"></script>
<script>
function changeLeft(index,ci){
	$('.indent0').each(function(i){//循环隐藏不是点击事件的模块
		if(i!=index){
			$('.indent0:eq('+i+')').next('span').find('[style]').hide();//隐藏所有子模块
			$('.indent0ex:first').next('span').find('[style]').hide();//将驾驶舱隐藏
		}
	});
	$('.indent0:eq('+index+')').next('span').find('[style]').show();	//隐藏或展示其子模块
	var children=$('.indent0:eq('+index+')').next('span').find('[style]')[ci];
	//alert($(children).attr("href"));
	//-----子模块高亮---------
	$('a[style]').removeClass('textHighlight');//所有移除高亮样式
	$(children).addClass('textHighlight');//给点击模块加高亮样式
	$('.indent0ex:first').removeClass('textHighlight');//移除桌面模块高亮样式
}
</script>
</head>
<body id="colloaBody">
	<table style="min-width: 120px; width: 100%; height: 100%;" border="0"
		cellpadding="0" cellspacing="0">
		<tbody>
			<tr valign="top">
				<td id="colloaMenu"><table style="line-height: 1.2;" border="0"
						cellpadding="0" cellspacing="0">
						<tbody>
							<tr valign="top">
								<td title=""
									style="width: 50px; padding: 25px 15px 25px 20px; cursor: pointer;"><a href="grsz/szzt.jsp" target="right"><img
									src="<shiro:principal property="emp_icon"/>" border="0" id="img_left" ></a></td>
								<td style="padding: 30px 20px 25px 0px;">
								<c:choose>
					            	<c:when test="${s_emp.emp_status eq '在岗'  }">
					            		<img id="status" src="css/userXStatus0.png">
					            	</c:when>
					            	<c:when test="${s_emp.emp_status eq '出差' }">
					            		<img id="status" src="css/userXStatus10.png">
					            	</c:when>
					            	<c:otherwise>
					            		<img id="status" src="css/userXStatus20.png">
					            	</c:otherwise>
					            </c:choose>
									${s_emp.emp_name }
									<div style="margin-top: 5px;" id="div_des">${s_emp.emp_description }</div></td>
									<input type="hidden" id="emp_code" value="${s_emp.emp_id }">
							</tr>
						</tbody>
					</table>
					<div id="treeOfMenu">
						<shiro:authenticated>
						<shiro:hasPermission name="/desktop.do?action=index">
						<a class="indent0ex textHighlight" href="desktop.jsp"
							target="right"> <img src="css/plusFlag.gif" border="0">
							<img src="css/desktop.png" border="0"> 我的桌面
						</a></shiro:hasPermission>
						<span><a style="display: block;" href="emp.do?action=showInfo&emp_id=${s_emp.emp_id }"
							target="right"> <img src="css/blank16.gif" border="0">
								<img src="css/catalogue1.png" border="0"> 个人设置
						</a>
						<%-- <shiro:hasPermission name="/jiashi.do?action=index"> 
						<a style="display: block;" href="driver.jsp"
							target="right"> <img src="css/blank16.gif" border="0">
								<img src="css/catalogue1.png" border="0"> 管理驾驶舱
						</a></shiro:hasPermission>  --%>
						</span>
						<shiro:hasPermission name="/work">
						<a class="indent0" href="#"> <img src="css/plusFlag.gif"
							border="0"> <img src="css/gear.png" border="0"> 我的事务
						</a> <span> <a style="display: none;" href="work/xjlcsw.html"
							target="right"> <img src="css/blank16.gif" border="0">
								<img src="css/catalogue1.png" border="0"> 新建流程事务
						</a> <a style="display: none;" href="work/dclsw.html" target="right">
								<img src="css/blank16.gif" border="0"> <img
								src="css/catalogue1.png" border="0"> 待处理的事务
						</a> <a style="display: none;" href="work/yclsw.html" target="right">
								<img src="css/blank16.gif" border="0"> <img
								src="css/catalogue1.png" border="0"> 已处理的事务
						</a> <a style="display: none;" indent="1" href="work/wfqdsw.html"
							target="right"> <img src="css/blank16.gif" border="0">
								<img src="css/catalogue1.png" border="0"> 我发起的事务
						</a></span> 
						</shiro:hasPermission>
						<shiro:hasPermission name="/goal">
						<a class="indent0" href="#"> <img src="css/plusFlag.gif"
							border="0"> <img src="css/schedule.png" border="0">
							目标管理
						</a> <span><a style="display: none;" href="pros.do?action=Prospectuslist&prospectus_create_name=${s_emp.emp_name }"target="right"> <img
								src="css/blank16.gif" border="0"> <img
								src="css/catalogue1.png" border="0"> 我的工作计划
						</a> <a style="display: none;" indent="1" href="pros.do?action=Prospectuslist"target="right"> <img
								src="css/blank16.gif" border="0"> <img
								src="css/catalogue1.png" border="0"> 全部工作计划
						</a>
						 <a style="display: none;" href="assi.do?action=Assignmentlist&assignment_create_name=${s_emp.emp_name }" target="right"> <img
								src="css/blank16.gif" border="0"> <img
								src="css/catalogue1.png" border="0"> 我的工作任务
						</a> <a style="display: none;" href="assi.do?action=Assignmentlist" target="right"> <img
								src="css/blank16.gif" border="0"> <img
								src="css/catalogue1.png" border="0"> 全部工作任务
						</a> <a style="display: none;" href="repo.do?action=Reportlist&report_create_name=${s_emp.emp_name }" target="right"> <img
								src="css/blank16.gif" border="0"> <img
								src="css/catalogue1.png" border="0"> 我的工作报告
						</a> <a style="display: none;" href="repo.do?action=Reportlist"target="right"> <img
								src="css/blank16.gif" border="0"> <img
								src="css/catalogue1.png" border="0"> 全部工作报告
						</a> <a style="display: none;" href="goal/wdgzrc.html" target="right"> <img
								src="css/blank16.gif" border="0"> <img
								src="css/catalogue1.png" border="0" > 我的工作日程
						</a> <a style="display: none;" href="cale.do?action=Calendarlist"target="right"> <img
								src="css/blank16.gif" border="0"> <img
								src="css/catalogue1.png" border="0"> 全部工作日程
						</a></span> 
						</shiro:hasPermission>
						<shiro:hasPermission name="/info">
						<a class="indent0" href="#"> <img src="css/plusFlag.gif"
							border="0"> <img src="css/bulletin.png" border="0">
							信息中心
						</a> <span><a style="display: none;" href="info/nbtxl.html"
							target="right"> <img src="css/blank16.gif" border="0">
								<img src="css/catalogue1.png" border="0"> 内部通讯录
						</a> <a style="display: none;" href="info/dzxx.html" target="right">
								<img src="css/blank16.gif" border="0"> <img
								src="css/catalogue1.png" border="0"> 电子消息
						</a> <a style="display: none;" href="info/xxgg.html" target="right">
								<img src="css/blank16.gif" border="0"> <img
								src="css/catalogue1.png" border="0"> 信息公告
						</a> <a style="display: none;" href="info/gggl.html" target="right">
								<img src="css/blank16.gif" border="0"> <img
								src="css/catalogue1.png" border="0"> 公告管理
						</a> <a style="display: none;" href="info/zssq.html" target="right">
								<img src="css/blank16.gif" border="0"> <img
								src="css/catalogue1.png" border="0"> 知识社区
						</a></span>
						</shiro:hasPermission>
					<%-- 	<shiro:hasPermission name="/xz">
						 <a class="indent0" href="#"> <img src="css/plusFlag.gif"
							border="0"> <img src="css/asset.png" border="0"> 行政管理
						</a> <span><a style="display: none;" href="board.do?action=findBoard"
							target="right"> <img src="css/blank16.gif" border="0">
								<img src="css/catalogue1.png" border="0"> 会议室管理
						</a> <a style="display: none;" href="car.do?action=findCar" target="right">
								<img src="css/blank16.gif" border="0"> <img
								src="css/catalogue1.png" border="0"> 车辆管理
						</a> </span>
						</shiro:hasPermission> --%>
						<shiro:hasPermission name="/hr">
						 <a class="indent0" href="#"> <img src="css/plusFlag.gif"
							border="0"> <img src="css/persons.png" border="0">
							人力资源
						</a> <span><a style="display: none;" href="emp.do?action=Emplist" target="right"> 
						<img src="css/blank16.gif" border="0">
								<img src="css/catalogue1.png" border="0"> 员工管理
						</a> <a style="display: none;" href="recruit.do?action=Relist" target="right">
								<img src="css/blank16.gif" border="0"> <img
								src="css/catalogue1.png" border="0"> 招聘和配置
						</a> <a style="display: none;" href="work.do?action=Wklist" target="right"> <img
								src="css/blank16.gif" border="0"> <img
								src="css/catalogue1.png" border="0"> 考勤管理
						</a></span> 
					</shiro:hasPermission>
						<shiro:hasPermission name="/sysManage">
						<a class="indent0" href="#"> <img src="css/plusFlag.gif"
							border="0"> <img src="css/system.png" border="0">
							系统管理
						</a> <span><a style="display: none;"
							href="depart.do?action=findAllDepart_list" target="right"> <img
								src="css/blank16.gif" border="0"> <img
								src="css/catalogue1.png" border="0"> 组织机构
						</a>
						<shiro:hasPermission name="/role.do?action=findAllRole">
						 <a style="display: none;" href="role.do?action=findAllRole"
							target="right"> <img src="css/blank16.gif" border="0">
								<img src="css/catalogue1.png" border="0"> 岗位角色
						</a>
						</shiro:hasPermission> <a style="display: none;" href="emp.do?action=findEmpRight"
							target="right"> <img src="css/blank16.gif" border="0">
								<img src="css/catalogue1.png" border="0"> 用户管理
						</a><a style="display: none;" href="login.do?action=uo"
							target="right"> <img src="css/blank16.gif" border="0">
								<img src="css/catalogue1.png" border="0"> 在线用户
						</a> <!-- <a style="display: none;" href="sysManager/xtrz.html"
							target="right"> <img src="css/blank16.gif" border="0">
								<img src="css/catalogue1.png" border="0"> 系统日志
						</a> --></span> 
						</shiro:hasPermission>
						</shiro:authenticated>
						<a class="indent0ex" href="login.do?action=exit" target="_parent" id="exit"> <img src="css/blank16.gif"
							border="0"> <img src="css/exit.png" border="0" width="24px">
							安全注销
						</a>
					</div></td>
			</tr>
		</tbody>
	</table>
</body>
</html>
