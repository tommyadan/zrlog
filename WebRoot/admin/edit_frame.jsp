<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"admin/";
request.setAttribute("url", request.getScheme()+"://"+request.getHeader("host")+request.getContextPath());
request.setAttribute("suburl", request.getRequestURL().substring(basePath.length()));
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
  	<base href="<%=basePath%>">
  	<c:set var="webs" value="${init.webSite}" scope="session"></c:set>

	<head>
		<meta charset="utf-8" />
		<title>${webs.title} - 后台管理 </title>
		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

		<link rel="stylesheet" href="assets/css/ace.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />

		<script src="assets/js/jquery-2.0.3.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/typeahead-bs2.min.js"></script>
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>
		<script src="assets/js/ace-extra.min.js"></script>
	</head>
<link rel="stylesheet" href="editor/themes/default/default.css" />
<script charset="utf-8" src="editor/kindeditor-min.js"></script>
<script charset="utf-8" src="editor/lang/zh_CN.js"></script>
<script>
	KindEditor.ready(function(K) {
		var editor1 = K.create('textarea[name="content"]', {
			uploadJson : '${url}/admin/log/upload',
			fileManagerJson : 'file/manage/',
			allowFileManager : true,
			
			afterBlur: function(){this.sync();
			{
				
			}}
			
		});
		var editor2 = K.create('textarea[name="digest"]', {
			resizeType : 1,
			uploadJson : '${url}/admin/log/upload',
			fileManagerJson : 'file/manage',
			allowFileManager : true,
			afterBlur: function(){this.sync();
			{
				
			}},
			items : [
				'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
				'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
				'insertunorderedlist', '|', 'emoticons', 'image', 'link','insertfile']
		});
	});
</script>

<script type="text/javascript">

	function checkSubmit() {
		if(document.getElementById("title").value=="" || document.getElementById("content").value=="")
		{
			document.getElementById("msg").innerHTML="文章的标题和内容都不能为空。。。。。";
			return;
		}
		document.getElementById("type").value = "add";
		document.getElementById("addorPre").submit();
	}
	function preview() {
		document.getElementById("type").value = "preview";
		document.getElementById("addorPre").submit();
	}
	function update() {
		document.getElementById("type").value = "update";
		document.getElementById("addorPre").submit();
	}
</script>
<script type="text/javascript">
	
	$(function(){
		var $tags=$("#inp");
		$(".tag").click(function(e){
			$tags.val($tags.val()+$(this).text()+",");
			$(this).remove();
			e.preventDefault();
		});
		$("#translate").click(function(){
			$.post('<%=request.getAttribute("url")%>/post/api/translate',{"key":$("#title").val()},function(data){
				var d=$.parseJSON(data);
				if($("#result").length==0){
					$("#translate").after("<input name='alias' id='result' value='"+d.translate+"'>");
				}
				else{
					$("#result").attr("value",d.translate);
				}
			});
		});
		$("#update").click(function(){
			$.post('${url}/admin/log/update',$('#addorPre').serialize(),function(data){
				if(data.add){
					alert("发表成功");
				}
			});
		});
			
	});
</script>
	<div class="page-content">
		<div class="page-header">
			<h1>
				文章
				<small>
					<i class="icon-double-angle-right"></i>
					文章编辑
				</small>
			</h1>
		</div><!-- /.page-header -->
	<div id="msg"></div>
	<form class="form-horizontal" role="form" id="addorPre" method="post">
		<input type="hidden" id="type">
	  <c:choose>
	  	<c:when test="${not empty requestScope.log}">
	  		<input type="hidden" value="${log.logId}" name="logId">
		    <input name="title" id="title" size="60" maxlength="60"  value="${log.title}" class="col-xs-10 col-sm-5" type="text" placeholder="请输入文章标题"></input>
		    <div class="col-xs-3">
		    <select name="typeId" id="form-field-select-1" class="form-control">
			  <c:forEach items="${init.types}" var="type">
			    <option value="${type.id}">${type.typeName}</option>
			  </c:forEach>
			</select>
			</div>
			<hr>
			 <textarea
						name="content" cols="100" rows="8"  id="content"
						style="width:100%; height:500px; visibility:hidden; z-index: 9999;">${log.content}</textarea>

	<hr/>


	<input value="${log.keywords}" name="keywords" id="inp" size="60" maxlength="60" /><br/>
			<c:forEach items="${init.tags}" var="tags">
				<a class="tag">${tags.text}</a>&nbsp;
			</c:forEach>
			<hr/>
		<div class="col-xs-3">
		<label>
			<input class="ace ace-switch ace-switch-6" type="checkbox" checked="checked" name="canComment">
			<span class="lbl">&nbsp;能发布评论吗</span>
		</label>
		
	</div>
	<div class="col-xs-3">
		<label>
			<input class="ace ace-switch ace-switch-6" type="checkbox"  name="recommended">
			<span class="lbl">&nbsp;推荐吗</span>
		</label>
	</div>
					<textarea name="digest" cols="100" rows="8"  id="digest" style="width:100%; height:180x; visibility:hidden; z-index: 9999;">${log.digest}</textarea>
					<div class="clearfix form-actions">
						<div class="col-md-offset-3 col-md-9">
							<button class="btn btn-info" id="update" type="button" onclick="update()">
								<i class="icon-ok bigger-110"></i>
								提        交
							</button>

							&nbsp; &nbsp; &nbsp;
							<button class="btn" type="reset" onClick="preview()">
								<i class="icon-undo bigger-110"></i>
								预览
							</button>
						</div>
					</div>
	  	</c:when>
	    </c:choose>
	</form>
	
<jsp:include page="include/footer.jsp"/>