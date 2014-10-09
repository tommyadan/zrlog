<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<jsp:include page="plug.jsp"></jsp:include>
 
   <div class="ab_r">
      <div class="title3"><a href="${rurl }">首页</a>  > <a href="${rurl }post/${log.alias }${subfix}">${log.title }</a></div>
      <h2 class="title4">${log.title }</h2>
      <div class="content">${log.content }</div> 
   </div>
   <table border="0" width="600">
     <tr> <td width="50">&nbsp;</td><td>
<!-- JiaThis Button BEGIN -->
<div id="jiathis_style_32x32" style="text-align:right">
	<a class="jiathis_button_qzone"></a>
	<a class="jiathis_button_tsina"></a>
	<a class="jiathis_button_tqq"></a>
	<a class="jiathis_button_renren"></a>
	<a class="jiathis_button_kaixin001"></a>
	<a class="jiathis_button_t163"></a>
	<a class="jiathis_button_fav"></a>
	<a class="jiathis_button_tianya"></a>
	<a class="jiathis_button_hi"></a>
	<a class="jiathis_button_qq"></a>
	<a class="jiathis_button_baidu"></a>
	<a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jtico jtico_jiathis" target="_blank"></a></div>
<script type="text/javascript" src="http://v2.jiathis.com/code_mini/jia.js" charset="utf-8"></script>
<!-- JiaThis Button END -->
  </td>
      
  </tr></table>
   <div class="line"></div>
</div>
			
<jsp:include page="footer.jsp"></jsp:include>