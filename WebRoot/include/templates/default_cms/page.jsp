<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<jsp:include page="plug.jsp"></jsp:include>

   <div class="ab_r">
      <div class="title3"><a href="/">首页</a>  > <a href="${rurl }post/sort/${type.alias}">${type.typeName}</a></div>
      <div class="news_list">
         <ul>
            <c:if test="${not empty requestScope.data}">
				<c:forEach var="log" items="${requestScope.data.rows}">
           	 <li><span>${log.releaseTime.year+1900}-${log.releaseTime.month+1}-${log.releaseTime.date}</span><a href="${rurl}post/${log.alias}${subfix}">· ${log.title}</a></li>
            
             </c:forEach>
             </c:if>
         </ul>
      </div>
      <div class="list_page">
      <c:if test="${requestScope.data.total>1}">
				<c:if test="${requestScope.data.page>1}">
				<A title="跳转到第一页" class="extend" href="${rurl}${requestScope.yurl}1${subfix}">第一页 </A>
				<A href="${rurl}${requestScope.yurl}${requestScope.data.page-1}${subfix}">上一页 </A>
				</c:if>
				<c:choose>
				<c:when test="${requestScope.data.total>11}">
					<c:choose>
						<c:when test="${requestScope.data.page<3 or requestScope.data.total-4<requestScope.data.page}">
							<c:forEach begin="1" end="3" step="1" var="i">
								<a <c:if test="${i eq requestScope.data.page}">class="current"</c:if> href="${rurl}${requestScope.yurl}<c:out value="${i}"></c:out>${subfix}"><c:out value="${i}"></c:out></a>
							</c:forEach>
						</c:when>

						<c:otherwise>
							<c:forEach begin="${requestScope.data.page-2}" end="${requestScope.data.page}" step="1" var="i">
								<a <c:if test="${i eq requestScope.data.page}">class="current"</c:if> href="${rurl}${requestScope.yurl}<c:out value="${i}"></c:out>${subfix}"><c:out value="${i}"></c:out></a>
							</c:forEach>
						</c:otherwise>
					</c:choose>
					<c:forEach begin="${requestScope.data.total-3}" end="${requestScope.data.total}"
					step="1" var="i">
					<a <c:if test="${i eq requestScope.data.page}">class="current"</c:if> href="${rurl}${requestScope.yurl}<c:out value="${i}"></c:out>${subfix}"><c:out value="${i}"></c:out></a>
				</c:forEach>
				</c:when>
				<c:otherwise>
				<c:forEach begin="1" end="${requestScope.data.total}"
					step="1" var="i">
						<a <c:if test="${i eq requestScope.data.page}">class="current"</c:if> href="${rurl}${requestScope.yurl}<c:out value="${i}"></c:out>${subfix}"><c:out value="${i}"></c:out></a>		
				</c:forEach>
				</c:otherwise>
				</c:choose>
				<c:if test="${requestScope.data.total ne requestScope.data.page}">
				<A href="${rurl}${requestScope.yurl}${requestScope.data.page+1}${subfix}">下一页 </A>
				<A title="跳转到最后一页" class="extend"
					href="${rurl}${requestScope.yurl}${requestScope.data.total}${subfix}">
					最后一页 </A></c:if>

			</c:if></div>
   </div>
   <div class="line"></div>
</div>
<jsp:include page="link.jsp"></jsp:include>
<jsp:include page="footer.jsp"></jsp:include>