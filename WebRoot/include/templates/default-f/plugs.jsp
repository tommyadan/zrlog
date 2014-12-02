<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <!--侧边栏-->
			<aside id="side-bar" class="col-md-4">
		<c:choose>
			<c:when test="${not empty init.plugins}">
				<c:forEach var="plugin" items="${init.plugins}">
					<c:choose>
						<c:when test="${plugin.isSystem==false and pageLevel>=plugin.level}">
		<aside id="specs_widget_tags-5" class="widget widget_specs_widget_tags panel panel-specs visible-lg visible-md">
			<c:if test="${not empty plugin.pTitle}">
			<div class="panel-heading"><h2>
				<c:out value="${plugin.pTitle}" />
		</h2></div>
		</c:if>
			<div class="textwidget">
				${plugin.content}
			</div>
		</aside>
						</c:when>
						<c:otherwise>
							<c:choose>
								<c:when test="${plugin.pluginName eq 'types' }">
		<aside id="specs_widget_tags-5" class="widget widget_specs_widget_tags panel panel-specs visible-lg visible-md">
			<div class="panel-heading"><h2>
				<i class="fa fa-th"></i>&nbsp;&nbsp;<c:out value="${plugin.pTitle}" />
		</h2></div>
			<ul>
				<c:forEach var="type" items="${init.types}">
					<li><a href="${rurl}post/sort/${type.alias}">${type.typeName} (${type.typeamount})</a>
					</li>
				</c:forEach>
			</ul>
			</aside>
								</c:when>
								<c:when test="${plugin.pluginName eq 'links' and pageLevel>=plugin.level}">
		<aside id="specs_widget_tags-5" class="widget widget_specs_widget_tags panel panel-specs visible-lg visible-md">
			<div class="panel-heading"><h2>
				<c:out value="${plugin.pTitle}" />
		</h2></div>
			<ul>
				<c:forEach items="${init.links}" var="link">
					<li><a href="${link.url }" title="${link.alt }" target="_blank">${link.linkName}</a></li>
				</c:forEach>
			</ul>
			</aside>
								</c:when>
								<c:when test="${plugin.pluginName eq 'archives'}">
		<aside id="specs_widget_tags-5" class="widget widget_specs_widget_tags panel panel-specs visible-lg visible-md">
			<div class="panel-heading"><h2>
				<i class="fa fa-archive"></i>&nbsp;&nbsp;<c:out value="${plugin.pTitle}" />
		</h2></div>
			<ul>
				<c:forEach var="archives" items="${init.archives}">
					<li><a href="${rurl}post/record/${archives.key}" rel="nofollow">${archives.key}
							(${archives.value})</a>
					</li>
				</c:forEach>
			</ul>
		</aside>
								</c:when>
								<c:when test="${plugin.pluginName eq 'tags'}">
		<aside id="specs_widget_tags-5" class="widget widget_specs_widget_tags panel panel-specs visible-lg visible-md">
			<div class="panel-heading"><h2>
				<i class="fa fa-tags"></i>&nbsp;&nbsp;<c:out value="${plugin.pTitle}" />
		</h2></div>
		<div class="tag_clouds">
			 <c:forEach items="${init.tags}" var="tag">
				<a href="${rurl}post/tag/${tag.text}" title="${tag.text}上共有(${tag.count})文章">${tag.text}</a>
			 </c:forEach>
		</div>
		</aside>
								</c:when>
							</c:choose>
						</c:otherwise>
						
					</c:choose>
				</c:forEach>
			</c:when>
		</c:choose>
		</aside>
