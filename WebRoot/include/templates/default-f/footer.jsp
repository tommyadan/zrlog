<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<footer id="body-footer">
    <div  class="container clearfix">
        Copyright © 2012-2013 ${webs.title} |
 		 图片存储<a href="https://portal.qiniu.com/signup?code=3lpg0vbo5wthu" target="_blank" title="七牛云存储">七牛</a> |
		<a href="${rurl}/sitemap.xml" target="_blank">网站地图</a>&nbsp;
		|${webs.icp}
        Theme By <a href="http://9iphp.com" title="Specs' Bolg" target="_blank">Specs</a>
    </div>
    <ul id="jump" class="visible-lg">
        <!--<li><a id="share" title="意见反馈" href="http://9iphp.com/guestbook" target="_blank"><i class="fa fa-share-square-o"></i></a></li>-->
        <li><a id="top" href="#top" title="返回顶部" style="display:none;"><i class="fa fa-arrow-circle-up"></i></a></li>
    </ul>
</footer>
<script type="text/javascript">// <![CDATA[
$.fn.smartFloat = function() {
    var position = function(element) {
        var top = element.position().top, pos = element.css("position");
        $(window).scroll(function() {
            var scrolls = $(this).scrollTop();
            if (scrolls > top) {
                if (window.XMLHttpRequest) {
                    element.css({
                        position: "fixed",
                        top: "65px"
                    });
                } else {
                    element.css({
                        top: scrolls
                    });
                }
            }else {
                element.css({
                    position: pos,
                    top: top
                });
            }
        });
    };
    return $(this).each(function() {
        position($(this));
    });
};

//绑定
$("#float").smartFloat();
// ]]></script>
<div style="display:none">${webs.webCm}</div>
</body>
</html>
