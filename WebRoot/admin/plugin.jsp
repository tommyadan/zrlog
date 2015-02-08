<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="include/menu.jsp"/>
<script src="js/set_update.js"></script>
<div class="page-content">
									<div class="col-sm-5">
										<div class="widget-box">
											<div class="widget-header">
												<h4>多说信息</h4>
											</div>

											<div class="widget-body">
												<div class="widget-main no-padding">
													 <form role="form" id="ajaxduoshuo" class="form-horizontal">
									<fieldset>
										<label for="form-field-1" class="col-sm-3 control-label no-padding-right"> 多说短域名 </label>

										<input type="text" name="duoshuo_short_name" value="${webs.duoshuo_short_name}" class="col-xs-8" placeholder="" id="form-field-5">
									</fieldset>
									
									<fieldset>
										<label for="form-field-1" class="col-sm-3 control-label no-padding-right"> 多说密钥 </label>

										<input type="text" name="duoshuo_secret" value="${webs.duoshuo_secret}" class="col-xs-8" placeholder="" id="form-field-5">
											
									</fieldset>
									<fieldset>
										<label for="form-field-1" class="col-sm-3 control-label no-padding-right"> 是否启用 </label>
										<label>
 											<input class="ace ace-switch ace-switch-6" type="checkbox" value="1" checked="checked" name="user_comment_pluginStatus">
											<span class="lbl">&nbsp;</span>
										</label>
									</fieldset>
									
									<div class="space-4"></div>
									<div class="form-actions center">
											<button id="duoshuo" type="button" class="btn btn-info">
												提交
												<i class="icon-arrow-right icon-on-right bigger-110"></i>
											</button>
									</div>

								</form>
												</div>
											</div>
										</div>
										</div>
										<div class="col-sm-7">
										<div class="widget-box">
											<div class="widget-header">
												<h4>七牛云存储</h4>
											</div>

											<div class="widget-body">
												<div class="widget-main no-padding">
													<form role="form" id="ajaxyunstore" class="form-horizontal">
									<input type="hidden" value="qiniu" name="bucket_type">
									<fieldset>	
										<label for="form-field-1" class="col-sm-3 control-label no-padding-right"> 七牛  ACESS_KEY </label>

											<input type="text" name="qiniu_access_key" value="${webs.qiniu_access_key }" class="col-xs-8" placeholder="">
										</fieldset>
									<fieldset>
										<label for="form-field-1" class="col-sm-3 control-label no-padding-right"> 七牛 SECRET_KEY </label>

										<input type="text" name="qiniu_secret_key" value="${webs.qiniu_secret_key}" class="col-xs-8" placeholder="" >
											
									</fieldset>
									<fieldset>
										<label for="form-field-1" class="col-sm-3 control-label no-padding-right"> 七牛HOST </label>

										<input type="text" name="qiniu_host" value="${webs.qiniu_host}" class="col-xs-8" placeholder="" >
											
									</fieldset>
									
									<fieldset>
										<label for="form-field-1" class="col-sm-3 control-label no-padding-right"> 仓库名 </label>

										<input type="text" name="qiniu_bucket" value="${webs.qiniu_bucket}" class="col-xs-8" placeholder="" >
											
									</fieldset>
									
									<div class="space-4"></div>

									<div class="form-actions center">
											<button id="yunstore" type="button" class="btn btn-info">
												提交
												<i class="icon-arrow-right icon-on-right bigger-110"></i>
											</button>
									</div>

								</form>
												</div>
											</div>
										</div>
									</div>
									</div>
									
	<div style="display:none"></div>
	<body> 
</html>