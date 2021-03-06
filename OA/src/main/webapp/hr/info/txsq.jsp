<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/hr/info/";
%>
<!DOCTYPE html >
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="../css/sq.min.css">
<link rel="stylesheet" href="../css/sq.css">
<link type="text/css" rel="stylesheet" href="jquery-ui.css"  />
 <script src="jquery-1.8.2.min.js" type="text/javascript"></script>
 <script language="JavaScript" src="jquery-ui.min.js"></script>
<!-- <script>
function checkapplydate(){
	  var applydate=$("input[name='of_applydate']").val();
	  var applydateid=$("#applydateid");
		if(applydate==""){
			applydateid.show();
			return false;
		}
		return true;
}
function checkcdate(){
	  var cdate=$("input[name='of_cdate']").val();
	  var cdateid=$("#cdateid");
		if(cdate==""){
			cdateid.show();
			return false;
		}
		return true;
}
function checkddate(){
	  var ddate=$("input[name='of_ddate']").val();
	  var ddateid=$("#ddateid");
		if(ddate==""){
			ddateid.show();
			return false;
		}
		return true;
}
function check(){
	if(checkapplydate()&checkcdate()&checkddate()){
	document.forms[0].submit();
	}
}
</script> -->
<style type="text/css">
.btn-primary {
				color: #fff;
				background-color: #337ab7;
				border-color: #2e6da4;
			}
			
			.btn {
				display: inline-block;
				position: relative;
				left: 30%;
				padding: 15px 12px;
				margin-bottom: 0;
				font-size: 14px;
				font-weight: 400;
				line-height: 1.42857143;
				text-align: center;
				white-space: nowrap;
				vertical-align: middle;
				cursor: pointer;
				-ms-user-select: none;
				user-select: none;
				background-image: none;
				border: 1px solid transparent;
				border-radius: 4px;
			}
