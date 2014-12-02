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

<div class="container">
   <section class="row">
			<c:set var="pageLevel" value="1" scope="request"/>
	        <section class='col-md-8' >
	        	<article id="post-1115" class="well clearfix entry-common">
	<header class="entry-header">
					<div class="entry-cover hidden-xs">
						
					</div>
				<p><a href="${rurl}" title="" data-original-title="首页"><i class="fa fa-home"></i>首页</a> » <a href="${rurl}post/sort/${log.typeAlias}" data-original-title="" title="">${log.typeName}</a>  » 正文</p>
		<h1 class="entry-title">
			${log.title }</h1>
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
	<div class="entry-content clearfix">
		<div class="pull-right ads_page_top"> 
<!-- Blog 侧边栏 -->
 </div> <P>${log.content}</P>
	</div>
	<footer class="entry-footer">
		<div class="footer-tag clearfix">
			<div class="pull-left">
				<c:if test="${not empty log.keywords}"><c:forTokens
									items="${log.keywords}" delims="," var="tag">
									<a href="${rurl}post/tag/${tag}" rel="tag">${tag}</a>&nbsp;</c:forTokens>
			    </c:if>
			</div>
		</div>
		<!--上一篇下一篇-->
		<ul class="pager clearfix">
			<li class="previous">
				<a href="${rurl }post/${log.lastLog.alias}" title="${log.lastLog.title}" rel="prev"><span class="meta-nav">&larr;</span> 上一篇</a> 
			</li>
			<li class="next">
				<a href="${rurl }post/${log.nextLog.alias}" title="${log.nextLog.title}" rel="next">下一篇 <span class="meta-nav">&rarr;</span> </a>
			</li>
		</ul>
		<!--上一篇下一篇-->
		<!-- 文章版权信息 -->
		<h6 class="copyright">
				<A title="${log.title}" href="${rurl}post/${log.alias}"
								target="_blank"><SPAN style="color: rgb(51, 102, 255);"
								span="">${log.title}</SPAN> </A> 转载请注明作者和出处(${webs.title})，并添加本页链接。<BR>原文链接:
							<A title="${log.title }" href="${rurl}post/${log.alias}"><SPAN
								style="color: rgb(51, 102, 255);" span="">${rurl}post/${log.alias}</SPAN>
				</A>
		</h6>
		<!-- 文章版权信息 -->
		
			        
					 
		<script type="text/javascript" >BAIDU_CLB_SLOT_ID = "903239";</script>
		<script type="text/javascript" src="http://cbjs.baidu.com/js/o.js"></script>
		<!-- JiaThis Button BEGIN -->
					<div class="jiathis_style_32x32">
						<a class="jiathis_button_tsina"></a> <a class="jiathis_button_tqq"></a>
						<a class="jiathis_button_qzone"></a> <a
							class="jiathis_button_renren"></a> <a
							class="jiathis_button_kaixin001"></a> <a
							class="jiathis_button_cqq"></a> <a class="jiathis_button_xianguo"></a>
						<a class="jiathis_button_douban"></a> <a
							class="jiathis_button_fav"></a> <a class="jiathis_button_email"></a>
						<a href="http://www.jiathis.com/share?uid=1703951"
							class="jiathis jiathis_txt jiathis_separator jtico jtico_jiathis"
							target="_blank"></a> <a class="jiathis_counter_style"></a>
					</div>
					<script type="text/javascript">
			var jiathis_config={
				data_track_clickback:true,
				summary:"",
				appkey:{
					"tsina":"3945409817",
					"tqq":"801275436"
				},
				hideMore:false
			}
			</script>
					<script type="text/javascript"
						src="http://v3.jiathis.com/code/jia.js?uid=1703951"
						charset="utf-8"></script>
					<!-- JiaThis Button END -->
					<BR> <BR>
					<div id="comments">
						<c:choose>
							<c:when test="${log.canComment}">
								<c:choose>
									<c:when test="${init.webSite.user_comment_pluginStatus==1}">
										<!-- Duoshuo Comment BEGIN -->
										<div class="ds-thread" data-thread-key="${log.logId}"
											data-title="${log.tilte }"
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
							<c:otherwise>
							</c:otherwise>
						</c:choose>
					</div>
		 
 
	</footer>
</article>

					 
			</section>
		<jsp:include page="plugs.jsp"></jsp:include>
	</section>
			
</div>
</c:otherwise>
</c:choose>
<jsp:include page="footer.jsp"></jsp:include>