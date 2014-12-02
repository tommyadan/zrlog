<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<c:choose>
	<c:when test="${empty requestScope.data}">
		<c:set var="pageLevel" value="1" scope="request"/>
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
		<c:set var="pageLevel" value="2" scope="request"/>
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
        
          
            
              
                <!--<div class="slider-warp">
<div id="slides" class="slides">
  <img src="/files/slides/banner_slider_01.jpg" alt="" width="700" height="210" />
  <img src="/files/slides/banner_slider_02.jpg" alt="" width="700" height="210" />
  <img src="/files/slides/banner_slider_03.jpg" alt="" width="700" height="210"/>
</div>
</div>-->
                <article class="entry">

  
  <p class="float-left article-image"><a rel="bookmark" href="http://sheshui.me/blogs/miss-guangzhou"><img src="http://sheshui.me/files/uploads/796t.jpg" alt="" width="240" height="150" /></a></p><h2 class="post-title"><a rel="bookmark" href="http://sheshui.me/blogs/miss-guangzhou">爱骑行，忆羊城</a></h2>


  <div class="content">
       
    	<p>广州一自行车友雯哥打我电话，说这个周末我们这些玩车的老人家一起去火炉山烧烤… 看来我又得缺席了… 雯哥其实是女的，因为霸气汉子，所以车友圈的人都称其为雯哥，后来我觉得还是称其为小雯更恰当，其实人家是一很漂亮的妹纸来着。而我叫涉水，我们在广州山地车圈子里面还是有一帮子朋友的～离开一年多，真心想念那个熟悉的环境与圈子，我已经好久没踩车了，也好久没冲山了～</p>
  
  </div>
  <div class="meta">
  <p class="category"><a rel="tag" href="http://sheshui.me/category/note/">点滴记录 Note</a> </p>
  <p class="published"><time datetime="2014-10-30">/ 2014-10-30</time></p>
  <p class="commentlink"><a href="http://sheshui.me/blogs/miss-guangzhou#comment-list" class="comments_invite">查看评论 [4]</a></p>
  </div> 

</article><article class="entry">

  
  <h2 class="post-title"><a rel="bookmark" href="http://sheshui.me/blogs/this-moment-for-which-moment">这一刻，又在为哪一刻？</a></h2>


  <div class="content">
       
    	<p>引用Chinese Tea里面一篇日志标题格式，原因是自己没那么文艺，更没法向对方博主那样有深度的生活阅历能写出一个具有文艺范的日志标题。摄影、旅行确实见证了一个人的成长，很喜欢对方的博客。喜欢的另一个原因是都采用Textpattern 搭建，准确说Textpattern是个好东西，虽然Wordpress很强劲，也很流行，但两年前我还是决定放弃而转向古老的Textpattern。不知道是否是一种倒退，但我确实很喜欢她，Textpattern美妙无比… 有时我们不能对追随大众的，我们应该追随自己内心的，或许这也是我们所缺失的独立思维。</p>
  
  </div>
  <div class="meta">
  <p class="category"><a rel="tag" href="http://sheshui.me/category/note/">点滴记录 Note</a> </p>
  <p class="published"><time datetime="2014-10-20">/ 2014-10-20</time></p>
  <p class="commentlink"><a href="http://sheshui.me/blogs/this-moment-for-which-moment#comment-list" class="comments_invite">查看评论 [2]</a></p>
  </div> 

</article><article class="entry">

  
  <p class="float-left article-image"><a rel="bookmark" href="http://sheshui.me/blogs/guangzhou-biz-trip-0818"><img src="http://sheshui.me/files/uploads/787t.jpg" alt="" width="240" height="150" /></a></p><h2 class="post-title"><a rel="bookmark" href="http://sheshui.me/blogs/guangzhou-biz-trip-0818">广州出差小记3</a></h2>


  <div class="content">
       
    	<p>恰逢暑运结束，学生返校，火车票及其紧张，也让我感慨中国人确实多，或者是火车运力真心不足。而给自己定下的愿望是再也不要乘坐火车了。首先，路途时间不受自己把控；其二，晚点是正常的，哪怕晚点4～5小时，而不晚点是不正常的；其三，受不了车站的脏乱差以及在火车上也充斥着的各种酸味，这种味融合包括袜子脚臭、方便面、烟味等融于一体。</p>
  
  </div>
  <div class="meta">
  <p class="category"><a rel="tag" href="http://sheshui.me/category/note/">点滴记录 Note</a> </p>
  <p class="published"><time datetime="2014-08-24">/ 2014-08-24</time></p>
  <p class="commentlink"><a href="http://sheshui.me/blogs/guangzhou-biz-trip-0818#comment-list" class="comments_invite">查看评论 [1]</a></p>
  </div> 

