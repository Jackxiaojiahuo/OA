<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/goal/er/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'xzrw.jsp' starting page</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="css/xzrw.min.css">
<link rel="stylesheet" href="css/xzrw.css">
<link type="text/css" rel="stylesheet" href="jquery-ui.css" />
<script src="jquery-1.8.2.min.js" type="text/javascript"></script>
<script language="JavaScript" src="jquery-ui.min.js"></script>
<script>

/* 开始时间 */
function checkassignment_create_time(){
	  var create=$("input[name='assignment_create_time']").val();
	  var createid=$("#createid");
		if(create==""){
			createid.show();
			return false;
		}
		return true;
}
/* 结束时间 */
function checkassignment_terminal_time(){
	  var terminal=$("input[name='assignment_terminal_time']").val();
	  var terminalid=$("#terminalid");
		if(terminal==""){
			terminalid.show();
			return false;
		}
		return true;
}
/*提交按钮  */
function check(){
	if(checkassignment_create_time()&checkassignment_terminal_time()/* &chkcreatena() */){
	document.forms[0].submit();
	}
}

	$(function($) {
		$.datepicker.regional['zh-CN'] = {
			closeText : '关闭',
			prevText : '<上月',
			nextText : '下月>',
			currentText : '今天',
			monthNames : [ '一月', '二月', '三月', '四月', '五月', '六月',
				'七月', '八月', '九月', '十月', '十一月', '十二月' ],
			monthNamesShort : [ '一', '二', '三', '四', '五', '六',
				'七', '八', '九', '十', '十一', '十二' ],
			dayNames : [ '星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六' ],
			dayNamesShort : [ '周日', '周一', '周二', '周三', '周四', '周五', '周六' ],
			dayNamesMin : [ '日', '一', '二', '三', '四', '五', '六' ],
			weekHeader : '周',
			dateFormat : 'yy-mm-dd',
			firstDay : 1,
			isRTL : false,
			showMonthAfterYear : true,
			yearSuffix : '年'
		};
		$.datepicker.setDefaults($.datepicker.regional['zh-CN']);
	});
	
	$(function(){ 
	 $("#selectDate").datepicker({//添加日期选择功能  
         numberOfMonths:1,//显示几个月  
         showButtonPanel:true,//是否显示按钮面板  
         dateFormat: 'yy-mm-dd',//日期格式  
         clearText:"清除",//清除日期的按钮名称  
         closeText:"关闭",//关闭选择框的按钮名称  
         yearSuffix: '年', //年的后缀  
         showMonthAfterYear:true,//是否把月放在年的后面  
         //defaultDate:'2016-12-31',//默认日期  
         minDate:'1900-01-01 00:00:00',//最小日期  
         maxDate:'2099-12-31 23:59:59',//最大日期  
         //monthNames: ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],  
         //dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],  
         //dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],  
         //dayNamesMin: ['日','一','二','三','四','五','六'],  
         onSelect: function(selectedDate) {//选择日期后执行的操作 
				//alert(selectedDate);
         }  
         }); 
	  }); 
	/* 开始时间日历 */
	$(function() {
		$("#ksDate").datepicker({ //添加日期选择功能  
			numberOfMonths : 1, //显示几个月  
			showButtonPanel : true, //是否显示按钮面板  
			dateFormat : 'yy-mm-dd', //日期格式  
			clearText : "清除", //清除日期的按钮名称  
			closeText : "关闭", //关闭选择框的按钮名称  
			yearSuffix : '年', //年的后缀  
			showMonthAfterYear : true, //是否把月放在年的后面  
			//defaultDate:'2016-12-31',//默认日期  
			minDate : '1900-01-01 00:00:00', //最小日期  
			maxDate : '2099-12-31 23:59:59', //最大日期  
			//monthNames: ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],  
			//dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],  
			//dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],  
			//dayNamesMin: ['日','一','二','三','四','五','六'],  
			onSelect : function(selectedDate) { //选择日期后执行的操作 
				//alert(selectedDate);
				$("#createid").hide();
			}
		});
	});
	/* 结束时间日历 */
	$(function() {
		$("#jsDate").datepicker({ //添加日期选择功能  
			numberOfMonths : 1, //显示几个月  
			showButtonPanel : true, //是否显示按钮面板  
			dateFormat : 'yy-mm-dd', //日期格式  
			clearText : "清除", //清除日期的按钮名称  
			closeText : "关闭", //关闭选择框的按钮名称  
			yearSuffix : '年', //年的后缀  
			showMonthAfterYear : true, //是否把月放在年的后面  
			//defaultDate:'2016-12-31',//默认日期  
			minDate : '1900-01-01 00:00:00', //最小日期  
			maxDate : '2099-12-31 23:59:59', //最大日期  
			//monthNames: ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],  
			//dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],  
			//dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],  
			//dayNamesMin: ['日','一','二','三','四','五','六'],  
			onSelect : function(selectedDate) { //选择日期后执行的操作 
				//alert(selectedDate);
				$("#terminalid").hide();
			}
		});
	});



