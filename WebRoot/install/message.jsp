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
															<li class="" data-target="#step1">
																<span class="step">1</span>
																<span class="title">数据库信息</span>
															</li>

															<li data-target="#step2" class="active">
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

														<div id="step2" class="step-pane active">
															<div class="main">
 		<h3 class="lighter block green"><b>填写网站信息</b></h3>
 		
 		<form method="post" action="install/installJblog " id="validation-form" class="form-horizontal" novalidate="novalidate">
																<div class="form-group">
																	<label class="control-label col-xs-12 col-sm-3 no-padding-right">管理员账号:</label>

																	<div class="col-xs-12 col-sm-9">
																		<div class="clearfix">
																			<input type="text" value="admin" class="col-xs-12 col-sm-6" name="username">
																		</div>
																	</div>
																</div>

																<div class="space-8"></div>
																
																<div class="form-group">
																	<label class="control-label col-xs-12 col-sm-3 no-padding-right">管理员密码:</label>

																	<div class="col-xs-12 col-sm-9">
																		<div class="clearfix">
																			<input type="text" value="123456" class="col-xs-12 col-sm-6" name="password">
																		</div>
																	</div>
																</div>

																<div class="space-8"></div>
																<div class="form-group">
																	<label class="control-label col-xs-12 col-sm-3 no-padding-right">重复密码:</label>

																	<div class="col-xs-12 col-sm-9">
																		<div class="clearfix">
																			<input type="text" value="123456" class="col-xs-12 col-sm-6" name="password">
																		</div>
																	</div>
																</div>

																<div class="space-8"></div>
																<div class="form-group">
																	<label class="control-label col-xs-12 col-sm-3 no-padding-right">管理员 Email:</label>

																	<div class="col-xs-12 col-sm-9">
																		<div class="clearfix">
																			<input type="text" value="admin@example.com" class="col-xs-12 col-sm-6" name="email">
																		</div>
																	</div>
																</div>

																<div class="space-8"></div>
																<div class="form-group">
																	<label class="control-label col-xs-12 col-sm-3 no-padding-right">网站标题:</label>

																	<div class="col-xs-12 col-sm-9">
																		<div class="clearfix">
																			<input type="text" value="我的Blog" class="col-xs-12 col-sm-6" name="title">
																		</div>
																	</div>
																</div>

																<div class="space-8"></div>
																<div class="form-group">
																	<label class="control-label col-xs-12 col-sm-3 no-padding-right">网站副标题:</label>

																	<div class="col-xs-12 col-sm-9">
																		<div class="clearfix">
																			<input type="text" value="zrLog" class="col-xs-12 col-sm-6" name="second_title">
																		</div>
																	</div>
																</div>

																<div class="space-8"></div>

																<div class="row-fluid wizard-actions">
																<button data-last="Finish " class="btn btn-success btn-next">
																Next
															
																<i class="icon-arrow-right icon-on-right"></i></button>
																</div>
		</form>
		</div>
														</div>
		 
		</div>
		</div></div>
  </body>
</html>