</article><article class="entry">

  
  <p class="float-left article-image"><a rel="bookmark" href="http://sheshui.me/blogs/play-guitar"><img src="http://sheshui.me/files/uploads/782t.jpg" alt="吉他" width="240" height="140" /></a></p><h2 class="post-title"><a rel="bookmark" href="http://sheshui.me/blogs/play-guitar">玩吉他</a></h2>


  <div class="content">
       
    	<p>玩吉他，在大学时期就萌生过的想法，目的很单纯也很简单，就是感觉抱着把吉他跟卖唱似的很容易让人新生羡慕眼光，这也是把妹泡妞的一大利器。第二次萌生玩吉他的想法是在部队时期，很多战友都玩，目的从打发寂寞无聊开始，慢慢成为大家的一种兴趣爱好&#8230;</p>
  
  </div>
  <div class="meta">
  <p class="category"><a rel="tag" href="http://sheshui.me/category/coffee-music/">咖啡音乐 Coffee Music</a> </p>
  <p class="published"><time datetime="2014-08-10">/ 2014-08-10</time></p>
  <p class="commentlink"><a href="http://sheshui.me/blogs/play-guitar#comment-list" class="comments_invite">查看评论 [2]</a></p>
  </div> 

</article><article class="entry">

  
  <p class="float-left article-image"><a rel="bookmark" href="http://sheshui.me/blogs/fulwin2-driving-memory"><img src="http://sheshui.me/files/uploads/770t.jpg" alt="" width="240" height="140" /></a></p><h2 class="post-title"><a rel="bookmark" href="http://sheshui.me/blogs/fulwin2-driving-memory">风云2三万公里纪念</a></h2>


  <div class="content">
       
    	<p>买车后已经跑了三万公里了，时间过得很快，有时公里数也好、时间也好或许只是个数字，但我想应该借此机会给自己过往用车生活的一些回顾。</p>
  
  </div>
  <div class="meta">
  <p class="category"><a rel="tag" href="http://sheshui.me/category/autolife/">用车生活 Auto Life</a> </p>
  <p class="published"><time datetime="2014-06-09">/ 2014-06-09</time></p>
  <p class="commentlink"><a href="http://sheshui.me/blogs/fulwin2-driving-memory#comment-list" class="comments_invite">查看评论 [3]</a></p>
  </div> 

</article><article class="entry">

  
  <p class="float-left article-image"><a rel="bookmark" href="http://sheshui.me/blogs/blog-gz-feeling"><img src="http://sheshui.me/files/uploads/766t.jpg" alt="" width="240" height="150" /></a></p><h2 class="post-title"><a rel="bookmark" href="http://sheshui.me/blogs/blog-gz-feeling">广州出差小记</a></h2>


  <div class="content">
       
    	<p>饭局就剩我们一帮超级男银吃着清单的茶点、喝着百威+普洱，却在重口味的相互黑… 年轻人在一起真是欢乐多！小白是在我们几个都吃完饭才从江南大道那边赶到体育西路…</p>
  
  </div>
  <div class="meta">
  <p class="category"><a rel="tag" href="http://sheshui.me/category/note/">点滴记录 Note</a> </p>
  <p class="published"><time datetime="2014-04-21">/ 2014-04-21</time></p>
  <p class="commentlink"><a href="http://sheshui.me/blogs/blog-gz-feeling#comment-list" class="comments_invite">查看评论 [2]</a></p>
  </div> 

</article><article class="entry">

  
  <p class="float-left article-image"><a rel="bookmark" href="http://sheshui.me/blogs/suunto-vector-show"><img src="http://sheshui.me/files/uploads/761t.jpg" alt="Suunto" width="240" height="150" /></a></p><h2 class="post-title"><a rel="bookmark" href="http://sheshui.me/blogs/suunto-vector-show">Suunto Vector&#160;户外腕表</a></h2>


  <div class="content">
       
    	<p>2011年12月24日购入Suunto Vector系列，如今已使用两年，更换过一次电池。之前 <a href="http://sheshui.me/blogs/20111224-suunto-vector">关于Suunto的介绍博客</a> ，查看太平洋汽车最汽车板块的发帖 <a href="http://bbs.pcauto.com.cn/topic-4246473.html">不需高端大气，只要低调内涵， Suunto Vector 首秀</a>  </p>
  
  </div>
  <div class="meta">
  <p class="category"><a rel="tag" href="http://sheshui.me/category/photos/">影像记录 Photos</a> </p>
  <p class="published"><time datetime="2013-11-24">/ 2013-11-24</time></p>
  <p class="commentlink"><a href="http://sheshui.me/blogs/suunto-vector-show#comment-list" class="comments_invite">查看评论 [5]</a></p>
  </div> 

