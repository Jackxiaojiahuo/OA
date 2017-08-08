<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/hr/info/";
%>
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
   <script>
   function checkapplydate(){
		  var applydate=$("input[name='q_applydate']").val();
		  var applydateid=$("#applydateid");
			if(applydate==""){
				applydateid.show();
				return false;
			}
			return true;
	}
	function checkjoindate(){
		  var joindate=$("input[name='q_joindate']").val();
		  var joindateid=$("#joindateid");
			if(joindate==""){
				joindateid.show();
				return false;
			}
			return true;
	}
	function checkquit(){
		  var quit=$("input[name='q_quit']").val();
		  var quitid=$("#quitid");
			if(quit==""){
				quitid.show();
				return false;
			}
			return true;
	}
    function check(){
    	if(checkapplydate()&checkjoindate()&checkquit()){
		document.forms[0].submit();
    	}
  	}
</script>
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
            defaultDate:'2016-12-31',//默认日期  
            minDate:'1900-01-01 00:00:00',//最小日期  
            maxDate:'2099-12-31 23:59:59',//最大日期  
            //monthNames: ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],  
            //dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],  
            //dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],  
            //dayNamesMin: ['日','一','二','三','四','五','六'],  
            onSelect: function(selectedDate) {//选择日期后执行的操作 
				//alert(selectedDate);
            	$("#applydateid").hide();
            }  
            });  
        });
	 	 $(function(){  
            $("#rzDate").datepicker({//添加日期选择功能  
            numberOfMonths:1,//显示几个月  
            showButtonPanel:true,//是否显示按钮面板  
            dateFormat: 'yy-mm-dd',//日期格式  
            clearText:"清除",//清除日期的按钮名称  
            closeText:"关闭",//关闭选择框的按钮名称  
            yearSuffix: '年', //年的后缀  
            showMonthAfterYear:true,//是否把月放在年的后面  
            defaultDate:'2016-12-31',//默认日期  
            minDate:'1900-01-01 00:00:00',//最小日期  
            maxDate:'2099-12-31 23:59:59',//最大日期  
            //monthNames: ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],  
            //dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],  
            //dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],  
            //dayNamesMin: ['日','一','二','三','四','五','六'],  
            onSelect: function(selectedDate) {//选择日期后执行的操作 
				//alert(selectedDate);
            	$("#joindateid").hide();
            }  
            });  
        }); 
	 	 $(function(){  
            $("#lzDate").datepicker({//添加日期选择功能  
            numberOfMonths:1,//显示几个月  
            showButtonPanel:true,//是否显示按钮面板  
            dateFormat: 'yy-mm-dd',//日期格式  
            clearText:"清除",//清除日期的按钮名称  
            closeText:"关闭",//关闭选择框的按钮名称  
            yearSuffix: '年', //年的后缀  
            showMonthAfterYear:true,//是否把月放在年的后面  
            defaultDate:'2016-12-31',//默认日期  
            minDate:'1900-01-01 00:00:00',//最小日期  
            maxDate:'2099-12-31 23:59:59',//最大日期  
            //monthNames: ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],  
            //dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],  
            //dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],  
            //dayNamesMin: ['日','一','二','三','四','五','六'],  
            onSelect: function(selectedDate) {//选择日期后执行的操作 
				//alert(selectedDate);
            	$("#quitid").hide();
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
            <form class="formTaskflow" action="../../recruit.do?action=zp" method="post">
            <input type="hidden" name="sq" value="3">
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
                  <td id="dbf.subject" dbf.type="required" colspan="5"><input id="e.dbf.subject" class="fieldEditable" name="q_theme" value="离职申请-${s_emp.emp_name }"><input type="hidden" name="emp_id" value="${s_emp.emp_id }"></td>
                </tr>
                <tr>
                  <td style="text-align: right;">&nbsp;步骤:</td>
                  <td colspan="3"><span id="mapping.dbf.procXSource">填单</span></td>
                  <td style="text-align: right;">&nbsp;结束时间:</td>
                  <td id="dbf.endTime" dbf.type="date" dbf.source="date,editable"><!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->
                    <div class="fieldEditable" contenteditable="true"><input type="text" id="selectDate" name="q_shopdate" placeholder="请输入结束时间" /></div></td>
                </tr>
              </tbody>
            </table>
            <div>&nbsp;</div>
            <div style="text-align: center;"><span style="font-size: 20px;"><strong>离职申请单</strong></span></div>
            <div>
              <table class="tableListBorder" style="table-layout: fixed;" cellspacing="0" cellpadding="0" align="center" border="0">
                <colgroup>
                <col width="150">
                <col width="300">
                <col width="150">
                <col>
                </colgroup>
                <tbody>
                  <tr>
                    <td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>申请人</td>
                    <td id="dbf.operatorSource" dbf.type="required" dbf.source="" dbf.key="">
                    <input id="e.dbf.operatorSource" class="fieldEditable"
                     value="${s_emp.emp_name }"><input type="hidden" name="emp_id" value="${s_emp.emp_id }">
                     </td>
                    <td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>申请日期</td>
                    <td id="dbf.time2" dbf.type="date,required" dbf.source="date"><!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->
                      <div><input type="text" id="sqDate" name="q_applydate" onblur="checkapplydate()" placeholder="请输入申请日期" /><span id="applydateid" style="color:red; display: none;">不能为空</span></div></td>
                  </tr>
                  <tr>
                    <td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>所属部门</td>
                  <td id="dbf.operatorSource" dbf.type="required" dbf.source="" dbf.key="">
                    <input id="e.dbf.operatorSource" class="fieldEditable"
                     value="${s_emp.dept.depart_name }"><input type="hidden" name="depart_id" value="${s_emp.dept.depart_id }"></td>
                    <td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>工作岗位</td>
                    <td id="dbf.positionX" dbf.type="required" dbf.source="" dbf.key=""><input id="e.dbf.positionX" class="fieldEditable" name="q_post"></td>
                  </tr>
                  <tr>
                    <td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>入职日期</td>
                    <td id="入职日期" dbf.type="date,required" dbf.source="date"><!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->
                      <div><input type="text" id="rzDate" name="q_joindate" onblur="checkjoindate()" placeholder="请输入入职日期" /><span id="joindateid" style="color:red; display: none;">不能为空</span></div></td>
                    <td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>预计离职日期</td>
                    <td id="dbf.time0" dbf.type="date,required" dbf.source="date"><!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->
                      <div><input type="text" id="lzDate" name="q_quit" onblur="checkquit()" placeholder="请输入预计离职日期" /><span id="quitid" style="color:red; display: none;">不能为空</span></div></td>
                  </tr>
                  <tr>
                    <td style="height: 80px; text-align: center;" dbf.type="" dbf.source=""><span style="color: rgb(255, 0, 0);">*</span>离职类型</td>
                    <td style="height: 80px;" colspan="3" dbf.type="" dbf.source=""><input id="离职类型" value="合同到期，公司要求不续签劳动合同" name="q_type" type="radio">
                      合同到期，公司要求不续签劳动合同&nbsp;
                      <input id="离职类型" value="合同期满，个人要求不续签劳动合同" name="q_type" type="radio">
                      合同期满，个人要求不续签劳动合同<br>
                      <input id="离职类型" value="合同未到期，公司要求解除劳动关系" name="q_type" type="radio">
                      合同未到期，公司要求解除劳动关系&nbsp;
                      <input id="离职类型" value="合同未到期，个人要求解除劳动关系" name="q_type" type="radio">
                      合同未到期，个人要求解除劳动关系<br>
                      <input id="离职类型" value="试用期内，公司要求解除劳动关系" name="q_type" type="radio">
                      试用期内，公司要求解除劳动关系&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <input id="离职类型" value="试用期内，个人要求解除劳动关系" name="q_type" type="radio">
                      试用期内，个人要求解除劳动关系</td>
                  </tr>
                  <tr>
                    <td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>离职原因</td>
                    <td id="离职原因" colspan="3" dbf.type="required" dbf.source=""><input id="e.dbf.positionX" class="fieldEditable" name="q_reason"></td>
                  </tr>
                  <tr>
                    <td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>工作交接</td>
                    <td id="工作交接" colspan="3" dbf.type="required" dbf.source=""><input id="e.dbf.positionX" class="fieldEditable" name="q_transfer"></td>
                  </tr>
                  <tr>
                    <td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>主管意见</td>
                    <td id="主管意见" style="height: 80px;" colspan="3" dbf.type="required" dbf.source=""><input id="e.dbf.positionX" class="fieldEditable" name="q_opinion"></td>
                  </tr>
                  <tr>
                    <td style="text-align: center;">离职处理</td>
                    <td colspan="3" dbf.type="" dbf.source=""><input disabled="" id="离职处理" name="离职处理" type="checkbox">
                      人事手续已经办理
                      <input disabled="" id="离职处理" name="离职处理" type="checkbox">
                      信息系统已经变更（请人事专员或系统管理员在本系统的【员工管理】模块中变更员工信息）</td>
                  </tr>
                      <tr style="text-align: right;">
                  <td colspan="4" dbf.type="" dbf.source=""><a class="button" onclick="check()">提交主管审批</a><a class="button" href="javascript:history.back()">取消</a></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </form>
        </div>
        <table style="table-layout: fixed;" cellspacing="0" cellpadding="0" border="0">
          <colgroup>
          <col width="60%">
          <col width="2%">
          <col>
          </colgroup>
        </table></td>
    </tr>
  </tbody>
</table>
</body>
</html>