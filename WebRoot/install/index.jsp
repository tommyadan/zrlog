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
    <title>zrlog 安装向导</title>
		<link href="install/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="install/assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="install/assets/css/ace.min.css" />
		<link rel="stylesheet" href="install/assets/css/ace-rtl.min.css" />
	</head>

	<body>
<div class="center" >
<div class="widget-main">
												<div data-target="#step-container" class="row-fluid" id="fuelux-wizard">
														<ul class="wizard-steps">
															<li class="active" data-target="#step1">
																<span class="step">1</span>
																<span class="title">数据库信息</span>
															</li>

															<li data-target="#step2" class="">
																<span class="step">2</span>
																<span class="title">网站信息</span>
															</li>

															<li data-target="#step3" class="">
																<span class="step">3</span>
																<span class="title">完成</span>
															</li>
														</ul>
													</div>
													<div id="step-container" class="step-content row-fluid position-relative">

														<div id="step1" class="step-pane active">
															<div class="main">
 		<h3 class="lighter block green"><b>填写数据库信息</b></h3>
 		
 		<form method="post" action="install/testDbConn " id="validation-form" class="form-horizontal" novalidate="novalidate">
																<div class="form-group">
																	<label class="control-label col-xs-12 col-sm-3 no-padding-right">数据库服务器:</label>

																	<div class="col-xs-12 col-sm-9">
																		<div class="clearfix">
																			<input type="text" value="203.195.167.55" class="col-xs-12 col-sm-6" name="dbhost">
																		</div>
																	</div>
																</div>

																<div class="space-8"></div>
																
																<div class="form-group">
																	<label class="control-label col-xs-12 col-sm-3 no-padding-right">数据库名:</label>

																	<div class="col-xs-12 col-sm-9">
																		<div class="clearfix">
																			<input type="text" value="dome_blog" class="col-xs-12 col-sm-6" name="dbname">
																		</div>
																	</div>
																</div>

																<div class="space-8"></div>
																<div class="form-group">
																	<label class="control-label col-xs-12 col-sm-3 no-padding-right">数据库用户名:</label>

																	<div class="col-xs-12 col-sm-9">
																		<div class="clearfix">
																			<input type="text" value="dome_blog" class="col-xs-12 col-sm-6" name="dbuser">
																		</div>
																	</div>
																</div>

																<div class="space-8"></div>
																<div class="form-group">
																	<label class="control-label col-xs-12 col-sm-3 no-padding-right">数据库密码:</label>

																	<div class="col-xs-12 col-sm-9">
																		<div class="clearfix">
																			<input type="text" value="123456" class="col-xs-12 col-sm-6" name="dbpwd">
																		</div>
																	</div>
																</div>

																<div class="space-8"></div>
																<div class="form-group">
																	<label class="control-label col-xs-12 col-sm-3 no-padding-right">数据库端口:</label>

																	<div class="col-xs-12 col-sm-9">
																		<div class="clearfix">
																			<input type="text" value="3306" class="col-xs-12 col-sm-6" name="port">
																		</div>
																	</div>
																</div>

																<div class="space-8"></div>
																<div class="form-group">
																	<label class="control-label col-xs-12 col-sm-3 no-padding-right">系统信箱 Email:</label>

																	<div class="col-xs-12 col-sm-9">
																		<div class="clearfix">
																			<input type="text" class="col-xs-12 col-sm-6" name="dbhost">
																		</div>
																	</div>
																</div>

																<div class="row-fluid wizard-actions">
																<button data-last="Finish " class="btn btn-success btn-next">
																Next
															
																<i class="icon-arrow-right icon-on-right"></i></button>
																</div>
															</form>
		 
		</div>
														</div>

														<div id="step4" class="step-pane">
															<div class="center">
																<h3 class="green">Congrats!</h3>
																Your product is ready to ship! Click finish to continue!
															</div>
														</div>
													</div>
													 
											</div>
		</div>
	<div style="display:none"></div>
	<body> 
</html>
