<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String turl = request.getRequestURI();
	String kurl = request.getRequestURI();
	String url = request.getScheme() + "://"
			+ request.getHeader("host") + request.getContextPath()
			+ "/include/templates/default";
	request.setAttribute("url", url);
	request.setAttribute("rurl",
			request.getScheme() + "://" + request.getHeader("host")
					+ request.getContextPath() + "/");
%>
<body>



<div class="con935">
<div class="left">${webs.title} - ${webs.second_title}</div>
<div class="right">
<a href="#" target="_blank">最新优惠</a>  |
<a href="#" target="_blank">公司电话</a>      |  
<a href="#" target="_blank">招聘信息</a>        |
<a href="#" target="_blank">服务点评</a>   
 </div> 
</div>
<div class="con">
   <div class="top_l"><a href="${rurl }"></a></div>
   <div class="top_r"><a href="#"><img src="${url}/skins/2011/images/aa.jpg" /></a>&#160;&#160;<a href="#"><img src="${url}/skins/2011/images/bb.jpg" /></a></div>
   <div class="clear"></div></div>
   <div class="nav">
      <ul>
      	<c:set value="${rurl}/${requestScope.yurl}" var="nurl"></c:set>
				<c:forEach var="lognav" items="${init.logNavs}">
					<c:choose>
						<c:when test="${lognav.url eq nurl}">
				<li style="background:none"><a href="${lognav.url}"><c:out value="${lognav.navName}" />
				</a><span></span>
				</li>
						</c:when>
						<c:otherwise>
				<li><a href="${lognav.url}"><c:out value="${lognav.navName}" />
				</a><span></span>
				</li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
         
      </ul>
   </div>