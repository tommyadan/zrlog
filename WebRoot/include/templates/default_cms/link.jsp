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
<div class="link">友情链接：
<c:forEach items="${init.links}" var="link">
	<a href="${link.url }" title="${link.alt }" target="_blank">${link.linkName}</a>
</c:forEach>
</div>
</div>