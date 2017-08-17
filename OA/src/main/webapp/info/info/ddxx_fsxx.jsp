<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/info/info/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>发送消息 - 10oa</title>
	<link rel="shortcut icon" href="css/colloa.ico">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/ddxx_fsxx.css">
	<style>
/* Code tidied up by ScrapBook */
.cke {
	visibility: hidden;
}
</style>
	<link rel="stylesheet" type="text/css" href="css/editor_gecko.css">
	
	<link rel="stylesheet" href="css/tipso.min.css">
	<script type="text/javascript" src="jquery-1.8.2.min.js"></script>
	<script>
		$(function(){
			$("body").click(function() {
              	$('#f1').hide();
              	eReceiver();
				$('#f3').hide();
			 });
			$('#t1').click(function(evt){
				$('#f1').toggle();
				evt.stopPropagation(evt);
			}); 
			$('#t3').click(function(evt){
				$('#f3').toggle();
				evt.stopPropagation();
			});
			$('#f3>div').click(function(){//循环给模块标题绑定点击事件
				$('#t3+div').html($(this).html());
				$('#f3').hide();
			});
			$('#f1>div').click(function(){//循环给模块标题绑定点击事件
				var str="";
				var code="";
				$("#f1>div input:checked").each(function() { // 遍历name=test的多选框
  					str+=$(this).attr("name");  // 每一个被选中项的值
  					code+=$(this).next("span").html();
				});
				$('#t1+div').html(str);
				$("input[name=rec]").val(str);
				$("input[name=receiverName]").val(str);
				$("input[name=receiver]").val(code);
				$('#f1').hide();
			});
		})
		function eTitle(){
			var title=$("input[name=title]").val();
			if(title==null||title==""){
				$("#zhuti").show();
				
				return false;
			}
			$("#zhuti").hide();
			return true;
		}
		function eReceiver(){
			var receiverName=$("input[name=receiverName]").val();
			if(receiverName==null||receiverName==""){
				$("#xingming").show();
				useTitle: false;
				return false;
			}
			$("#xingming").hide();
			return true;
		}
		function content(){
			var content=$("input[name=content]").val();
			if(content==null||content==""){
				$("#neirong").show();
				return false;
			}
			$("#neirong").hide();
			return true;
		}
		function check(boxType){
			$("input[name=boxType]").val(boxType);
			if(eReceiver()&eTitle()&content()){
				document.forms[0].submit();
			}
			
		}
	</script>
	</head>
	<body id="colloaBody">
