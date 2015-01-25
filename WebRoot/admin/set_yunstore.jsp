<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="include/menu.jsp"/>
		
					<div class="page-content">
						<div class="page-header">
							<h1>
								云存储设置
								<small>
									<i class="icon-double-angle-right"></i>
									信息设置
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<form role="form" id="ajaxyunstore" class="form-horizontal">
									<div class="form-group"> 
										<label for="form-field-1" class="col-sm-3 control-label no-padding-right"> 七牛  ACESS_KEY </label>

										<div class="col-sm-9">
											<input type="text" name="userName" value="${webs.ACESS_KEY }" class="col-xs-10 col-sm-5" placeholder="" id="form-field-1">
										</div>
									</div>
									
									<div class="form-group">
										<label for="form-field-1" class="col-sm-3 control-label no-padding-right"> 七牛 SECRET_KEY </label>

										<div class="col-sm-9">
											<input type="text" name="second_title" value="${webs.SECRET_KEY}" class="col-xs-10 col-sm-5" placeholder="" id="form-field-1">
											
										</div>
									</div>
									
									<div class="form-group">
										<label for="form-field-1" class="col-sm-3 control-label no-padding-right"> 七牛HOST </label>

										<div class="col-sm-9">
										<input type="text" name="second_title" value="${webs.host}" class="col-xs-10 col-sm-5" placeholder="" id="form-field-1">
											
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