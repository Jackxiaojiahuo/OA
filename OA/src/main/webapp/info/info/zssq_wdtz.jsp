<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/info/info/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>帖子 - 10oa</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="../css/font-awesome.min.css">
<link rel="stylesheet" href="css/zssq_wdtz.css">
<style>
/* Code tidied up by ScrapBook */
.cke {
	visibility: hidden;
}
</style>
	<script src="jquery-1.8.2.min.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(function(){
			$("#mode").click(function(){
				$("#editor-trigger").focus();
			});
		});
		function bjq(){
			document.forms[0].submit();
		}
	</script>
<link rel="stylesheet" type="text/css" href="css/editor_gecko.css">
</head>
<body id="colloaBody">
<table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
  <tbody>
    <tr valign="top">
      <form action="../../Topic.do" method="post">
      <input type="hidden" name="action" value="add2">
      <input type="hidden" name="rTId" value="${topics.tId }">
      <td id="colloaForm"><table cellspacing="0" cellpadding="0" border="0">
          <tbody>
            <tr valign="top">
              <td><div class="textBig" >${topics.tTitle }</div>
                点击(${topics.tClickCoount}) &nbsp;&nbsp; 回复(${topics.tReplyCount }) &nbsp;&nbsp; <img src="css/folder.png"> 
                	<c:choose>
                		<c:when test="${topics.tSId==1 }">合理化建议</c:when>
                		<c:when test="${topics.tSId==2 }">技术交流</c:when>
                		<c:when test="${topics.tSId==3 }">企业文化</c:when>
                		<c:otherwise>生活娱乐</c:otherwise>
                	</c:choose>
                	 &nbsp;&nbsp; <img src="css/lable.gif">${topics.tLabel }</td>
              <td align="right"><script language="javaScript">/* Code removed by ScrapBook */</script><a href="../../Topic.do?action=ssid&id=${topics.tId }" class="button1 button1L" title="刷新"><i class="fa fa-bolt fa-lg"></i></a><span id="oWorkflowList1"><c:if test="${topics.tUId==uid }"><a class="button1 button1M" href="../../Topic.do?action=del&id=${topics.tId }">删除</a></c:if></span><a href="../../Topic.do?action=ss" class="button1 button1R" title="关闭"><i class="fa fa-times-circle fa-lg"></i></a><script language="JavaScript">/* Code removed by ScrapBook */</script></td>
            </tr>
          </tbody>
        </table>
        <br>
        <table cellspacing="0" cellpadding="0" border="0">
          <colgroup>
          <col width="80px">
          <col width="20px">
          <col>
          <col width="20px">
          <col width="80px">
          </colgroup>
          <tbody>
            <tr valign="top">
              <td colspan="3"><div class="boxBorder1Caption">
              <c:forEach var="e" items="${emp }">
              	<c:if test="${e.emp_code==topics.tUId }">
              		${e.emp_name }
              	</c:if>
              </c:forEach>
              	 发表于 <fmt:formatDate value="${topics.tTime }" pattern="yyyy-MM-dd HH:mm:ss"/></div>
                <div class="boxBorder1Content">
                 ${topics.tContent }
                </div></td>
              <td><div class="boxBorder1Tip"></div></td>
              <td align="center"><img src="css/userPicture.gif"><br>
                楼主</td>
            </tr>
            <tr>
              <td></td>
              <td></td>
              <td><a id="mode" class="button">我来回复</a></td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <td colspan="5">&nbsp;</td>
            </tr>
            <c:forEach var="r" items="${rList }" varStatus="statu">
            	<c:choose>
            		<c:when test="${r.rUId==uid }">
	            		<tr valign="top">
			              <td></td>
			              <td></td>
			              <td><div class="boxBorder1Caption">
			               <c:forEach var="e" items="${emp }"  >
				              	<c:if test="${e.emp_code==r.rUId }">
				              		${e.emp_name }
				              	</c:if>
              				</c:forEach>
			              	 回复于<fmt:formatDate value="${r.rTime }" pattern="yyyy-MM-dd HH:mm:ss"/></div>
			                <div class="boxBorder1Content">
			                  <p>${r.rContent }</p>
			                </div></td>
			              <td><div class="boxBorder1Tip"></div></td>
			              <td align="center"><img src="css/userPicture.gif"><br>
			               我的回复<br> ${statu.index+1+num } 楼</td>
			            </tr>
            		</c:when>
            		<c:otherwise>
            			<tr valign="top">
			              <td align="center"><img src="css/userPicture.gif"><br>
			               <c:forEach var="e" items="${emp}">
				              	<c:if test="${e.emp_code==r.rUId }">
				              		${e.emp_name }
				              	</c:if>
              				</c:forEach><br>
			                ${statu.index+1+num }楼</td>
			              <td align="right"><div class="boxBorderTip"></div></td>
			              <td><div class="boxBorderCaption">
			             	 <c:forEach var="e" items="${emp}">
				              	<c:if test="${e.emp_code==r.rUId }">
				              		${e.emp_name }
				              	</c:if>
              				</c:forEach> 回复于 <fmt:formatDate value="${r.rTime }" pattern="yyyy-MM-dd HH:mm:ss"/></div>
			                <div class="boxBorderContent">
			                  <p>${r.rContent } </p>
			                </div></td>
			              <td colspan="2" align="center"><br>
			                <a class="button">最佳</a></td>
			            </tr>
            		</c:otherwise>
            	</c:choose>
            </c:forEach>
            <tr>
              <td>【累计回复】</td>
              <td></td>
              <td><script language="javaScript">/* Code removed by ScrapBook */</script>
                <div style="padding: 20px 0px;">
							<a href="../../Topic.do?action=ssid&id=${topics.tId }&num=0&index=1" class="button1 button1L" title="首页">&nbsp;<i
								class="fa fa-step-backward"></i></a><a href="../../Topic.do?action=ssid&id=${topics.tId }&num=${(page.index-1<=1)?0:((page.index*page.size)-(page.size*2))}&index=${page.index-1 eq 0 ? 1 : page.index-1}" class="button1 button1M"
								title="上页">&nbsp;<i class="fa fa-backward"></i></a><span
								class="button1M">
									共有 
									<c:choose>
										<c:when test="${page!=null }">${page.count}条记录，第 ${page.index}/${page.total==0?1:page.total} 页</c:when>
										<c:otherwise>0条记录，第 1/1 页</c:otherwise>
									</c:choose>
								</span><a href="../../Topic.do?action=ssid&id=${topics.tId }&num=${(page.index+1>=page.total)?((page.total*page.size)-(page.size)):((page.index*page.size)-(page.size*2))}&index=${(page.index+1 gt page.total ? page.total : page.index+1)==0?1:(page.index+1 gt page.total ? page.total : page.index+1)}"
								class="button1 button1M" title="下页">&nbsp;<i
								class="fa fa-forward"></i></a><a href="../../Topic.do?action=ssid&id=${topics.tId }&num=${(page.total*page.size)-(page.size)}&index=${page.total==0?1:page.total}" class="button1 button1R" title="尾页">&nbsp;<i
								class="fa fa-step-forward"></i></a>
						</div></td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <td colspan="5">&nbsp;</td>
            </tr>
            <tr valign="top">
              <td align="center"><img src="css/userPicture.gif"><br>
              <c:forEach var="e" items="${emp }"  >
	              	<c:if test="${e.emp_code==uid }">
	              		${e.emp_name }
	              	</c:if>
           	  </c:forEach><br>
                【我来回复】</td>
              <td></td>
              <td><textarea id="content" class="fieldEditable" style="height: 300px; padding: 10px; visibility: hidden; display: none;"></textarea>
                <div id="cke_content" class="cke_1 cke cke_reset cke_chrome cke_editor_content cke_ltr cke_browser_gecko" dir="ltr" role="application" aria-labelledby="cke_content_arialbl" lang="zh-cn">
                  <link rel="stylesheet" type="text/css" href="../../bjq/dist/css/wangEditor.min.css">
                  <style type="text/css">
						#editor-trigger {
							height: 400px;
							/*max-height: 500px;*/
						}
						.container {
							width: 100%;
							margin: 0 auto;
							position: relative;
						}
					</style>
                  <div id="editor-container" class="container">
                    <div id="editor-trigger" name="cc"> </div>
                    <!-- <textarea id="editor-trigger" style="display:none;">
            <p>请输入内容...</p>
        </textarea> --> 
                  </div>
                 
                    <input type="hidden" id="rContent" name="rContent">
                  <script type="text/javascript" src="../../bjq/dist/js/lib/jquery-1.10.2.min.js"></script> 
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
			$("input[name=rContent]").val(html);
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
    </script></div></td>
              <td colspan="2" align="center"><br>
                <a class="button" onclick="bjq()">提交</a></td>
            </tr>
          </tbody>
        </table>
        <script language="javaScript">/* Code removed by ScrapBook */</script></td>
    	</form>
    </tr>
  </tbody>
</table>
</body>
</html>
