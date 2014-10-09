<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>

     <div class="con">
  
   <div class="list">
   <c:forEach var="logs" items="${init.indexHotLog }">
  <div class="line"></div>
   <div class="list${logs.key.listId}">
        
        	 <h5 class="title"><span><a href="${rurl }post/sort/${logs.key.alias}${subfix}">${logs.key.typeName}</a></span></h5>
         <ul>
       		<c:forEach var="logf" items="${logs.value}">
            	<li>·  <a href="${rurl }post/${logf.alias}${subfix}">${logf.title}</a></li>
            </c:forEach>
            
          </ul>
          
    </div>
    </c:forEach>
       </div>
   <div class="bd_r">
      <div class="contact">
         <h3 class="title"><span>联系我们</span></h3>
         <ul>
            <li>区 域：成都三环内均可就近派车</li>
            <li>小 车：02886913100， 18980001789 </li>
            <li>中 车：02887777898(第三方公司） </li>
            <li><a href="/banjiadianhua/lianxi.html"><img src="${url}/skins/2011/images/zhixun.jpg" /></a></li>        
</ul>
      </div>
   </div>



      <div class="line"></div>

   <div class="list">
       
      <div class="listkh">
         <h3 class="title"><span>服务点评</span></h3>
        
          
         <ul>
            
            <li><b>少点点盐：</b>网上的搬家信息看花眼了，后来在微博上搜到的成都搬家公司，名字很Q，叫跑跑兔www.cdppt.com 淘宝评价也很赞，就选这只兔子吧。</li>
            <li><b>假装si鱼bobo：</b>每次搬家就想到跑跑兔 三年找了三次 绝对是成都性价比最高的 推荐给需要搬家的TX们</li>
            <li><b>盆特二：</b>搬家联系的跑跑兔搬家公司，师傅来了俩，话不多，人不错，质优价廉，正儿八经推荐，送面国旗，上面是，五!颗!星!</li>
            <li><b>无敌相公：</b>漂泊的人儿，一年内搬家4次，是不是太频繁了。好想住回自己的家，虽然小但是温暖。今天又找到跑跑兔搬家！今天余师傅和他的搭档很给力， 又快又稳，价格公道，关键是很专业。</li>
            <li><b>沈凉雨：</b>一个小时！跑跑兔一个小时就帮我搬完家了！大半个小货车的东西！从棕北到华阳！还搭我到世纪城方便我回棕北！果然专业就是力量！我也要加油！顺便赞一个他们的服务态度，再顺便诚意推荐一下@V噗V ，不是为了价格折扣，而是服务真心不错，价格我花了220，@呆呆鼠田田 东西比我多是230，参考吧</li>
          
            <a href="/"><a href="/gushi/383.html"><img src="${url}/skins/2011/images/dianping.png"  style="float:right;padding:0  34px 12px 0" /></a>
         </ul> </div>
      <div class="list3">
         <ul>
           <li><a href="/"><img src="${url}/skins/2011/images/2wm.jpg" style="float:left;padding:4px" /></a></li>
         </ul>
      </div>
      
      <div class="line"></div>
   </div>
<jsp:include page="link.jsp"></jsp:include>
<jsp:include page="footer.jsp"></jsp:include>