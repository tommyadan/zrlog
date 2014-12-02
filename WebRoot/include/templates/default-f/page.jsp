<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
   <section class="row">
   		<c:set var="pageLevel" value="1" scope="request"/>
<c:choose>
	<c:when test="${empty requestScope.data}">
		<section class="col-md-8">
		<c:set var="pageLevel" value="1" scope="request"/>
			<!--首页幻灯片-->
								<header class="archive-header well">
						<h1 class="archive-title">
							搜索结果：${sessionScope.key}						</h1>
						<div class="navbar navbar-default">
							<form action="${rurl }post/search" method="post" id="searchform" role="search" class="navbar-form">
								<div class="input-group">
									<input type="text" id="key" name="s" value="${sessionScope.key}" class="form-control">
									<span class="input-group-btn">
									<button id="searchsubmit" class="btn btn-danger" type="submit"> 搜 索 </button>
									</span>
								</div>
							</form>
						</div>
					</header>
						<!--首页文章列表模块-->
            			<article class="alert alert-warning">非常抱歉，没有相关文章。</article>
						<!--首页文章列表模块-->
			<!--分页-->
			        </section>
	</c:when>
	<c:otherwise>

		<!--[if lt IE 8]>
		<div id="ie-warning" class="alert alert-danger fade in visible-lg">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<i class="fa fa-warning"></i> 请注意，本博客不支持低于IE8的浏览器，为了获得最佳效果，请下载最新的浏览器，推荐下载 <a href="http://www.google.cn/intl/zh-CN/chrome/" target="_blank"><i class="fa fa-compass"></i> Chrome</a>
            </div>
		<![endif]-->
	        <section class='col-md-8' >
	        <c:if test="${not empty  tipsType}">
	        <header class="archive-header well">
			<h1 class="archive-title">
				${tipsType}目录：${tipsName}</h1>
				以下是与${tipsType} “${tipsName}” 相关联的文章
			</header>
			</c:if>
			<!--首页幻灯片-->
			<!--首页文章列表模块-->
			<c:if test="${not empty requestScope.data}">
				<c:forEach var="log" items="${requestScope.data.rows}">
            <article class="well clearfix">
	<header class="entry-header">
				<h1 class="entry-title">
			<a href="${rurl}post/${log.alias}" title="${log.title}">
				${log.title}
			<c:if test="${log.recommended}"><span class="label label-primary entry-tag">置顶</span>	</c:if>				
			<c:if test="${log.hot}"><span class="label label-danger entry-tag">HOT</span>	</c:if>						
			</a>
		</h1>
		<div class="clearfix entry-meta">
			<span class="pull-left">
				<time class="entry-date fa fa-calendar" datetime="${log.releaseTime}">&nbsp;${log.releaseTime.year+1900}年${log.releaseTime.month+1}月${log.releaseTime.date}日</time>
				<span class="dot">|</span>
				<span class="categories-links fa fa-folder-o"> <a href="${rurl}post/sort/${log.typeAlias}" rel="category tag">${log.typeName}</a></span>
				<!-- <span class="dot">|</span>
				<span class="fa fa-user"> <a href="http://9iphp.com/author/Specs" title="由Specs发布" rel="author">Specs</a></span> -->
			</span>
			<span class="visible-lg visible-md visible-sm pull-left">
				<span class="dot">|</span>
				<span class="fa fa-comments-o comments-link"> <a href="${rurl}post/${log.alias}#comments"> ${log.commentSize} 条评论</a></span>
				<span class="dot">|</span>
				<span class="fa fa-eye"> ${log.click} views</span>
			</span>
		</div>

	</header>
	<div class="entry-summary entry-content clearfix">
		${log.digest}<br/>
	</div>
	<footer class="entry-footer clearfix visible-lg visible-md visible-sm">
		<div class="pull-left footer-tag">
			<c:if test="${not empty log.keywords}"><c:forTokens
									items="${log.keywords}" delims="," var="tag">
									<a href="${rurl}post/tag/${tag}" rel="tag">${tag}</a>&nbsp;</c:forTokens>
		    </c:if>
		</div>


		<a class="pull-right more-link" href="${rurl}post/${log.alias}" title="阅读全文">阅读全文&raquo;</a>
	</footer>
</article>
</c:forEach>
</c:if>
			<!--首页文章列表模块-->
			<!--分页-->
			<c:if test="${requestScope.data.total>1}">
			<ul class='pagination pull-right'>
				<c:if test="${requestScope.data.page>1}">
				<li><A title="跳转到第一页" class="extend" href="${rurl}${requestScope.yurl}1">« </A></li>
				<li><A href="${rurl}${requestScope.yurl}${requestScope.data.page-1}"><</A></li>
				</c:if>
				<c:choose>
				<c:when test="${requestScope.data.total>11}">
					<c:choose>
						<c:when test="${requestScope.data.page<3 or requestScope.data.total-4<requestScope.data.page}">
							<c:forEach begin="1" end="3" step="1" var="i">
								<li <c:if test="${i eq requestScope.data.page}">class="active"</c:if>><A  href="${rurl}${requestScope.yurl}<c:out value="${i}"></c:out>"><c:out value="${i}"></c:out></a>
							</c:forEach>
						</c:when>

						<c:otherwise>
							<c:forEach begin="${requestScope.data.page-2}" end="${requestScope.data.page}" step="1" var="i">
								<li <c:if test="${i eq requestScope.data.page}">class="active"</c:if>><A  href="${rurl}${requestScope.yurl}<c:out value="${i}"></c:out>"><c:out value="${i}"></c:out></A></li>
							</c:forEach>
						</c:otherwise>
					</c:choose>
					<c:forEach begin="${requestScope.data.total-3}" end="${requestScope.data.total}"
					step="1" var="i">
					<li <c:if test="${i eq requestScope.data.page}">class="active"</c:if>><A  href="${rurl}${requestScope.yurl}<c:out value="${i}"></c:out>"><c:out value="${i}"></c:out></A></li>
				</c:forEach>
				</c:when>
				<c:otherwise>
				<c:forEach begin="1" end="${requestScope.data.total}"
					step="1" var="i">
						<li <c:if test="${i eq requestScope.data.page}">class="active"</c:if>><A  href="${rurl}${requestScope.yurl}<c:out value="${i}"></c:out>"><c:out value="${i}"></c:out></A></li>		
				</c:forEach>
				</c:otherwise>
				</c:choose>
				<c:if test="${requestScope.data.total ne requestScope.data.page}">
				<li><A href="${rurl}${requestScope.yurl}${requestScope.data.page+1}" title="下一页">&gt;</A></li>
				<li><A title="跳转到最后一页" class="extend" href="${rurl}${requestScope.yurl}${requestScope.data.total}">&raquo;</A></li></c:if>
			</ul>
			</c:if>
			
			</section>
</c:otherwise>
</c:choose>
			<jsp:include page="plugs.jsp"></jsp:include>
			
</div>
<jsp:include page="footer.jsp"></jsp:include>