<table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
      <tbody>
    <tr valign="top">
          <td id="colloaForm">
          <form action="../../email.do?action=add" id="email" method="post">
          		<!-- 保存还是发送 -->
              <input type="hidden" name="boxType">
              <table class="tableForm" style="table-layout: fixed;" summary="0" cellspacing="0" cellpadding="0" border="0">
              <colgroup>
                <col width="80">
                <col>
                <col width="80">
                <col width="100">
                <col width="20">
                </colgroup>
              <tbody>
                  <tr>
                  <td >&nbsp;主题<b style="color: red;">*</b></td>
                  <td id="dbf.subject" dbf.type="required"><input id="e.dbf.subject" size="80px" name="title" onblur="eTitle()" required="required" placeholder="请填写主题"></td>
                  <td><span id="zhuti" style="color: red;display: none;background-color: #fffccc;">主题不能为空</span></td>
                </tr>
                  <tr>
                  <td>&nbsp;收件人<b style="color: red;">*</b></td>
                  <td>
                     <input type="text" disabled="true"  size="80px" name="rec" value="${param.senderName }" required="required" placeholder="请选择收件人"  onblur="eName()"><img class="fieldGetValueBySource" id="t1" src="css/fieldSource.gif"></td>                 
                      <!-- 收件人 -->
                      <input type="hidden" name="receiverName" value="${param.senderName }">
                      <!-- 收件人编号 -->
                      <input type="hidden"  name="receiver" value="${param.sender }">
   					<!-- 发件人 -->
                    <td><span id="xingming" style="color: red;display: none;background-color: #fffccc;">请选择收件人</span></td>
                </tr>
                  <tr>
                  <td id="dbf.contentX" colspan="4" dbf.type="html"><textarea id="e.dbf.contentX" class="fieldEditable" style="height: 360px; visibility: hidden; display: none;" dbf.type="htm"></textarea></td>
                  </tr>
                  <tr>
                      <td id="content" style="vertical-align: top;" dbf.source="" dbf.type="html">
                      <link rel="stylesheet" type="text/css" href="../../bjq/dist/css/wangEditor.min.css"/>
                      <style type="text/css">
						#editor-trigger {
							height: 400px;
							/*max-height: 500px;*/
						}
						.container {
							width: 1020px;
							margin: 0 auto;
							position: relative;
						}
					</style>
					
                      <div id="editor-container" class="container">
                          <div id="editor-trigger">${eId.content } </div>
                       </div>
                        <!-- <div id="html"></div> -->
                      <input type="hidden" id="content" value="${eId.content }" name="content"/>
                      <script type="text/javascript" src="../../bjq/dist/js/wangEditor.js"></script> 
                      <!--   <script type="text/javascript" src="../../bjq/dist/js/wangEditor.min.js"></script> -->
                      <script type="text/javascript">
        // 阻止输出log
        // wangEditor.config.printLog = false;
        var editor = new wangEditor('editor-trigger');
        // 上传图片
        editor.config.uploadImgUrl = 'upload';
        editor.config.uploadParams = {
            // token1: 'abcde',
            // token2: '12345'
        };
        // editor.config.uploadImgFileName = 'myFileName';

        // 隐藏网络图片
        // editor.config.hideLinkImg = true;
        // 插入代码时的默认语言
        // editor.config.codeDefaultLang = 'html'

        // 只粘贴纯文本
        // editor.config.pasteText = true;

        // 跨域上传
        // editor.config.uploadImgUrl = 'http://localhost:8012/upload';

        // 第三方上传
        // editor.config.customUpload = true;

        // 普通菜单配置
        // editor.config.menus = [
        //     'img',
        //     'insertcode',
        //     'eraser',
        //     'fullscreen'
        // ];
        // 只排除某几个菜单（兼容IE低版本，不支持ES5的浏览器），支持ES5的浏览器可直接用 [].map 方法
        // editor.config.menus = $.map(wangEditor.config.menus, function(item, key) {
        //     if (item === 'insertcode') {
        //         return null;
        //     }
        //     if (item === 'fullscreen') {
        //         return null;
        //     }
        //     return item;
        // });

        // onchange 事件
        editor.onchange = function () {
            console.log(this.$txt.html());
			
			// 获取编辑器区域完整html代码
			var html= editor.$txt.html();
			//$("#html").text(html);
			$("input[name=content]").val(html);
        };


        // 取消过滤js
        // editor.config.jsFilter = false;

        // 取消粘贴过来
        // editor.config.pasteFilter = false;

        // 设置 z-index
        // editor.config.zindex = 20000;

        // 语言
        // editor.config.lang = wangEditor.langs['en'];

        // 自定义菜单UI
        // editor.UI.menus.bold = {
        //     normal: '<button style="font-size:20px; margin-top:5px;">B</button>',
        //     selected: '.selected'
        // };
        // editor.UI.menus.italic = {
        //     normal: '<button style="font-size:20px; margin-top:5px;">I</button>',
        //     selected: '<button style="font-size:20px; margin-top:5px;"><i>I</i></button>'
        // };
         editor.create();							
    </script>
   				<span style="color: red;background-color: #fffccc;display: none;" id="neirong">
                          		录入发生信息
                          	</span>
    		</td>
                </tr>
                </tbody>
            </table>
            </form>
        </div>
        <form method="post" >
              <input id="viewState" name="viewState" type="hidden">
            </form>
        <div id="_vWorkflowActionsShow" align="center"><a class="button" onClick="check(0)">保存</a><a onClick="check(1)" class="button">发送</a><a href="../../email.do?action=ss&type=3" class="button">取消</a></div>
        <br></td>
        </tr>
  </tbody>
    </table>
<div id="f3" style="position: absolute; z-index: 10; background-color: rgb(255, 255, 255); cursor: default; border: 1px solid rgb(221, 221, 221); box-sizing: border-box; padding: 5px; overflow-x: hidden; overflow-y: auto; height: 250px; width: 830px; top: 130px; left: 130px; display: none;">
      <iframe src="css/zssq_sqft_index_7.html" style="width: 100%; height: 95%;" frameborder="0"></iframe>
    </div>
	<div id="f1" style="position: absolute; z-index: 10; background-color: rgb(255, 255, 255); cursor: default; border: 1px solid rgb(221, 221, 221); box-sizing: border-box; padding: 5px; overflow-x: hidden; overflow-y: auto; height: 250px; width: 830px; top: 105px; left: 130px; display: none;">
   	<c:forEach var="b" items="${bm }"> 
   		<div style="padding-left: 0px;">
     	${b.depart_name }</div>
	   	<c:forEach var="e" items="${eList }"> 
			 <c:if test="${e.depart_id==b.depart_id }">
			 	 <div style="padding-left: 50px;">
	    		<input name="${e.emp_name }," type="checkbox">
	    		<span style="display: none;">${e.emp_code },</span>
	    		${e.emp_name }</div>
    		</c:if>
	   	</c:forEach>
   	</c:forEach>
   </div>
</body>
</html>
