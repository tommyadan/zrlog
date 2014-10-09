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
		<form method="post" action="install/installJblog">
   		<div class="desc"><b>填写管理员信息</b></div><table class="tb2">
		<tr><th class="tbopt" align="left">&nbsp;管理员账号:</th>
		<td><input type="text" name="username" value="admin" size="35" class="txt"></td>
		<td></td>
		</tr>
		
		<tr><th class="tbopt" align="left">&nbsp;管理员密码:</th>
		<td><input type="password" name="password" value="123456" size="35" class="txt"></td>
		<td>管理员密码不能为空</td>
		</tr>
		
		<tr><th class="tbopt" align="left">&nbsp;重复密码:</th>
		<td><input type="password" name="password2" value="123456" size="35" class="txt"></td>
		<td></td>
		</tr>
		
		<tr>
		<th class="tbopt" align="left">&nbsp;管理员 Email:</th>
		<td><input type="text" name="email" value="admin@admin.com" size="35" class="txt"></td>
		<td></td>
		</tr>
		
		<tr>
		<th class="tbopt" align="left">&nbsp;网站标题:</th>
		<td><input type="text" name="webTitle" value="小春的 blog" size="35" class="txt"></td>
		<td></td>
		</tr>
		</table>
		<table class="tb2">
		<tr><th class="tbopt" align="left">&nbsp;</th>
		<td><input type="submit" name="submitname" value="下一步" class="btn">
		</td>
		<td></td>
		</tr>
		</table>
		</form>
		</div>
  </body>
</html>
