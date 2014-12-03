<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

					    </div>
    <div class="bottom">
      <div class="inner">
        <footer>
          <div class="footer-right">
            <p><cite>&copy; 2014 ${webs.title}</cite></p>
            <p>Powered by <a href="http://zrlog.com" target="_blank">zrlog</a>, <span title="涉水轻舟">Themed by <a href="http://sheshui.me/wiki/HomePage" target="_blank">Robin L.</a> &nbsp; </span></p>
          </div>
          <div class="clearfix"></div>
        </footer>
      </div>
    </div>
  </div> <!-- //page -->
<script src="${url}/js/sheshui.js?201308"></script>
<!-- Begin highlightjs -->
<script src="${url}/js/highlight/highlight.pack.js"></script>
<script>hljs.initHighlightingOnLoad();</script>
<!-- // End highlightjs -->
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-8809619-6']);
  _gaq.push(['_setDomainName', 'sheshui.me']);
  _gaq.push(['_trackPageview']);
  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
<div style="display:none">${webs.webCm}</div>
</body>
</html>