</style>
 <script>
     jQuery(function($){  
        $.datepicker.regional['zh-CN'] = {  
            closeText: '关闭',  
            prevText: '<上月',  
            nextText: '下月>',  
            currentText: '今天',  
            monthNames: ['一月','二月','三月','四月','五月','六月',  
            '七月','八月','九月','十月','十一月','十二月'],  
            monthNamesShort: ['一','二','三','四','五','六',  
            '七','八','九','十','十一','十二'],  
            dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],  
            dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],  
            dayNamesMin: ['日','一','二','三','四','五','六'],  
            weekHeader: '周',  
            dateFormat: 'yy-mm-dd',  
            firstDay: 1,  
            isRTL: false,  
            showMonthAfterYear: true,  
            yearSuffix: '年'};  
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
	 $(function(){  
            $("#sqDate").datepicker({//添加日期选择功能  
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
	 	 $(function(){  
            $("#kDate").datepicker({//添加日期选择功能  
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
	 	 $(function(){  
            $("#jDate").datepicker({//添加日期选择功能  
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
 </script>
</head>
<body id="colloaBody">
<table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
  <tbody>
    <tr valign="top">
      <td id="colloaForm"><div class="formTaskflowContainer">
         <form class="formTaskflow" action="../../work.do?action=kqsq" method="post">
         <input type="hidden" name="sq" value="4">
            <table class="tableForm" style="table-layout: fixed;" cellspacing="0" cellpadding="0" align="center" border="0">
              <colgroup>
              <col width="60">
              <col>
              <col width="80">
              <col width="150">
              </colgroup>
              <tbody>
                <tr>
                  <td style="text-align: right;">&nbsp;<span style="color: rgb(255, 0, 0);">*</span>主题:</td>
                  <td id="dbf.subject" dbf.type="required" colspan="5"><input id="e.dbf.subject" class="fieldEditable" name="of_theme" value="调休申请-${s_emp.emp_name }"><input type="hidden" name="emp_id" value="${s_emp.emp_id }"></td>
                </tr>
                <tr>
                  <td style="text-align: right;">&nbsp;步骤:</td>
                  <td colspan="3"><span id="mapping.dbf.procXSource">填单</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人: <span id="mapping.dbf.responsorSource">李萌,</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人: <span id="mapping.dbf.participantsSource"></span></td>
                  <td style="text-align: right;">&nbsp;结束时间:</td>
                  <td id="dbf.endTime" dbf.type="date" dbf.source="date,editable"><!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->
                    <div class="fieldEditable" contenteditable="true"><input type="text" id="selectDate" name="of_shopdate" placeholder="请输入结束时间"></div></td>
                </tr>
              </tbody>
            </table>
            <div style="text-align: center;">&nbsp;</div>
            <div style="text-align: center;"><span style="font-size: 20px;"><strong>调休申请单</strong></span></div>
            <div>
              <table class="tableListBorder" cellspacing="0" cellpadding="0" align="center" border="0">
                <colgroup>
                <col width="120">
                <col width="200">
                <col width="120">
                <col width="200">
                <col width="120">
                <col>
                </colgroup>
                <tbody>
                  <tr>
                    <td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>申请人</td>
                    <td id="dbf.operatorSource" dbf.type="required" dbf.source="" dbf.key="">
                    <input id="e.dbf.operatorSource" class="fieldEditable" value="${s_emp.emp_name }"><input type="hidden" name="emp_id" value="${s_emp.emp_id }">
                     </td>
                    <td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>所属部门</td>
<td id="dbf.operatorSource" dbf.type="required" dbf.source="" dbf.key="">
                    <input id="e.dbf.operatorSource" class="fieldEditable"
                     value="${s_emp.dept.depart_name }"><input type="hidden" name="depart_id" value="${s_emp.dept.depart_id }"></td>
                    <td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>申请时间</td>
                    <td id="dbf.time2" dbf.type="date,required" dbf.source="date"><!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->
                      <div><input type="text" id="sqDate" name="of_applydate" onblur="checkapplydate()" placeholder="请输入申请日期" required/></div></td>
                  </tr>
                  <tr>
                    <td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>调休时间</td>
                    <td id="dbf.time0" dbf.type="date,required" dbf.source="datetime,editable"><!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->
                      <div class="fieldEditable" contenteditable="true"><input type="text" id="kDate" name="of_cdate" onblur="checkcdate()" placeholder="请输入调休时间" required/></div></td>
                    <td style="text-align: center;">～</td>
                    <td id="dbf.time1" dbf.type="date,required" dbf.source="datetime,editable"><!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->
                      <div class="fieldEditable" contenteditable="true"><input type="text" id="jDate" name="of_ddate" onblur="checkddate()" placeholder="请输入调休时间" required/></div></td>
                    <td style="text-align: center;" dbf.type="date,required" dbf.source="datetime,editable">&nbsp;<span style="color: rgb(255, 0, 0);">*</span>共计时长</td>
                    <td dbf.type="date,required" dbf.source="datetime,editable"><input id="dbf.number3" style="width: 40px;" value="0" name="of_day" dbf.type="number,required">
                      天
                      <input id="dbf.number4" style="width: 40px;" value="0" name="of_hour" dbf.type="amount,required">
                      小时</td>
                  </tr>
                  <tr>
                    <td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>调休事由</td>
                    <td id="请休假事由" colspan="5" dbf.type="required" dbf.source=""><input id="e.dbf.positionX" class="fieldEditable" name="of_reason"></td>
                  </tr>
                  <tr>
                    <td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>工作代理人</td>
                    <td id="工作代理人" colspan="5" dbf.type="required" dbf.source=""><input id="e.dbf.positionX" class="fieldEditable" name="of_agent"></td>
                  </tr>
                 <!--  <tr style="text-align: right;">
                  <td colspan="6" dbf.type="" dbf.source=""><a class="button" onclick="check()">提交主管审批</a><a class="button" href="javascript:history.back()">取消</a></td>
                  </tr> -->
                </tbody>
              </table>
              <b class="btn"><input type="submit" class="btn btn-primary" value="提交主管审批"/>
				<input type="button" class="btn btn-primary" value="取消" onclick="location='../../work.do?action=Wklist&num=4'" /></b>
            </div>
            <div>&nbsp;</div>
            <table class="tableForm" style="table-layout: fixed;" cellspacing="0" cellpadding="0" align="center" border="0">
              <colgroup>
              <col width="60">
              <col>
              </colgroup>
            </table>
          </form>
        </div>
        <table style="table-layout: fixed;" cellspacing="0" cellpadding="0" border="0">
          <colgroup>
          <col width="60%">
          <col width="2%">
          <col>
          </colgroup>
         <!--  <tbody>
            <tr valign="top">
              <td class="boxBorder"><div style="padding: 2px 10px;">
                  <div style="float: right;"><a href="txsq_lct.html">› 显示流程图</a></div>
                  【处理过程】</div></td>
              <td></td>
              <td><div class="boxBorder">
                  <div style="padding: 2px 10px; border-bottom: 1px dotted rgb(221, 221, 221); margin-bottom: 5px;">【父事务】</div>
                </div>
                <div class="boxBorder">
                  <div style="padding: 2px 10px; border-bottom: 1px dotted rgb(221, 221, 221); margin-bottom: 5px;">【子事务】</div>
                </div></td>
            </tr>
          </tbody> -->
        </table></td>
    </tr>
  </tbody>
</table>
</body>
</html>