</script>
</head>

<body id="colloaBody">
	<table style="min-width: 950px; width: 100%; height: 100%;"
		cellspacing="0" cellpadding="0" border="0">
		<tbody>
			<tr valign="top">
				<td id="colloaForm"><div class="formTaskflowContainer">
						<form class="formTaskflow" name="myform" action="../../assi.do?action=addass" method="post" >
							<table class="tableForm" style="table-layout: fixed;"
								cellspacing="0" cellpadding="0" border="0" align="center">
								<colgroup>
									<col>
									<col width="180">
								</colgroup>
								<tbody>
									<tr>
										<td>&nbsp;步骤: <span id="mapping.dbf.procXSource">新增任务</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!-- 责任人:
											<span id="mapping.dbf.responsorSource">李萌</span> -->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!-- 参与人:
											<span id="mapping.dbf.participantsSource"></span> --></td>
										<!-- <td>&nbsp;优先级: <input id="dbf.priority" value="-1" name="dbf.priority" autocomplete="off" type="radio">低<input id="dbf.priority" checked="" value="0" name="dbf.priority" autocomplete="off" type="radio">中<input id="dbf.priority" value="1" name="dbf.priority" autocomplete="off" type="radio">高</td> -->
									</tr>
								</tbody>
							</table>
							<table cellspacing="0" cellpadding="0" border="0">
								<tbody>
									<tr>
										<td id="dbf.subject"
											style="font-size: 20px; font-weight: bold; text-align: center; line-height: 1;"
											dbf.source="" dbf.type="required"><textarea id="e.dbf.subject" name="assignment_name" class="fieldEditable" style="height: 40px;  font-size: 20px; font-weight: bold; text-align: center;"></textarea></td>
									</tr>
								</tbody>
							</table>
							<table class="tableListBorder" style="table-layout: fixed;"
								cellspacing="0" cellpadding="0" border="0" align="center">
								<colgroup>
									<col width="100">
									<col width="350">
									<col width="100">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<td style="text-align: center;">任务分类</td>
										<td><input id="dbf.psid2" checked="" value="0"
											name="dbf.psid2" autocomplete="off" type="radio">常规 <input
											id="dbf.psid2" value="10" name="dbf.psid2" autocomplete="off"
											type="radio">行政 <input id="dbf.psid2" value="20"
											name="dbf.psid2" autocomplete="off" type="radio">人事 <input
											id="dbf.psid2" value="30" name="dbf.psid2" autocomplete="off"
											type="radio">财务 <input id="dbf.psid2" value="40"
											name="dbf.psid2" autocomplete="off" type="radio">业务 <input
											id="dbf.psid2" value="100" name="dbf.psid2"
											autocomplete="off" type="radio">项目</td>
										<td style="text-align: center;">任务状态</td>
														<td >&nbsp; 
														 
														 <input id="任务状态" name="assi_state" type="radio" checked="" value="执行中">
												转执行&nbsp;&nbsp; 
												 
												<input id="任务状态" name="assi_state" type="radio" value="已关闭">
											直接关闭&nbsp;&nbsp; </td>
									</tr>
									<tr>
										<td style="text-align: center;">创建人</td>
										<td>李萌</td>
										<td style="text-align: center;">所属部门</td>
										<td>销售部</td>
									</tr>
									<tr>
										<td style="text-align: center;"><strong><font
												color="#ff0000">*</font></strong>开始时间</td>
										<td id="dbf.startTime" dbf.source="date,editable"
											dbf.type="date,required">
											<input type="text" id="ksDate" name="assignment_create_time" onblur="checkassignment_create_time()" placeholder="请输入开始时间"/>
											<span id="createid" style="color:red; display: none;">不能为空</span>
											
											<!-- <div id="e.dbf.startTime" class="fieldEditable"
												contenteditable="true">2017/3/14</div> --></td>
										<td style="text-align: center;">结束时间</td>
										<td id="dbf.endTime" dbf.source="date,editable"
											dbf.type="date">
											<input type="text" id="jsDate" name="assignment_terminal_time" onblur="checkassignment_terminal_time()" placeholder="请输入结束时间"/>
											<span id="terminalid" style="color:red; display: none;">不能为空</span>
											<!-- <img class="fieldGetValueBySource"
											src="css/fieldSource.gif"> -->
											<!-- <div id="e.dbf.endTime" class="fieldEditable"
												contenteditable="true">&nbsp;</div> --></td>
									</tr>
									<tr>
										<td style="text-align: center;"><strong><font
												color="#ff0000">*</font></strong>执行人</td>
										<td id="dbf.text1" dbf.source="form.fieldSource.userX0"
											dbf.type="" dbf.key=""><img
											class="fieldGetValueBySource" src="css/fieldSource.gif">
											<div id="e.dbf.text1Source">&nbsp;</div></td>
										<td style="text-align: center;">工作量</td>
										<td>预估(人天) <input id="dbf.numberTotal"
											style="width: 60px;" value="0" name="dbf.numberTotal"
											dbf.type="number">&nbsp;&nbsp;&nbsp;&nbsp;实际(人天) <input
											id="dbf.number0" style="width: 60px;" value="0"
											name="dbf.number0" dbf.type="number"></td>
									</tr>
									<tr>
										<td style="text-align: center;">任务说明</td>
										<td id="任务说明" style="vertical-align: top;" colspan="3"
											dbf.source="" dbf.type=""><textarea id="e.任务说明"
												class="fieldEditable" style="height: 120px;"></textarea></td>
									</tr>
									<tr>
										<!-- <td style="text-align: center;"></td>
