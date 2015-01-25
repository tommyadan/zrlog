<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="include/menu.jsp"/>
		
					<div class="page-content">
						<div class="page-header">
							<h1>用户设置
								<small>
									<i class="icon-double-angle-right"></i>
									密码变更
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<form role="form" id="user" class="form-horizontal">
									<div class="form-group"> 
										<label for="form-field-1" class="col-sm-3 control-label no-padding-right"> 旧密码 </label>

										<div class="col-sm-9">
											<input type="text" name="userName" value="" class="col-xs-10 col-sm-5" placeholder="" id="form-field-1">
										</div>
									</div>
									
									<div class="form-group">
										<label for="form-field-1" class="col-sm-3 control-label no-padding-right"> 新密码 </label>

										<div class="col-sm-9">
											<input type="text" name="second_title" value="" class="col-xs-10 col-sm-5" placeholder="" id="form-field-1">
											
										</div>
									</div>
									
									<div class="form-group">
										<label for="form-field-1" class="col-sm-3 control-label no-padding-right"> 确认密码 </label>

										<div class="col-sm-9">
										<input type="text" name="second_title" value="" class="col-xs-10 col-sm-5" placeholder="" id="form-field-1">
											
										</div>
									</div>
									<div class="space-4"></div>

									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<button id="yunstore" type="button" class="btn btn-info">
												<i class="icon-ok bigger-110"></i>
												提交
											</button>

											&nbsp; &nbsp; &nbsp;
											<button type="reset" class="btn">
												<i class="icon-undo bigger-110"></i>
												重置
											</button>
										</div>
									</div>

								</form>
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->

					</div>
		
	<div style="display:none"></div>
	<body> 
</html>