</article><article class="entry">

  
  <p class="float-left article-image"><a rel="bookmark" href="http://sheshui.me/blogs/self-driving-pingtan-s3"><img src="http://sheshui.me/files/uploads/733t.jpg" alt="平潭,厦门" width="240" height="150" /></a></p><h2 class="post-title"><a rel="bookmark" href="http://sheshui.me/blogs/self-driving-pingtan-s3">[厦门篇] 2013 国庆自驾游 厦大、沙滩很美</a></h2>


  <div class="content">
       
    	<p>偶这次途径厦门，没有去鼓浪屿，而且时间是选择在假期结束前两天，此时大部分游客已经开始返程，所以岛内稍显不会那么拥挤，不会人头颤动，不会交通堵塞…  环岛自驾，有条件有时间自行车环岛一圈最好不过… 强烈建议！</p>
  
  </div>
  <div class="meta">
  <p class="category"><a rel="tag" href="http://sheshui.me/category/travel/">旅行生活 Travel</a> </p>
  <p class="published"><time datetime="2013-10-25">/ 2013-10-25</time></p>
  <p class="commentlink"><a href="http://sheshui.me/blogs/self-driving-pingtan-s3#comment-list" class="comments_invite">查看评论 [5]</a></p>
  </div> 

</article><article class="entry">

  
  <p class="float-left article-image"><a rel="bookmark" href="http://sheshui.me/blogs/self-driving-pingtan-s2"><img src="http://sheshui.me/files/uploads/732t.jpg" alt="平潭" width="240" height="150" /></a></p><h2 class="post-title"><a rel="bookmark" href="http://sheshui.me/blogs/self-driving-pingtan-s2">[福州篇] 2013 国庆自驾游&#160;西湖公园</a></h2>


  <div class="content">
       
    	<p>偶算是第一次往福州游玩，不过我对城市兴趣不大，除了人多车多没有太多值得欣赏的地方。这一次也是老爸希望去，而且也迎合小孩的游玩需求。老爸是因为在这边当兵所以一直向往故地重游，希望回去看看他当年游玩的西湖、鼓山，不过后来终究因为时间原因没能去成鼓山游玩…</p>
  
  </div>
  <div class="meta">
  <p class="category"><a rel="tag" href="http://sheshui.me/category/travel/">旅行生活 Travel</a> </p>
  <p class="published"><time datetime="2013-10-14">/ 2013-10-14</time></p>
  <p class="commentlink"><a href="http://sheshui.me/blogs/self-driving-pingtan-s2#comment" class="comments_invite">去评论一下</a></p>
  </div> 

</article><article class="entry">

  
  <p class="float-left article-image"><a rel="bookmark" href="http://sheshui.me/blogs/self-driving-pingtan-s1"><img src="http://sheshui.me/files/uploads/731t.jpg" alt="平潭" width="240" height="150" /></a></p><h2 class="post-title"><a rel="bookmark" href="http://sheshui.me/blogs/self-driving-pingtan-s1">[平潭篇] 2013 国庆自驾游&#160;海岛风情美图</a></h2>


  <div class="content">
       
    	<p>平潭位于福建省东部，与台湾隔海相望，是祖国大陆距离台湾岛最近的地方。<sup id="fnrev19883035955258f65ee8c0a" class="footnote"><a href="#fn19883035955258f65ee8c0a">1</a></sup>平潭，简称“岚”，俗称海坛，亦称海山，为福建省管辖的综合实验区，由以海坛岛为主的126个岛屿组成，是福建省第一大岛，我国第五大岛，是福建的“马尔代夫”，也是著名的渔业基地。</p>
  
  </div>
  <div class="meta">
  <p class="category"><a rel="tag" href="http://sheshui.me/category/travel/">旅行生活 Travel</a> </p>
  <p class="published"><time datetime="2013-10-12">/ 2013-10-12</time></p>
  <p class="commentlink"><a href="http://sheshui.me/blogs/self-driving-pingtan-s1#comment" class="comments_invite">去评论一下</a></p>
  </div> 

</article>
               
                        
                             
                 
        
        <div class="pager-nav">
          
          <a href="http://sheshui.me/?pg=2"><p class="prev">下一页</p></a>          
        </div>
                          
      </section>

	</c:otherwise>
</c:choose>
<jsp:include page="plugs.jsp"></jsp:include>
    </div>
<jsp:include page="footer.jsp"></jsp:include>
