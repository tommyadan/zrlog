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
<div class="center">											
<div class="widget-main">
												<div data-target="#step-container" class="row-fluid" id="fuelux-wizard">
														<ul class="wizard-steps">
															<li class="" data-target="#step1">
																<span class="step">1</span>
																<span class="title">数据库信息</span>
															</li>

															<li data-target="#step2" class="">
																<span class="step">2</span>
																<span class="title">网站信息</span>
															</li>

															<li data-target="#step3" class="active">
																<span class="step">3</span>
																<span class="title">完成</span>
															</li>
														</ul>
													</div>
													<div id="step-container" class="step-content row-fluid position-relative">

														<div id="step3" class="step-pane active">
															<div class="main">
																<div class="center">
																<h3 class="green">安装完成!</h3>
																<a href="<%=basePath%>">点击查看</a>
															</div>
															</div>
		 
		</div>
		</div></div>
		</div>
  </body>
</html>
