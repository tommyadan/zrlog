<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<c:set var="pageLevel" value="1" scope="request" />
<c:choose>
	<c:when test="${empty log}">
		<div id="main">
			<section id="primary">
				<div id="content" role="main">
					<article id="post-0" class="post no-results not-found">
						<header class="entry-header">
							<h1 class="entry-title">未找到</h1>
						</header>
						<!-- .entry-header -->

						<div class="entry-content">
							<p>抱歉，没有符合您搜索条件的结果。请换其它关键词再试。</p>
							<form method="post" id="searchform" action="${rurl }post/search">
								<label for="s" class="assistive-text">搜索</label> <input
									type="text" class="field" name="key" id="s" placeholder="搜索" />
								<input type="submit" class="submit" name="submit"
									id="searchsubmit" value="搜索" />
							</form>
						</div>
						<!-- .entry-content -->
					</article>
					<!-- #post-0 -->


				</div>
				<!-- #content -->
			</section>
			<!-- #primary -->
	</c:when>
	<c:otherwise>
	<div class="main clearfloat">
		<section>
      <!--[if lt IE 9]>
      <div class="tips not-ie" id="tipsWrap">
        <span class="close" id="clostBtn" title="Close">关闭</span>
        <div class="tips-content">
          <span class="notice">为了您有更好的浏览体验，请升级使用以下浏览器：</span><span class="browsers"><a href="http://www.google.com/chrome" class="chrome" title="谷歌浏览器">Chrome</a><a href="http://www.mozilla.org/en-US/firefox/new/" class="ff" title="火狐">Firefox</a><a href="http://www.opera.com/download/" class="opera" title="Opera">Opera</a><a href="http://www.apple.com/safari/download/" class="safari" title="Safari">Safari</a></span>
        </div>
        <script>$('#clostBtn').click( function(){ $('#tipsWrap').css('display','none'); } ); </script>
      </div>
      <![endif]--> 
        
        <div style="background:rgba(255,255,255,1);">
        <article>
   <h1 class="post-title">${log.title}</h1>


  <div class="meta">
  <p class="category"><a href="${rurl}post/sort/${log.typeAlias}" rel="tag">${log.typeName}</a> </p>
  <p class="published">/<time datetime="${log.releaseTime}">&nbsp;${log.releaseTime.year+1900}年${log.releaseTime.month+1}月${log.releaseTime.date}日</time></p>
  </div>
  <div class="content">
  	<p>${log.content }</p>
  </div>
  
  <p style="color:#D4D4D4"> 转载请注明作者和出处(${webs.title})，并添加本页链接。<BR>原文链接:
							<A title="${log.title }" href="${rurl}post/${log.alias}"><SPAN style="color: rgb(51, 102, 255);" span="">${rurl}post/${log.alias}</SPAN></A></p>
        <div class="pager-nav">
          <a title="${log.lastLog.title}" href="${rurl }post/${log.lastLog.alias}" rel="prev"><p class="prev">上一篇：${log.lastLog.title}</p></a>
          <a title="${log.nextLog.title}" href="${rurl }post/${log.nextLog.alias}" rel="next"><p class="next">下一篇：${log.nextLog.title}</p></a>
        </div>
							</article> 
							 <c:choose>
							<c:when test="${log.canComment}">
								<c:choose>
									<c:when test="${init.webSite.user_comment_pluginStatus==1}">
										<!-- Duoshuo Comment BEGIN -->
										<div style="padding:20px;margin-bottom: 20px" class="ds-thread" data-thread-key="${log.logId}"
											data-title="${log.title}"
											data-url="${rurl}post/${log.alias}"></div>
										<script type="text/javascript">
						var duoshuoQuery = {short_name:"xchun"};
							(function() {
								var ds = document.createElement('script');
								ds.type = 'text/javascript';ds.async = true;
								ds.src = 'http://static.duoshuo.com/embed.js';
								ds.charset = 'UTF-8';
								(document.getElementsByTagName('head')[0] 
								|| document.getElementsByTagName('body')[0]).appendChild(ds);
							})();
							</script>
								<!-- Duoshuo Comment END -->
									</c:when>
									<c:otherwise>
									</c:otherwise>
								</c:choose>
								</c:when>  
							</c:choose>      
        </div>
      </section>
	</c:otherwise>
</c:choose>
<jsp:include page="plugs.jsp"></jsp:include>
<jsp:include page="footer.jsp"></jsp:include>