<td id="attachments" colspan="3" dbf.source="files"></td></tr>
<tr> -->
										<td style="text-align: center;">执行结果</td>
										<td id="执行结果" style="height: 120px; vertical-align: top;"
											colspan="3" dbf.source="" dbf.type="">&nbsp;</td>
									</tr>
									<!-- <tr>
<td style="text-align: center;">附件</td>
<td id="dbf.links" colspan="3" dbf.source="files">&nbsp;</td></tr> -->
								</tbody>
							</table>
						</form>
					</div>
					<form method="post">
						<input id="viewState" name="viewState" type="hidden">
					</form> <script language="javaScript">/* Code removed by ScrapBook */
					</script><br>
					<div id="_vWorkflowActionsShow" align="right">
						<a class="button" onclick="check()">保存</a><!-- <a class="button">转执行</a><a class="button">直接关闭任务</a> --><a
							class="button" href="javascript:history.back()">取消</a>
					</div> <br> <!-- <table style="table-layout: fixed;" cellspacing="0" cellpadding="0" border="0"><colgroup><col width="60%"><col width="2%"><col></colgroup><tbody><tr valign="top"><td class="boxBorder">
<div style="padding: 2px 10px;"><div style="float: right;"><a href="../mg/lct/rwlc.html">› 显示流程图</a></div>【处理过程】</div>

</td><td></td><td>
 <div class="boxBorder"><div style="padding: 2px 10px; border-bottom: 1px dotted rgb(221, 221, 221); margin-bottom: 5px;">【父事务】</div>

</div>
<div class="boxBorder">
<div style="padding: 2px 10px; border-bottom: 1px dotted rgb(221, 221, 221); margin-bottom: 5px;">【子事务】</div>

</div>
</td></tr></tbody></table> --></td>
				<td>&nbsp;</td>
			</tr>
		</tbody>
	</table>
</body>
</html>
