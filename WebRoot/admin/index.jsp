<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"manage/";

%>

<jsp:include page="include/menu.jsp"/>
					<div class="page-content">
						<div class="page-header">
							<h1>
								控制台
								<small>
									<i class="icon-double-angle-right"></i>
									 查看
								</small>
							</h1>
						</div><!-- /.page-header -->
								 <div class="alert alert-block alert-success">
									<button data-dismiss="alert" class="close" type="button">
										<i class="icon-remove"></i>
									</button>

									<i class="icon-ok green"></i>

									欢迎使用
									<strong class="green">
										zrlog 日志管理系统
										<small>(${init.version})</small>
									</strong>
									,轻量级好用的日志管理系统.
								</div>
								<div class="infobox infobox-green  ">
										<div class="infobox-icon">
											<i class="icon-comments"></i>
										</div>

										<div class="infobox-data">
											<span class="infobox-data-number">32</span>
											<div class="infobox-content">2个评论</div>
										</div>
										<div class="stat stat-success">8%</div>
									</div>
									<div class="infobox infobox-orange2  ">
											<div class="infobox-chart">
												<span data-values="196,128,202,177,154,94,100,170,224" class="sparkline"><canvas style="display: inline-block; width: 44px; height: 34px; vertical-align: top;" width="44" height="34"></canvas></span>
											</div>

											<div class="infobox-data">
												<span class="infobox-data-number">6,251</span>
												<div class="infobox-content">页面查看次数</div>
											</div>

											<div class="badge badge-success">
												7.2%
												<i class="icon-arrow-up"></i>
											</div>
										</div>
<jsp:include page="include/footer.jsp"/>
