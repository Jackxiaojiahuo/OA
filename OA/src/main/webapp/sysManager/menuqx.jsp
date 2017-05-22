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
<title>模块访问权设置(按角色) - 10oa</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/mkcz1_font-awesome.min.css">
<link rel="stylesheet" href="css/mkcz1_view.css">
<style></style>
</head>
<body id="colloaBody">
<table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
  <tbody>
    <tr valign="top">
      <td id="colloaForm"><form>
          <div class="boxBorderCaption">${ROLE.role_name==null?"华夏集团":ROLE.role_name } : 模块访问权设置(按角色)</div>
          <div class="boxBorderContent" style="height: 350px; overflow: auto;">
            <table border="0">
              <tbody>
                <tr>
                  <td style="padding-left: 0px;"><input id="100000" disabled="" type="checkbox">
                    <img src="css/folder.gif"> 我的桌面</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="103000" type="checkbox">
                    <img src="css/folder.gif"> 管理驾驶舱</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="930100" disabled="" type="checkbox">
                    <img src="css/folder.gif"> 个人设置</td>
                </tr>
                <tr>
                  <td style="padding-left: 0px;"><input id="110000" disabled="" type="checkbox">
                    <img src="css/folder.gif"> 我的事务</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="110010" disabled="" type="checkbox">
                    <img src="css/folder.gif"> 新建流程事务</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="110100" disabled="" type="checkbox">
                    <img src="css/folder.gif"> 待处理的事务</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="110200" disabled="" type="checkbox">
                    <img src="css/folder.gif"> 已处理的事务</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="110300" disabled="" type="checkbox">
                    <img src="css/folder.gif"> 我发起的事务</td>
                </tr>
                <tr>
                  <td style="padding-left: 0px;"><input id="130000" disabled="" type="checkbox">
                    <img src="css/folder.gif"> 目标管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="132000" disabled="" type="checkbox">
                    <img src="css/folder.gif"> 我的工作计划</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="132500" type="checkbox">
                    <img src="css/folder.gif"> 全部工作计划</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="133000" disabled="" type="checkbox">
                    <img src="css/folder.gif"> 我的工作任务</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="133500" type="checkbox">
                    <img src="css/folder.gif"> 全部工作任务</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="134000" disabled="" type="checkbox">
                    <img src="css/folder.gif"> 我的工作报告</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="134500" type="checkbox">
                    <img src="css/folder.gif"> 全部工作报告</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="135000" disabled="" type="checkbox">
                    <img src="css/folder.gif"> 我的工作日程</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="135500" type="checkbox">
                    <img src="css/folder.gif"> 全部工作日程</td>
                </tr>
                <tr>
                  <td style="padding-left: 0px;"><input id="150000" disabled="" type="checkbox">
                    <img src="css/folder.gif"> 信息中心</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="150100" disabled="" type="checkbox">
                    <img src="css/folder.gif"> 内部通讯录</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="150500" disabled="" type="checkbox">
                    <img src="css/folder.gif"> 电子消息</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="150510" disabled="" type="checkbox">
                    <img src="css/item.gif"> 未读消息</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="150520" disabled="" type="checkbox">
                    <img src="css/item.gif"> 已读消息</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="150530" disabled="" type="checkbox">
                    <img src="css/item.gif"> 已发送消息</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="150540" disabled="" type="checkbox">
                    <img src="css/item.gif"> 草稿箱</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="150550" disabled="" type="checkbox">
                    <img src="css/item.gif"> 星标消息</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="151000" disabled="" type="checkbox">
                    <img src="css/folder.gif"> 信息公告</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="151100" type="checkbox">
                    <img src="css/folder.gif"> 公告管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="152500" disabled="" type="checkbox">
                    <img src="css/folder.gif"> 文档管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="152600" type="checkbox">
                    <img src="css/folder.gif"> 全部文档</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="155000" disabled="" type="checkbox">
                    <img src="css/folder.gif"> 知识社区</td>
                </tr>
                <tr>
                  <td style="padding-left: 0px;"><input id="650000" disabled="" type="checkbox">
                    <img src="css/folder.gif"> 行政管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="653100" disabled="" type="checkbox">
                    <img src="css/folder.gif"> 会议室管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653110" disabled="" type="checkbox">
                    <img src="css/item.gif"> 会议室列表</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653120" disabled="" type="checkbox">
                    <img src="css/item.gif"> 会议室预定</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="653200" disabled="" type="checkbox">
                    <img src="css/folder.gif"> 车辆管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653210" disabled="" type="checkbox">
                    <img src="css/item.gif"> 车辆列表</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653220" disabled="" type="checkbox">
                    <img src="css/item.gif"> 用车申请</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653230" type="checkbox">
                    <img src="css/item.gif"> 车辆保险</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653240" type="checkbox">
                    <img src="css/item.gif"> 车辆维修保养</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653250" type="checkbox">
                    <img src="css/item.gif"> 车辆年检</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653260" type="checkbox">
                    <img src="css/item.gif"> 车辆加油</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653270" type="checkbox">
                    <img src="css/item.gif"> 车辆事故</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="653300" type="checkbox">
                    <img src="css/folder.gif"> 资产管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653310" type="checkbox">
                    <img src="css/item.gif"> 资产列表</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653320" type="checkbox">
                    <img src="css/item.gif"> 资产领用</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653330" type="checkbox">
                    <img src="css/item.gif"> 资产归还</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653340" type="checkbox">
                    <img src="css/item.gif"> 资产采购</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="653600" type="checkbox">
                    <img src="css/folder.gif"> 印章管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653610" type="checkbox">
                    <img src="css/item.gif"> 印章列表</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653620" type="checkbox">
                    <img src="css/item.gif"> 用章管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="655000" type="checkbox">
                    <img src="css/folder.gif"> 行政事务</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="655810" type="checkbox">
                    <img src="css/item.gif"> 通用行政流程</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="655830" type="checkbox">
                    <img src="css/item.gif"> 名片印制申请</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="655840" type="checkbox">
                    <img src="css/item.gif"> 行政接待管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="655850" type="checkbox">
                    <img src="css/item.gif"> 行政维修申请</td>
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
                  <td style="padding-left: 15px;"><input id="703200" type="checkbox">
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
                  <td style="padding-left: 30px;"><input id="705100" type="checkbox">
                    <img src="css/item.gif"> 外勤定位</td>
                </tr>
                <tr>
                  <td style="padding-left: 0px;"><input id="900000" type="checkbox">
                    <img src="css/folder.gif"> 系统管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="900100" type="checkbox">
                    <img src="css/folder.gif"> 组织机构</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="900200" type="checkbox">
                    <img src="css/folder.gif"> 岗位角色</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="900300" type="checkbox">
                    <img src="css/folder.gif"> 用户管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="900400" type="checkbox">
                    <img src="css/folder.gif"> 权限管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="900460" type="checkbox">
                    <img src="css/item.gif"> 按角色设置权限</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="900700" type="checkbox">
                    <img src="css/folder.gif"> 在线用户</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="900800" type="checkbox">
                    <img src="css/folder.gif"> 系统日志</td>
                </tr>
                
              </tbody>
            </table></div>
        </form>
        <form action="" method="post">
          <input id="viewState" name="viewState" type="hidden">
        </form><br>
        <div id="_vWorkflowActionsShow" align="right"><a class="button">确定</a><a class="button" href="javascript:history.back()">取消</a></div>
        <br>
        <br></td>
    </tr>
  </tbody>
</table>
</body>
</html>