<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String turl = request.getRequestURI();
	String kurl = request.getRequestURI();
	String url = request.getScheme() + "://" + request.getHeader("host") +request.getContextPath()+((Map<String,Object>)(((Map<String,Object>)request.getAttribute("init")).get("webSite"))).get("template");
	request.setAttribute("url", url);
	request.setAttribute("rurl",request.getScheme() + "://" + request.getHeader("host")+ request.getContextPath()+"/");
	String suffix="";
	if(request.getContextPath()+((Map<String,Object>)(((Map<String,Object>)request.getAttribute("init")).get("webSite"))).get("pseudo_static")!=null){
		suffix=".html";
	}
	request.setAttribute("suffix", suffix);
%>
<!DOCTYPE html>
<html lang="zh" class="no-js">
<head>
  <meta charset="utf-8" />
  <c:set var="webs" value="${init.webSite}" scope="request"></c:set>
    <title><c:if test="${not empty requestScope.log.title}">${requestScope.log.title} - </c:if>${webs.title} - ${webs.second_title}</title>
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
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" type="text/css" media="screen" href="${url }/css/common.css" />
  <link rel="stylesheet" type="text/css" media="screen" href="${url}/css/style_2014.css?v201409" />
  
  <link type="text/css" rel="stylesheet" href="${rurl }/include/plugs/SyntaxHighlighter/styles/shCoreDefault.css" />
  
  <!-- Begin highlightjs -->
  <link rel="stylesheet" href="${url }/js/highlight/styles/github.css">
  <!-- // End highlightjs -->
  <link rel="shortcut icon" href="${rurl }/favicon.ico" />
  
  <script src="${url }/js/lib/jquery-1.10.2.min.js"></script>
  <script>!window.jQuery && document.write('<script src="${url }/js/lib/jquery-1.10.2.min.js"><\/script>');</script>
  <script src="${url }/js/lib/modernizr.custom.16617.js"></script>
  <!--[if lt IE 9]><script src="${url }/js/html5shiv.js"></script> <script src="${url }/js/css3-mediaqueries.js"></script><link rel="stylesheet" type="text/css" media="screen" href="/css/style-ie7.css" /><![endif]-->
	<script type="text/javascript" src="${rurl }/include/plugs/SyntaxHighlighter/scripts/shCore.js"></script>
	<script type="text/javascript" src="${rurl }/include/plugs/SyntaxHighlighter/scripts/shBrushCpp.js"></script>
	<script type="text/javascript" src="${rurl }/include/plugs/SyntaxHighlighter/scripts/shBrushCSharp.js"></script>
	<script type="text/javascript" src="${rurl }/include/plugs/SyntaxHighlighter/scripts/shBrushJava.js"></script>
	<script type="text/javascript" src="${rurl }/include/plugs/SyntaxHighlighter/scripts/shBrushJScript.js"></script>
	<script type="text/javascript" src="${rurl }/include/plugs/SyntaxHighlighter/scripts/shBrushSql.js"></script>
	<script type="text/javascript" src="${rurl }/include/plugs/SyntaxHighlighter/scripts/shBrushXml.js"></script>
	<script type="text/javascript">SyntaxHighlighter.defaults['toolbar'] = false;SyntaxHighlighter.all();  </script>


</head>
<body class="default front">
  <div class="page">
    <div class="top">
  <div class="inner">
    <header>
      <h1 class="site-name"><a href="${rurl}"><%=request.getHeader("host") %></a><span class="slogan">${webs.title }</span></h1>
      <nav class="mainnav">
        <ul class="section_list">
        	<c:set value="${rurl}/${requestScope.yurl}" var="nurl"></c:set>
				<c:forEach var="lognav" items="${init.logNavs}">
					<c:choose>
						<c:when test="${lognav.url eq nurl}">
				<li class="active"><a href="${lognav.url}"><c:out value="${lognav.navName}" /></a><span></span></li>
						</c:when>
						<c:otherwise>
				<li><a href="${lognav.url}"><c:out value="${lognav.navName}" /></a><span></span></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
        </ul>
      </nav>
      <ul id="gn-menu" class="gn-menu-main">
        <li class="gn-trigger">
          <a class="gn-icon gn-icon-menu"><span>Menu</span></a>
          <nav class="gn-menu-wrapper">
            <div class="gn-scroller">
              <ul class="gn-menu">
                <li class="gn-search-item">
                  <form method="get" action="http://sheshui.me/" id="searchform1"><input placeholder="搜索博客" type="search" name="q" class="gn-search">
                  <a class="gn-icon icon-search"><span>搜索</span></a></form>
                </li>
                
 				<li>
                  <a class="gn-icon icon-article" href="/blogs/">分类</a>
                  <ul class="gn-submenu">
				<c:forEach var="type" items="${init.types}">
					<li><a class="gn-icon icon-tag" href="${rurl}post/sort/${type.alias}">${type.typeName} (${type.typeamount})</a></li>
				</c:forEach>
                  </ul>
                </li>
              </ul>
            </div><!-- /gn-scroller -->
          </nav>
        </li>
        <li class="sitename"><a class="gn-icon icon-info" href="/"><span><%=request.getHeader("host") %></span></a></li>
      </ul>
    <script src="${url }/js/classie.js"></script>
    <script src="${url }/js/gnmenu.js"></script>
    <script>
      new gnMenu(document.getElementById( 'gn-menu' ));
    </script>
    </header>
  </div>
</div>