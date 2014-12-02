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
        
          <article>

  


  <h1 class="post-title">${log.title}</h1>


  <div class="meta">
  <p class="category"><a href="http://sheshui.me/category/note/" rel="tag">${log.typeName}</a> </p>
  <p class="published"><time pubdate="pubdate" datetime="2014-08-24">/ 2014-08-24</time></p>
  <p class="permalink">/ <a href="http://sheshui.me/blogs/guangzhou-biz-trip-0818" rel="bookmark">Permalink</a></p>
  </div>
  <div class="content">
  	${log.content }
  </div>
  
  <p style="color:#D4D4D4">最后更新：2014-10-12 15:06</p>
  <p style="color:#D4D4D4">&mdash;&mdash; 原创内容，转载请注明：[ 文章转载自：涉水的博客 <a style="color:#D4D4D4" href="http://sheshui.me">http://sheshui.me</a> ] &mdash;&mdash;</p>
        <div class="pager-nav">
          <a title="随记：捣腾" href="http://sheshui.me/blogs/daoteng" rel="prev"><p class="prev">上一篇：随记：捣腾</p></a>
          <a title="给贝贝的一封信" href="http://sheshui.me/blogs/to-beibei-a-letter" rel="next"><p class="next">下一篇：给贝贝的一封信</p></a>
        </div>
                          
      </section>
	</c:otherwise>
</c:choose>
<jsp:include page="plugs.jsp"></jsp:include>
</div>		 
<jsp:include page="footer.jsp"></jsp:include>