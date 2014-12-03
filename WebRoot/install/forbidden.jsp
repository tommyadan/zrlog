<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	// 
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>jblog 安装向导</title>
    <link rel="stylesheet" href="install/style.css" type="text/css"></link></head>
	
  </head>
  <body>
  	<div class="main">
		已经安装过了
		</div>
  </body>
</html>
