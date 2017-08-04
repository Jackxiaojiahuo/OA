<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/xz/info/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登记 - 10oa</title>
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="../css/hyyd.min.css">
<link rel="stylesheet" href="../css/hyyd.css">
<style></style>
<link href="../../js/bootstarp/core/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../../js/bootstarp/dialog/css/bootstrap-dialog.css"
	type="text/css" />
<link rel="stylesheet" type="text/css" href="../../easyUI/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../../easyUI/icon.css">
<script src="../../js/bootstarp/jquery-3.1.0.js"></script>
<script src="../../js/bootstarp/core/js/bootstrap.min.js"
	type="text/javascript"></script>
<script src="../../js/bootstarp/dialog/js/bootstrap-dialog.js"
	type="text/javascript"></script>
<script type="text/javascript" src="../../easyUI/jquery.min.js"></script>
<script type="text/javascript" src="../../easyUI/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../../easyUI/locale/easyui-lang-zh_CN.js"></script>
<script>
	$(function(){
		formatterDate=function(date){
			var day=date.getDate()>9 ? date.getDate() : "0"+date.getDate();
			var month=(date.getMonth()+1)>9 ? (date.getMonth()+1) : "0"+(date.getMonth()+1);
			return date.getFullYear()+"-"+month+"-"+day;
		}
		var d=formatterDate(new Date());
		$("#dt").text(d);//预定日期赋值
		$("#applicationDate").val(d);//隐藏域赋值
		var date=new Date();			
		var hour=date.getHours();
		var minu=date.getMinutes()+30;
		$('#beginTime,#endTime').datetimebox({ //初始化时间选择器
			value: d+' '+hour+':'+minu, 
		    showSeconds: false   
		});  
	});
</script>
</head>
<body id="colloaBody">
<table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0"  border="0">
  <tbody>
    <tr valign="top">
      <td id="colloaForm"><div class="formTaskflowContainer">
          <form id="myForm" action="" method="post" >
            <div style="text-align: center;"><h1>会议室预定</h1></div>
            <table class="tableListBorder" style="width: 100%;" cellspacing="0" cellpadding="0" align="center" border="0">
              <tbody>
               <tr>
                  <td style="text-align: center;">&nbsp;<span style="color: rgb(255, 0, 0);">*</span>主题:</td>
                  <td colspan="3" id="dbf.subject" dbf.type="required">
                  	<input name="subject" required="required" id="subject" class="fieldEditable" value="会议室预定-${s_emp.emp_name }">
                  </td>
                </tr>
                <tr>
                  <td style="text-align: center; width: 137px;"><span style="color: rgb(255, 0, 0);">*</span>申请人</td>
                  <td id="dbf.operator" style="width: 317px;" dbf.type="required" dbf.source="editable,prompt:select sid,name from userX where stype=0 and statusX>0 and name like '%[!prompt]%' order by name" dbf.key="1000071" dbf.value="李萌">
                    	${s_emp.emp_name }
                    	</td>
                  <td style="text-align: center; width: 136px;"><span style="color: rgb(255, 0, 0);">*</span>所属部门</td>
                    <td>
                    	${s_emp.dept.depart_name }
                    </td>
                </tr>
                <tr>
                  <td style="text-align: center; width: 137px;"><span style="color: rgb(255, 0, 0);">*</span>申请日期</td>
                  <td id="dbf.time2" style="width: 317px;" dbf.type="date,required" dbf.source="date">
                 	<div id="dt">2017-1-1</div>
                 	<input type="hidden" name="applicationDate" id="applicationDate" />
                 </td>
                  <td style="text-align: center; width: 136px;" dbf.type="" dbf.source=""><span style="color: rgb(255, 0, 0);">*</span>预定会议室</td>
                  <td id="dbf.text0" style="width: 308px;" dbf.type="required!0" >
                    <div>
                    	<select required="required" name="board_id" class="easyui-combobox" style="width:200px;">
                    		<option>一号会议室</option>
                    		<option>二号会议室</option>
                    		<option>三号会议室</option>
                    	</select>
                    </div>
                   </td>
                </tr>
                <tr>
                  <td style="text-align: center; width: 137px;"><span style="color: rgb(255, 0, 0);">*</span>开始时间</td>
                  <td id="dbf.time0" style="width: 317px;" dbf.type="date,required" dbf.source="datetime,editable"><!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->
                    <div ><input required="required"   type="text" name="beginTime" class="easyui-datetimebox" id="beginTime" /></div></td>
                  <td style="text-align: center; width: 136px;"><span style="color: rgb(255, 0, 0);">*</span>结束时间</td>
                  <td id="dbf.time1" style="width: 308px;" dbf.type="date,required" dbf.source="datetime,editable"><!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->
                    <div ><input  required="required" type="text" name="endTime" class="easyui-datetimebox"  id="endTime" style="width:200px;"/></div></td>
                </tr>
                <tr>
                  <td style="text-align: center; width: 137px;"><span style="color: rgb(255, 0, 0);">*</span>使用事由</td>
                  <td id="使用事由" style="width: 769px;" colspan="3" dbf.type="required" dbf.source="">
                  	<textarea  required="required" id="reason" name="reason" class="fieldEditable" style="height: 80px;"></textarea>
                  </td>
                </tr>
                <tr>
                  <td style="text-align: center; width: 137px;">备注</td>
                  <td id="备注" style="width: 769px;" colspan="3" dbf.type="" dbf.source=""><textarea id="e.备注" name="description" class="fieldEditable" style="height: 80px;"></textarea></td>
                </tr>
              </tbody>
            </table>
	        <div id="_vWorkflowActionsShow" align="center" style="margin-top:20px;">
	        	<input type="button" onclick="submitForm()" class="btn btn-primary" value="提交预定申请">&nbsp;&nbsp;
	        	<input type="button" class="btn btn-primary" value="取消" onclick="history.back()">
	        </div>
          </form>
        </div>
        <br>
        <table style="table-layout: fixed;" cellspacing="0" cellpadding="0" border="0">
          <colgroup>
          <col width="60%">
          <col width="2%">
          <col>
          </colgroup>
          <tbody>
            <tr valign="top">
              <td class="boxBorder" colspan="3"><div style="padding: 2px 10px;">
                  <div style="float: right;"><a href="hysyd_lct.html">› 显示流程图</a></div>
                  【处理过程】</div></td>
            </tr>
          </tbody>
        </table></td>
    </tr>
  </tbody>
