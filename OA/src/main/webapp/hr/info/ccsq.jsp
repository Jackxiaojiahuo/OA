<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/hr/info/";
%>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="../css/sq.min.css">
<link rel="stylesheet" href="../css/sq.css">
<link type="text/css" rel="stylesheet" href="jquery-ui.css" />
<script src="jquery-1.8.2.min.js" type="text/javascript"></script>
<script language="JavaScript" src="jquery-ui.min.js"></script>
<script>
/* 	function checkname() {
		var name = $("input[name=emp_id]").val();
		var nameid = $("#nameid");
		if (name == "") {//检测姓名是否为空
			nameid.show();
			return false;
		}
		nameid.hide();
		return true;
	} */

	function check() {
		//if (checkname()) {
			document.forms[0].submit();
		//}
	}
</script>
<script>
	jQuery(function($) {
		$.datepicker.regional['zh-CN'] = {
			closeText : '关闭',
			prevText : '<上月',
					nextText: '下月>',
			currentText : '今天',
			monthNames : [ '一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月',
					'九月', '十月', '十一月', '十二月' ],
			monthNamesShort : [ '一', '二', '三', '四', '五', '六', '七', '八', '九',
					'十', '十一', '十二' ],
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
	$(function() {
		$("#sqDate").datepicker({ //添加日期选择功能  
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
			}
		});
	});
	$(function() {
		$("#ccDate").datepicker({ //添加日期选择功能  
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
			}
		});
	});
	$(function() {
		$("#zDate").datepicker({ //添加日期选择功能  
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
				<td id="colloaForm">
					<div class="formTaskflowContainer">
						<form class="formTaskflow" action="../../work.do?action=kqsq" method="post">
							<table class="tableForm" style="table-layout: fixed;"
								cellspacing="0" cellpadding="0" align="center" border="0">
								<colgroup>
									<col width="60">
									<col>
									<col width="60">
									<col width="120">
								</colgroup>
								<tbody>
									<tr>
										<td style="text-align: right;">&nbsp;<span
											style="color: rgb(255, 0, 0);">*</span>主题:
										</td>
										<td id="dbf.subject" dbf.type="required"><input
											id="e.dbf.subject" class="fieldEditable" name="tv_theme"></td>
										<td style="text-align: right;">&nbsp;优先级:</td>
										<td><input id="dbf.priority" value="低" name="tv_priority"
											autocomplete="off" type="radio"> 低 <input
											id="dbf.priority" checked="" value="中" name="tv_priority"
											autocomplete="off" type="radio"> 中 <input
											id="dbf.priority" value="高" name="tv_priority"
											autocomplete="off" type="radio"> 高</td>
									</tr>
									<tr>
										<td style="text-align: right;">&nbsp;步骤:</td>
										<td colspan="3"><span id="mapping.dbf.procXSource">填单</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人:
											<span id="mapping.dbf.responsorSource">李萌,</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人:
											<span id="mapping.dbf.participantsSource"></span></td>
									</tr>
								</tbody>
							</table>
							<div style="text-align: center;">&nbsp;</div>
							<div style="text-align: center;">
								<span style="font-size: 20px;"><strong>出差申请单</strong></span>
							</div>
							<div>
								<table class="tableListBorder" style="table-layout: fixed;"
									cellspacing="0" cellpadding="0" align="center" border="0">
									<colgroup>
										<col width="100">
										<col width="180">
										<col width="100">
										<col width="250">
										<col width="100">
										<col>
									</colgroup>
									<tbody>
										<tr>
											 <td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>申请人</td>
											<td id="dbf.operator">
												<div id="e.dbf.operatorSource" class="fieldEditable"
													contenteditable="true">
													<input id="e.dbf.operatorSource" class="fieldEditable"
														value="${em.emp_name }" name="emp_id"><input type="hidden"
														name="emp_id" value="${em.emp_id }"><span
														id="nameid" style="color: red; display: none;">不能为空</span>
												</div>
											</td>
											<td style="text-align: center;">所属部门</td>
											<td class="select_box"><select name="depart_id">
													<option value="0">请选择</option>
													<c:forEach items="${bm }" var="bm">
														<option value="${bm.depart_id }">${bm.depart_name }</option>
													</c:forEach>
											</select></td>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>申请时间</td>
											<td id="dbf.time2" dbf.type="date,required" dbf.source="date">
												<!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->
												<div>
													<input type="text" id="sqDate" name="tv_applydate">
												</div>
											</td>
										</tr>
										<tr>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>出差时间</td>
											<td id="dbf.time0" dbf.type="date,required"
												dbf.source="datetime,editable">
												<!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->

												<div class="fieldEditable" contenteditable="true">
													<input type="text" id="ccDate" name="tv_cdate">
												</div>
											</td>
											<td style="text-align: center;" dbf.type="" dbf.source="">~</td>
											<td id="dbf.time1" dbf.type="date,required"
												dbf.source="datetime,editable">
												<!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->

												<div class="fieldEditable" contenteditable="true">
													<input type="text" id="zDate" name="tv_ddate">
												</div>
											</td>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>目的地</td>
											<td id="dbf.text5" dbf.type="required" dbf.source=""><input id="e.dbf.positionX" class="fieldEditable" name="tv_termini"></td>
										</tr>
										<tr>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>出差事由</td>
											<td id="出差事由" colspan="5" dbf.type="required" dbf.source=""><input id="e.dbf.positionX" class="fieldEditable" name="tv_reason"></td>
										</tr>
										<tr>
											<td style="text-align: center;">交通工具</td>
											<td colspan="5">&nbsp; <input id="交通工具" name="交通工具"
												type="checkbox" value="汽车"> 汽车&nbsp;&nbsp; <input id="交通工具"
												name="tv_traffic" type="checkbox" value="火车"> 火车&nbsp;&nbsp; <input
												id="交通工具" name="tv_traffic" type="checkbox" value="飞机">
												飞机&nbsp;&nbsp; <input id="交通工具" name="tv_traffic" type="checkbox" value="轮船">
												轮船&nbsp;&nbsp; <input id="交通工具" name="tv_traffic" type="checkbox" value="私家车">
												私家车&nbsp;&nbsp; <input id="交通工具" name="tv_traffic" type="checkbox" value="其他 ">
												其他 <input id="其他" name="tv_traffic"></td>
										</tr>
										<tr>
											<td style="text-align: center;">出差报告</td>
											<td id="出差汇报" style="height: 150px; vertical-align: top;"
												colspan="5" dbf.type="" dbf.source=""><input id="e.dbf.positionX" class="fieldEditable" name="tv_report"></td>
										</tr>
										<tr>
											<td style="text-align: center;">出差结果</td>
											<td colspan="5">&nbsp; <input disabled="" id="出差结果"
												value="目标达成" name="tv_result" type="radio"> 目标达成&nbsp; <input
												disabled="" id="出差结果" name="tv_result" type="radio" value="目标基本达成 ">
												目标基本达成 <input disabled="" id="出差结果" name="tv_result" type="radio" value="目标未达成">
												目标未达成
											</td>
										</tr>
										  <tr style="text-align: right;">
                  <td colspan="6" dbf.type="" dbf.source=""><a class="button" onclick="check()">保存</a><a class="button">提交主管审批</a><a class="button" href="javascript:history.back()">取消</a></td>
                  </tr>
									</tbody>
								</table>
							</div>
							<div>&nbsp;</div>
							<table class="tableForm" style="table-layout: fixed;"
								cellspacing="0" cellpadding="0" align="center" border="0">
								<colgroup>
									<col width="60">
									<col>
								</colgroup>
								<tbody>
								</tbody>
							</table>
							<div>&nbsp;</div>
						</form>
					</div>
					<table style="table-layout: fixed;" cellspacing="0" cellpadding="0"
						border="0">
						<colgroup>
							<col width="60%">
							<col width="2%">
							<col>
						</colgroup>
						<tbody>
							<tr valign="top">
								<td class="boxBorder">
									<div style="padding: 2px 10px;">
										<div style="float: right;">
											<a href="ccsq_lct.html">› 显示流程图</a>
										</div>
										【处理过程】
									</div>
								</td>
								<td></td>
								<td>
									<div class="boxBorder">
										<div
											style="padding: 2px 10px; border-bottom: 1px dotted rgb(221, 221, 221); margin-bottom: 5px;">【父事务】</div>
									</div>
									<div class="boxBorder">
										<div
											style="padding: 2px 10px; border-bottom: 1px dotted rgb(221, 221, 221); margin-bottom: 5px;">【子事务】</div>
									</div>
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