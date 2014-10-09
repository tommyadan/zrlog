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
   <div class="foot">
     <p><a href="/">首页</a> | <a href="/banjiadianhua/lianxi.html">联系我们</a> | <a href="/jiage/">搬家价格</a> | <a href="/chexing/">搬家车型</a> | <a href="/gushi/">搬家故事</a> | <a href="/changshi/">搬家常识| <a href="/sitemap.html">网站地图</a></p>
     <p>Copyright &#169; 2007 - 2014 All rights reserved 蜀ICP备07003571号-1 成都跑跑兔小型搬家公司 成都跑跑兔家政服务中心
</p>
	<div style="display:none">${init.webs.webCm}</div>
   </div>
</div>
</body>
</html>