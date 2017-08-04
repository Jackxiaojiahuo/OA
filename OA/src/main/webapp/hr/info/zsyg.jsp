<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/hr/info/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="../css/zsyg.min.css">
<link rel="stylesheet" href="../css/zsyg.css"><style>
/* Code tidied up by ScrapBook */
</style>
</head><body id="colloaBody"><table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0"><tbody><tr valign="top"><td id="colloaForm"><table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td class="textBig">${e.emp_name}</td><td align="right"><script language="javaScript">/* Code removed by ScrapBook */</script><a class="button1 button1L" title="刷新" href="javascript:location.reload()">&nbsp;<i class="fa fa-bolt fa-lg"></i></a><span id="oWorkflowList1"><a class="button1 button1M" href="../../emp.do?action=zs&emp_id=${e.emp_id }&id=id">修改</a><a class="button1 button1M" href="../../emp.do?action=del&emp_id=${e.emp_id }">删除</a></span><a class="button1 button1R" title="关闭" href="../../emp.do?action=Emplist">&nbsp;<i class="fa fa-times-circle fa-lg"></i></a><script language="JavaScript">/* Code removed by ScrapBook */</script></td></tr></tbody></table><br>
<table class="tableForm" summary="" style="table-layout: fixed;" cellspacing="0" cellpadding="0" border="0"><colgroup><col width="100px"><col><col width="100px"><col>
    </colgroup><tbody>
    <td class="fieldLable">从属于</td>
                <td id="dbf.psid" dbf.key="1000011" dbf.source="select sid,name,psid,stype from userX where statusX=1 and stype=10000 order by sortId,name">${e.dept.depart_name }</td>
               	<td class="fieldLable">个人状态</td>
				<td>${e.emp_status }</td>
               <td><input type="hidden" name="emp_id"  value="${e.emp_id }"></td>
                </tr>
    <tr>
            <td class="fieldLable">状态</td>
            <td><input disabled="" checked="checked" type="checkbox">有效（能够登录本系统）</td>
            <td class="fieldLable" >描述</td>
            <td colspan="3">${e.emp_description }</td>
        </tr>
        <tr>
            <td class="fieldLable">姓名</td>
            <td>${e.emp_name}</td>
            <td class="fieldLable">工号</td>
            <td>${e.emp_code}</td>
        </tr>
        <tr>
            <td class="fieldLable">性别</td>
            <td>${e.emp_sex}</td>
            <td class="fieldLable">在职状态</td>
            <td>${e.emp_state}</td>
        </tr>
        <tr>
            <td class="fieldLable">移动电话</td>
            <td>${e.emp_mobile }</td>
            <td class="fieldLable">固定电话</td>
            <td>${e.emp_phone }</td>
        </tr>
        <tr>    
        	<td class="fieldLable">电子邮件</td>
            <td>${e.emp_email }</td>
            <td class="fieldLable">即时通信(QQ)</td>
            <td>${e.emp_qq }</td>
        </tr>
        <tr>
            <td class="fieldLable">出生日期</td>
            <td>${e.emp_birth }</td>
            <td class="fieldLable">入职日期</td>
            <td>${e.emp_join }</td>
        </tr>
        <tr>
            <td class="fieldLable">转正日期</td>
            <td>${e.emp_formal }</td>
            <td class="fieldLable">离职日期</td>
            <td>${e.emp_leave }</td>
        </tr>
    </tbody>
</table></td></tr></tbody></table></body>
</html>