</table>
</body>
<script>
	/* $('#file-1').fileinput({
	 "language": "zh",
	 "showUpload":false,
	 "showPreview":true
	 }); */
	 function checkBT(){//验证开始时间
	 	 var aDate=$("#applicationDate").val();
		 var bt=$("#beginTime").val();
		 //alert(Math.floor((new Date(bt)-new Date(aDate))/(365*24*60*60*1000)));
		 if(Math.floor((new Date(bt)-new Date(aDate))/(365*24*60*60*1000))<0){
			 infoShow("时间错误");
			 return false;
		 }
		 return true;
	 }
	 function checkET(){//验证结束时间
		 var aDate=$("#applicationDate").val();
		 var bt=$("#endTime").val();
		 if(Math.floor((new Date(bt)-new Date(aDate))/(365*24*60*60*1000))<0){
			 infoShow("时间错误");
			 return false;
		 }
		 return true;
	 }
	 function infoShow(info){
		 var dlg=BootstrapDialog.show({
				"title" : "提示信息",
				"message" : info,
				"type" : BootstrapDialog.TYPE_SUCCESS
			});
			setTimeout(function(){
			    dlg.close();
			},1000);
	 }
	 function check(){
		if($("#subject").val()==""){
			infoShow("请填写主题信息");		
			return false;
		} 
		if(!checkBT()) return false;
		if(!checkET()) return false;
		if($("#reason").val()==""){
			infoShow("请填写事由");		
			return false;
		}
		return true;
	 }
	 function submitForm(){
		 if(check())
			 $("#myForm")[0].submit();
		 return;
	 }
</script>
<c:if test="${msg ne null }">
	<script>
		var msg = '${msg}';
		infoShow(msg)
	</script>
	<%
		session.setAttribute("msg", null);
	%>
</c:if>
</html>
