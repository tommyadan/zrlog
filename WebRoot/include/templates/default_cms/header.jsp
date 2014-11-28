<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String turl = request.getRequestURI();
	String kurl = request.getRequestURI();
	String url = request.getScheme() + "://"
			+ request.getHeader("host") + request.getContextPath()
			+ "/include/templates/default";
	request.setAttribute("url", url);
	request.setAttribute("subfix", ".html");
	request.setAttribute("rurl",
			request.getScheme() + "://" + request.getHeader("host")
					+ request.getContextPath() + "/");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<c:set var="webs" value="${init.webSite}" scope="request"></c:set>
<link rel="shortcut icon" type="image/x-icon" href="${rurl}/favicon.ico" />
<meta name="description" content="${webs.description}"/>
<c:choose>
<c:when test="${empty requestScope.log or empty requestScope.log.keywords}">
<meta name="keywords" content="${webs.keywords}"/>
</c:when>
<c:otherwise>
<meta name="keywords" content="${requestScope.log.keywords}"/>
</c:otherwise>
</c:choose>
<title><c:if test="${not empty requestScope.log.title}">${requestScope.log.title} - </c:if>${webs.title} - ${webs.second_title}</title>
<link href="${url}/skins/2011/style.css" rel="stylesheet" type="text/css" />
</head>