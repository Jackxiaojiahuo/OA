<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<title>发布公告* - 10oa</title>
	<link rel="shortcut icon" href="css/colloa.ico">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/gggl_fbgg.css">
	<script type="text/javascript" src="../../js/jquery-1.8.3.min.js"></script>
	<script>
		$(function(){
			$("body").click(function() {
              	$('#f1').hide();
              	$('#f2').hide();
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
			$('#f1>div').click(function(){//循环给模块标题绑定点击事件
				$('#n1').html($(this).html());
				if($(this).html()=="新闻资讯"){
					$("input[name=noticeClassify]").val(1);	
				}else if($(this).html()=="通知公告"){
					$("input[name=noticeClassify]").val(2);
				}else if($(this).html()=="规章制度"){
					$("input[name=noticeClassify]").val(3);
				}else if($(this).html()=="行业动态"){
					$("input[name=noticeClassify]").val(4);
				}
				$('#f1').hide();
			});
			$('#f3>div').click(function(){//循环给模块标题绑定点击事件
				$('#t3+div').html($(this).html());
				$('#f3').hide();
			});
		});
		
		function cla(){
			var title=$("input[name=noticeKeyword]").val();
			if(title==null||title==""){
				$("#gjz").show();
				return false;
			}
			$("#gjz").hide();
			return true;
		}
		function titleF(){  
			var key=$("input[name=noticeTitle]").val();
			if(key==null||key==""){
				$("#zhuti").show();
				return false;
			}
			$("#zhuti").hide();
			return true;
		}
		function neirong(){  
			var count=$("input[name=noticeContent]").val();
			if(count==null||count==""){
				$("#neirong").show();
				return false;
			}
			$("#neirong").hide();
			return true;
		}
		function check(){
			if(cla()&titleF()&neirong()){
				document.forms[0].submit();
			}
		}
	</script>
	<link rel="stylesheet" type="text/css" href="css/editor_gecko.css">
	</head>
	<body id="colloaBody">
<table style="min-width: 960px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
  <tbody>
   <form class="formTaskflow" action="../../Notice.do" method="post">
   <input type="hidden" name="noticeState" value="审核中">
    <tr valign="top">
          <td id="colloaForm">
             <c:choose>
				<c:when test="${n!=null }">
					<input type="hidden" name="action" value="updates">
					<input type="hidden" name="noticeId" value="${n.noticeId }">
				</c:when>
				<c:otherwise>
	              <input type="hidden" name="action" value="add">
				</c:otherwise>             
             </c:choose>
              <table class="tableForm" style="margin-bottom: 20px; table-layout: fixed;" cellspacing="0" cellpadding="0" border="0">
                  <colgroup>
                <col width="60">
                <col>
                <col width="80">
                <col width="120">
                </colgroup>
                  <tbody>
                  <tr>
                    <input type="hidden" id="noticePerson" name="noticePerson">
                      <td align="right">&nbsp;步骤:</td>
                      <td><span id="mapping.dbf.procXSource">${n.noticeState==null?'起草':n.noticeState }</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人: <span id="mapping.dbf.responsorSource">${n.noticePerson==null?s_emp.emp_name:n.noticePerson }</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                       <td style="text-align: right;">&nbsp;优先级:</td>
              <td><input id="dbf.priority" value="0" <c:if test="${n.noticeType==0 }">checked="checked"</c:if>  <c:if test="${n==null }">checked="checked"</c:if> name="noticeType" autocomplete="off" type="radio">
                低
                <input id="dbf.priority" value="1" <c:if test="${n.noticeType==1 }">checked="checked"</c:if> name="noticeType" autocomplete="off" type="radio">
                中
                <input id="dbf.priority" value="2" <c:if test="${n.noticeType==2 }">checked="checked"</c:if> name="noticeType" autocomplete="off" type="radio">
                高</td>
                    </tr>
                </tbody>
                </table>
              <table class="tableListBorder" style="table-layout: fixed;" summary="" cellspacing="0" cellpadding="0" border="0">
                  <colgroup>
                <col width="10%">
                <col width="100%">
                <col>
                </colgroup>
                  <tbody>
                  <tr>
                      <td class="fieldLable"><b style="color: red;">*</b>分类</td>
                      <td id="dbf.psid2" dbf.key="151010" dbf.source="select sid,name,psid,stype from categoryX where modello='categoryX.taskX.bulletin' and statusX>0 order by sortId,name" dbf.type="required!0">
                      <span id="n1" style="padding-right: 150px;">${n==null?'新闻资讯':'' }
                      ${n.noticeClassify==1?'新闻资讯':'' }
              		  ${n.noticeClassify==2?'通知公告':'' }
              		  ${n.noticeClassify==3?'规章制度':'' }
              		  ${n.noticeClassify==4?'行业动态':'' }</span><img id="t1" src="css/fieldSource.gif">
                      <input type="hidden" name="noticeClassify" value="${n!=null?n.noticeClassify:1 }"></td>
                     </tr>
                    <tr>
                    	 	<td class="fieldLable"><b style="color: red;">*</b>关键字</td>
                      		<td id="dbf.keyInfo"><input id="noticeKeyword" name="noticeKeyword" value="${n.noticeKeyword }" required="required" size="33px" style="border: 0px none;background-color: rgb(243, 250, 255);" placeholder="请填写关键字" onblur="cla()"><span id="gjz" style="background-color: #fffccc;color: red;display: none;">&nbsp;&nbsp;&nbsp;&nbsp;关键字不能为空</span></td>
                    		<td></td>
                    </tr>
					<tr  >
                  		<td class="fieldLable"><b style="color: red;">*</b>主题内容</td>
                      	<td colspan="3" id="dbf.keyInfo"><input autocomplete="off"  name="noticeTitle" id="e.dbf.subject"  size="45px" style="border: 0px none;background-color: rgb(243, 250, 255);height: 25px; font-size: 20px;color: red" value="${n.noticeTitle }"  required="required" placeholder="[在这里输入主题]" onblur="titleF()"><span id="zhuti" style="color: red;display: none;background-color: #fffccc;">&nbsp;&nbsp;&nbsp;&nbsp;主题不能为空</span></td>
                    </tr>                    
                </tbody>
                </table>
              <table cellspacing="0" cellpadding="0" border="0">
                  <tbody>
                  
                  <tr>
                      <td id="content" style="vertical-align: top;" dbf.source="" dbf.type="html" >
                      <link rel="stylesheet" type="text/css" href="../../bjq/dist/css/wangEditor.min.css">
                      <style type="text/css">
						#editor-trigger {
							height: 400px;
							/*max-height: 500px;*/
						}
						.container {
							width: 1000px;
							margin: 0 auto;
							position: relative;
						}
					</style>
                      <div id="editor-container" class="container">
                          <div id="editor-trigger" >
                          	${n.noticeContent }
                        </div>
                        </div>
                      <input type="hidden" name="noticeContent" value="${n.noticeContent }">
                     
                      <script type="text/javascript" src="../../bjq/dist/js/wangEditor.js"></script> 
                      <!--<script type="text/javascript" src="../dist/js/wangEditor.min.js"></script>--> 
                      <script type="text/javascript">
        // 阻止输出log
        // wangEditor.config.printLog = false;

        var editor = new wangEditor('editor-trigger');
        // 上传图片
        editor.config.uploadImgUrl = '/upload';
        editor.config.uploadParams = {
            // token1: 'abcde',
            // token2: '12345'
        };
        editor.config.uploadHeaders = {
            // 'Accept' : 'text/x-json'
        }
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
			$("input[name=noticeContent]").val(html);
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
    						<span style="color: red;display: none;background-color: #fffccc;" id="neirong" >
                          		&nbsp;请输入要发送的内容
                          	</span>
    	</td>
                   </div>
                    </tr>
                </tbody>
                </table>	
           
        <script language="javaScript">/* Code removed by ScrapBook */</script><br>
        <div id="_vWorkflowActionsShow" align="right"><a  onClick="check()" class="button">提交审核</a><a href="javascript:history.back()" class="button">取消</a></div>
        <br>
        <table style="table-layout: fixed;" cellspacing="0" cellpadding="0" border="0">
              <colgroup>
          <col width="60%">
          <col width="2%">
          <col>
          </colgroup>
              <tbody>
            <tr valign="top">
                  <td class="boxBorder"><div style="padding: 2px 10px;">
                  <div style="float: right;"><a href="../js/image.jsp">› 显示流程图</a></div>
                  【处理过程】</div>
                  <c:forEach var="b" items="${billList }">
                 	<div style="padding: 5px 10px 0px; border-top: 1px dotted rgb(221, 221, 221);"><img src="css/userX0.gif"> ${b.assignee }<span class="textGray">( <fmt:formatDate type="both" 
            value="${b.endTime }" />)</span></div>
                	<div style="padding: 0px 10px 5px 30px;">[<b>${b.name }</b>] </div>
                	<div style="padding: 0px 10px 5px 30px;"></div>
                  </c:forEach>
                </td>
                  <td></td>
                  <td><div class="boxBorder">
                      <div style="padding: 2px 10px; border-bottom: 1px dotted rgb(221, 221, 221); margin-bottom: 5px;">【父事务】</div>
                    </div>
                <div class="boxBorder">
                      <div style="padding: 2px 10px; border-bottom: 1px dotted rgb(221, 221, 221); margin-bottom: 5px;">【子事务】</div>
                    </div></td>
                </tr>
          </tbody>
            </table></td>
        </tr>
  </tbody>
    </table>
<div id="f2" style="position: absolute; z-index: 10; background-color: rgb(255, 255, 255); cursor: default; border: 1px solid rgb(221, 221, 221); box-sizing: border-box; padding: 5px; overflow-x: hidden; overflow-y: auto; height: 250px; width: 350px; top: 126px; left: 143px; display: none;">
 </div>
<div id="f1" style="position: absolute; z-index: 10; background-color: rgb(255, 255, 255); cursor: default; border: 1px solid rgb(221, 221, 221); box-sizing: border-box; padding: 5px; overflow-x: hidden; overflow-y: auto; height: 250px; width: 350px; top: 101px; left: 143px; display: none;">
      <div id="151010" style="height: auto; padding-left: 5px;" class="">新闻资讯</div>
      <div id="151020" style="height: auto; padding-left: 5px;" class="">通知公告</div>
      <div id="151030" style="height: auto; padding-left: 5px;" class="">规章制度</div>
      <div id="151040" style="height: auto; padding-left: 5px;" class="">行业动态</div>
    </div>
<div id="f3" style="position: absolute; z-index: 10; background-color: rgb(255, 255, 255); cursor: default; border: 1px solid rgb(221, 221, 221); box-sizing: border-box; padding: 5px; overflow-x: hidden; overflow-y: auto; height: 250px; width: 500px; top: 126px; left: 603px; display: none;">
      <iframe src="css/gggl_fbgg_index_11.html" style="width: 100%; height: 95%;" frameborder="0"></iframe>
    </div>
    </form>
</body>
</html>
