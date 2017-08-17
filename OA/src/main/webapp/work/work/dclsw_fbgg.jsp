<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/work/work/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/view.css">
<script type="text/javascript" src="../../js/jquery-1.8.3.min.js"></script>
<script>
	
</script>
<style>
/* Code tidied up by ScrapBook */
.cke {
	visibility: hidden;
}
</style>
<link rel="stylesheet" type="text/css" href="editor_gecko.css">
<script type="text/javascript">
	function check(id){
		if(id==2){
			$("#noticeState").val("发布中");
		}else if(id==1){
			$("#noticeState").val("撤除");
		}
			document.forms[0].submit();
	}
</script>
</head>
<body>
	<form class="formTaskflow" action="../../Notice.do?&action=update" method="post">
	<input type="hidden" id="noticeState" name="noticeState">
		<input type="hidden" id="noticeId" name="noticeId" value="${n.noticeId }">
	<table style="min-width: 950px; width: 100%; height: 100%;"
		cellspacing="0" cellpadding="0" border="0">
		<tbody>
			<tr valign="top">
				<td id="colloaForm"><div class="formTaskflowContainer">
						<form class="formTaskflow">
							<table class="tableForm"
								style="margin-bottom: 20px; table-layout: fixed;"
								cellspacing="0" cellpadding="0" border="0">
								<colgroup>
									<col width="60">
									<col>
									<col width="80">
									<col width="120">
								</colgroup>
								<tbody>
									<tr>
										<td align="right">&nbsp;步骤:</td>
										<td><span id="mapping.dbf.procXSource">${n.noticeState }</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人:
											<span id="mapping.dbf.responsorSource">${n.noticePerson }</span></td>
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
							<table class="tableListBorder" style="table-layout: fixed;"
								summary="" cellspacing="0" cellpadding="0" border="0">
								<colgroup>
									<col width="10%">
									<col width="35%">
									<col width="10%">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<td class="fieldLable"><b style="color: red;">*</b>分类</td>
										<td id="dbf.psid2" dbf.key="151010"
											dbf.source="select sid,name,psid,stype from categoryX where modello='categoryX.taskX.bulletin' and statusX>0 order by sortId,name"
											dbf.type="required!0"><img class="fieldGetValueBySource"
											src="css/fieldSource.gif">
											<div id="e.dbf.psid2Source">
                      ${n.noticeClassify==1?'新闻资讯':'' }
              		  ${n.noticeClassify==2?'通知公告':'' }
              		  ${n.noticeClassify==3?'规章制度':'' }
              		  ${n.noticeClassify==4?'行业动态':'' }</div> </td>
										<td class="fieldLable">关键字</td>
										<td id="dbf.keyInfo"><input id="e.dbf.keyInfo"
											class="fieldEditable" id="noticeKeyword" name="noticeKeyword" value="${n.noticeKeyword }"></td>
									</tr>
								</tbody>
							</table>
							<table cellspacing="10" cellpadding="0" border="0">
								<tbody>
									<tr>
										<td id="dbf.subject"
											style="font-size: 30px; font-weight: bold; color: rgb(204, 0, 0); text-align: center; line-height: 1;"
											dbf.source="" dbf.type="required"><input autocomplete="off"  name="noticeTitle" id="e.dbf.subject"  size="45px" style="text-align:center; border: 0px none;background-color: rgb(243, 250, 255);height: 30px; font-size: 30px;font-weight:800;color: red" value="${n.noticeTitle }"  required="required" placeholder="[在这里输入主题]" onblur="titleF()"><span id="zhuti" style="color: red;display: none;">&nbsp;&nbsp;&nbsp;&nbsp;主题不能为空</span></td>
									</tr>
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
    	</td>
                   </div>
                    </tr>
								</tbody>
							</table>
						</form>
					</div>
					<form method="post">
						<input id="viewState" name="viewState" type="hidden">
					</form>
					<script language="javaScript">
						/* Code removed by ScrapBook */
					</script><br>
				<div id="_vWorkflowActionsShow" align="right">
						<a onclick="check(1)"
							class="button">撤除</a><a onclick="check(2)" class="button">提交审核</a><a
							href="  javascript:history.go(-1)" class="button">取消</a>
					</div>
					<br>
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
											<a href="../../info/js/image.jsp">› 显示流程图</a>
										</div>
										【处理过程】
									</div>
									<c:forEach var="b" items="${billList }">
										<div
											style="padding: 5px 10px 0px; border-top: 1px dotted rgb(221, 221, 221);">
											<img src="css/userX0.gif"> 李萌 <span class="textGray">(2016/4/11
												13:13)</span>
										</div>
										<div style="padding: 0px 10px 5px 30px;">
											[<b>提交审核</b>]
										</div>
									</c:forEach>
									
									<div style="padding: 0px 10px 5px 30px;"></div>
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
					</table></td>
				<td>&nbsp;</td>
			</tr>
		</tbody>
	</table>
	</form>
</body>
</html>