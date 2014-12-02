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
<html>
<head>
    <c:set var="webs" value="${init.webSite}" scope="request"></c:set>
    <title><c:if test="${not empty requestScope.log.title}">${requestScope.log.title} - </c:if>${webs.title} - ${webs.second_title}</title>
	<meta charset="utf-8"/>
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
	<link rel='stylesheet' id='bootstrap-style-css'  href='${url}/inc/bootstrap-3.2.0/css/bootstrap.min.css?ver=3.2.0' type='text/css' media='all' />
	<link rel='stylesheet' id='awesome-style-css'  href='${url}/inc/font-awesome/css/font-awesome.min.css?ver=4.1.0' type='text/css' media='all' />
	<link rel='stylesheet' id='magnific-popup-style-css'  href='${url}/inc/magnific/magnific-popup.css?ver=2.1.5' type='text/css' media='all' />
	<link rel='stylesheet' id='9iphp-style-css'  href='${url}/style.css?ver=1.3' type='text/css' media='all' />
	 
	<link type="text/css" rel="stylesheet" href="${rurl }/include/plugs/SyntaxHighlighter/styles/shCoreDefault.css" />
	<script type='text/javascript' src='${url}/js/jquery/jquery.js?ver=1.11.1'></script>
	<script type='text/javascript' src='${url}/js/jquery/jquery-migrate.min.js?ver=1.2.1'></script>
	<script type='text/javascript' src='${url}/js/jquery.min.js?ver=1.11.0'></script>
	<script type='text/javascript' src='${url}/inc/bootstrap-3.2.0/js/bootstrap.min.js?ver=3.2.0'></script>
	<script type='text/javascript' src='${url}/js/jquery.lazyload.js?ver=1.19'></script>
	<script type='text/javascript' src='${url}/inc/magnific/jquery.magnific-popup.js?ver=0.9.9'></script>
	<script type='text/javascript' src='${url}/js/9iphp.js?ver=1.3'></script>
	<script type='text/javascript' src='${url}/js/fixed-top.js?ver=1.3'></script>
	
	<script type="text/javascript" src="${rurl }/include/plugs/SyntaxHighlighter/scripts/shCore.js"></script>
	<script type="text/javascript" src="${rurl }/include/plugs/SyntaxHighlighter/scripts/shBrushCpp.js"></script>
	<script type="text/javascript" src="${rurl }/include/plugs/SyntaxHighlighter/scripts/shBrushCSharp.js"></script>
	<script type="text/javascript" src="${rurl }/include/plugs/SyntaxHighlighter/scripts/shBrushJava.js"></script>
	<script type="text/javascript" src="${rurl }/include/plugs/SyntaxHighlighter/scripts/shBrushJScript.js"></script>
	<script type="text/javascript" src="${rurl }/include/plugs/SyntaxHighlighter/scripts/shBrushSql.js"></script>
	<script type="text/javascript" src="${rurl }/include/plugs/SyntaxHighlighter/scripts/shBrushXml.js"></script>
	<script type="text/javascript">SyntaxHighlighter.defaults['toolbar'] = false;SyntaxHighlighter.all();  </script>
</head>
<body>
<div style="background-image: url('${url}/images/bg.jpg')" id="background_pattern"></div><header>
    <div id="masthead" role="banner" class="hidden-xs">
		<div class="top-banner">
			<div class="container">
					<a class="brand brand-image" href="${rurl }" title="${webs.title}" rel="home">
						<h1 style="color: white;">							
							 <b>${webs.title}</b>
						</h1>
						<h1 class="hidden-xs">							
							<small>${webs.second_title}</small>
						</h1>
					</a>
			</div>
		</div>
	</div>
    <nav id="nav" class="navbar navbar-default container-fluid" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                    <span class="fa fa-bars"></span>
                </button>
								<a class="navbar-brand visible-xs" href="http://9iphp.com/" style='padding:2px 10px'>
									<h1>							
									 ${webs.title}
									</h1>
								</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav"> 
 					<c:set value="${rurl}/${requestScope.yurl}" var="nurl"></c:set>
				<c:forEach var="lognav" items="${init.logNavs}">
					<c:choose>
						<c:when test="${lognav.url eq nurl}">
				<li id="current" class="menu-item menu-item-type-taxonomy menu-item-object-category current-menu-item"><a href="${lognav.url}"><c:out value="${lognav.navName}" /></a><span></span></li>
						</c:when>
						<c:otherwise>
				<li><a href="${lognav.url}"><c:out value="${lognav.navName}" /></a><span></span></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
 				</ul>                
 				<form action="${rurl }post/search" method="post" id="searchform" class="navbar-form navbar-right visible-lg" role="search">
                    <div class="form-group">
                        <input type="text" value="<c:out value="${sessionScope.key}"/>" name='key' id='s' class="form-control" placeholder="<c:out value="${sessionScope.key}" default="这里有你想要的" />" x-webkit-speech>
                        <button class="btn btn-danger" type="submit"><i class="fa fa-search"></i></button>
                    </div>
                    <!--<button type="submit" class="btn btn-primary">Submit</button>-->
                </form>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</header>