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
<div class="con">
   <div class="line"></div>
   <div class="ab_l">
      <h3 class="abtitle">+ 快速导航</h3>
      <div class="bav">
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
	  <div class="line"></div>
	  <h4 class="abtitle">最新信息</h4>
	  <div class="bcv">
	  <ul>
	  	 <c:if test="${not empty init.hotLog}">
				<c:forEach var="log" items="${init.hotLog.rows}">
           <li>· <a href="${rurl}post/${log.alias}${subfix}">${log.title }</a></li>
            
             </c:forEach>
             </c:if>
	  </ul>
	  </div>
   </div>
