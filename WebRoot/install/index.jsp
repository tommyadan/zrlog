<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title> jblog安装向导</title>
     
  <link rel="stylesheet" href="install/style.css" type="text/css"></link></head>
  
  <body>
 
		<div class="main">
		<form method="post" action="install/testDbConn">
		<input type="hidden" name="a" value="dbconn">
		<div id="form_items_3" ><br /><div class="desc"><b>填写数据库信息</b></div><table class="tb2">
		<tr><th class="tbopt" align="left">&nbsp;数据库服务器:</th>
		<td><input type="text" name="dbhost" value="localhost" size="35" class="txt"></td>
		<td>数据库服务器地址, 一般为 localhost</td>
		</tr>
		
		<tr><th class="tbopt" align="left">&nbsp;数据库名:</th>
		<td><input type="text" name="dbname" value="blog" size="35" class="txt"></td>
		<td></td>
		</tr>
		
		<tr><th class="tbopt" align="left">&nbsp;数据库用户名:</th>
		<td><input type="text" name="dbuser" value="root" size="35" class="txt"></td>
		<td></td>
		</tr>
		
		<tr><th class="tbopt" align="left">&nbsp;数据库密码:</th>
		<td><input type="text" name="dbpwd" value="123456" size="35" class="txt"></td>
		<td></td>
		</tr>
	 
	 	<tr><th class="tbopt" align="left">&nbsp;数据库端口:</th>
		<td><input type="text" name="port" value="3306" size="35" class="txt"></td>
		<td>一般为&nbsp;3306</td>
		</tr>
		
		<tr><th class="tbopt" align="left">&nbsp;系统信箱 Email:</th>
		<td><input type="text" name="adminemail" value="admin@admin.com" size="35" class="txt"></td>
		<td>用于发送程序错误报告</td>
		</tr>
		</table>
		<table class="tb2">
		<tr><th class="tbopt" align="left"><font size="3" color="red">${error}&nbsp;</font></th>
		<td><input type="submit" name="submitname" value="下一步" class="btn">
		</td>
		<td></td>
		</tr>
		
		</table>
		</div>
		</form>
		</div>
		
 

  </body>
</html>
