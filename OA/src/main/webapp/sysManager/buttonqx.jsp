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
<link rel="stylesheet" href="css/mkcz2_font-awesome.min.css">
<link rel="stylesheet" href="css/mkcz2_view.css">
<style></style>
</head>
<body id="colloaBody">
<table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
  <tbody>
    <tr valign="top">
      <td id="colloaForm"><form>
          <div class="boxBorderCaption">${ROLE.role_name==null?"所有人":ROLE.role_name } : 模块操作权设置(按角色)</div>
          <div class="boxBorderContent" style="height: 350px; overflow: auto;">
            <table border="0">
              <tbody>
                <tr>
                  <td style="padding-left: 0px;"><img src="css/folder.gif"> 目标管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="132010" type="checkbox">
                    <img src="css/item.gif"> 制定工作计划</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="133010" type="checkbox">
                    <img src="css/item.gif"> 新增工作任务</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="134010" type="checkbox">
                    <img src="css/item.gif"> 撰写工作报告</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><input id="135020" type="checkbox">
                    <img src="css/item.gif"> 设置工作日程</td>
                </tr>
                <tr>
                  <td style="padding-left: 0px;"><img src="css/folder.gif"> 信息中心</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><img src="css/folder.gif"> 电子消息</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="150510" type="checkbox">
                    <img src="css/item.gif"> 发送消息</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="150520" type="checkbox">
                    <img src="css/item.gif"> 回复</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="150530" type="checkbox">
                    <img src="css/item.gif"> 回复全部</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="150540" type="checkbox">
                    <img src="css/item.gif"> 转发</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="150550" type="checkbox">
                    <img src="css/item.gif"> 发送消息[基于草稿]</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="150560" type="checkbox">
                    <img src="css/item.gif"> 删除</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="150570" type="checkbox">
                    <img src="css/item.gif"> 设置星标</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><img src="css/folder.gif"> 公告管理</td>
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
                  <td style="padding-left: 15px;"><img src="css/folder.gif"> 文档管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="152510" type="checkbox">
                    <img src="css/item.gif"> 新增文档</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="152520" type="checkbox">
                    <img src="css/item.gif"> 修改</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="152530" type="checkbox">
                    <img src="css/item.gif"> 删除</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="152535" type="checkbox">
                    <img src="css/item.gif"> 创建新版本</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><img src="css/folder.gif"> 知识社区</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="155010" type="checkbox">
                    <img src="css/item.gif"> 社区发帖</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="155020" type="checkbox">
                    <img src="css/item.gif"> 设置</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="155030" type="checkbox">
                    <img src="css/item.gif"> 删除</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="155050" type="checkbox">
                    <img src="css/item.gif"> 设置关注</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="155070" type="checkbox">
                    <img src="css/item.gif"> 回复</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="155080" type="checkbox">
                    <img src="css/item.gif"> 设为最佳</td>
                </tr>
                <tr>
                  <td style="padding-left: 0px;"><img src="css/folder.gif"> 行政管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><img src="css/folder.gif"> 行政资源</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653010" type="checkbox">
                    <img src="css/item.gif"> 登记</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653020" type="checkbox">
                    <img src="css/item.gif"> 修改</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653030" type="checkbox">
                    <img src="css/item.gif"> 删除</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653150" type="checkbox">
                    <img src="css/item.gif"> 会议室预定查询</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="653250" type="checkbox">
                    <img src="css/item.gif"> 用车申请查询</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><img src="css/folder.gif"> 行政事务</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="655120" type="checkbox">
                    <img src="css/item.gif"> 会议室预定</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="655220" type="checkbox">
                    <img src="css/item.gif"> 用车申请</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="655230" type="checkbox">
                    <img src="css/item.gif"> 车辆保险登记</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="655240" type="checkbox">
                    <img src="css/item.gif"> 车辆维修保养登记</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="655250" type="checkbox">
                    <img src="css/item.gif"> 车辆年检登记</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="655260" type="checkbox">
                    <img src="css/item.gif"> 车辆加油登记</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="655270" type="checkbox">
                    <img src="css/item.gif"> 车辆事故登记</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="655320" type="checkbox">
                    <img src="css/item.gif"> 资产领用申请</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="655330" type="checkbox">
                    <img src="css/item.gif"> 资产归还申请</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="655340" type="checkbox">
                    <img src="css/item.gif"> 资产采购申请</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="655420" type="checkbox">
                    <img src="css/item.gif"> 用品领用申请</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="655430" type="checkbox">
                    <img src="css/item.gif"> 用品采购申请</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="655520" type="checkbox">
                    <img src="css/item.gif"> 证照借用申请</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="655620" type="checkbox">
                    <img src="css/item.gif"> 用章申请</td>
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
                    <img src="css/item.gif"> 行政接待申请</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="655850" type="checkbox">
                    <img src="css/item.gif"> 行政维修申请</td>
                </tr>
                <tr>
                  <td style="padding-left: 0px;"><img src="css/folder.gif"> 人力资源</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><img src="css/folder.gif"> 员工管理</td>
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
                  <td style="padding-left: 15px;"><img src="css/folder.gif"> 人事审批</td>
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
                  <td style="padding-left: 30px;"><input id="703510" type="checkbox">
                    <img src="css/item.gif"> 劳动合同登记</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="703520" type="checkbox">
                    <img src="css/item.gif"> 员工培训安排</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><img src="css/folder.gif"> 人事管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="705110" type="checkbox">
                    <img src="css/item.gif"> 外勤定位</td>
                </tr>
                <tr>
                  <td style="padding-left: 0px;"><img src="css/folder.gif"> 系统管理</td>
                </tr>
                <tr>
                  <td style="padding-left: 15px;"><img src="css/folder.gif"> 组织机构</td>
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
                  <td style="padding-left: 15px;"><img src="css/folder.gif"> 岗位角色</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="900210" type="checkbox">
                    <img src="css/item.gif"> 新增岗位角色</td>
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
                  <td style="padding-left: 15px;"><img src="css/folder.gif"> 用户管理</td>
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
                  <td style="padding-left: 15px;"><img src="css/folder.gif"> 权限设置</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="900460" type="checkbox">
                    <img src="css/item.gif"> 模块访问权设置(按角色)</td>
                </tr>
                <tr>
                  <td style="padding-left: 30px;"><input id="900470" type="checkbox">
                    <img src="css/item.gif"> 模块操作权设置(按角色)</td>
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