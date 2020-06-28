<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>

<div class="row" style="width: 100%;">
	<div class="col-lg-12" >
	    <div class="main-card mb-12 card">
	        <div class="card-body">
				 <div class="mb-3 card">
				    <div class="card-header">
				        <ul class="nav nav-justified">
				            <li class="nav-item"><a data-toggle="tab" href="#tab-eg7-0" class="nav-link show">Người dùng đang hoạt động</a></li>
				            <li class="nav-item"><a data-toggle="tab" href="#tab-eg7-1" class="nav-link show active">Người dùng đã bị xóa</a></li>
				        </ul>
				    </div>
				    <div class="card-body">
				        <div class="tab-content">
				            <div class="tab-pane show" id="tab-eg7-0" role="tabpanel">
								<!--  -->
								<div class="scroll-area-md" style="height: 550px;">
					               	<div class="card-body">
										<ul class="list-group">
										<c:forEach var = "i" begin = "1" end = "10">
											<li class="list-group-item-action list-group-item" >
												<div class="single-profile-front row" >
													<div class="profile-img col-lg-2" >
														<div class="widget-content p-0">
				                                                        <div class="widget-content-wrapper">
				                                                            <div class="widget-content-left mr-3">
				                                                                <div class="widget-content-left">
				                                                                    <img width="40" height="40" class="rounded-circle" src="/img/web/user.png" alt="">
				                                                                </div>
				                                                            </div>
				                                                            <div class="widget-content-left flex2">
				                                                                <div class="widget-heading">TrangHoang</div>
				                                                                <div class="widget-subheading opacity-7">user</div>
				                                                            </div>
				                                                        </div>
				                                                    </div>
				                                    </div>
													<div class="col-lg-10">
														<div class="profile-caption" style="margin-left: 5px;margin-right: 5px; text-align: left;">
															 <small>SDT: 0352902224 - DC: ktx khu A, Linh Trung, Thu Duc, Tp.HCM </small>
															 <div style="text-align: right;">
															 	<div class="badge badge-success btn">Hoạt động</div>
															 	<div class="badge badge-danger btn">Xóa</div>
															 </div>
															 </div>
													</div>
												</div>
											</li>
											</c:forEach>
										</ul>
									</div>
					            </div>
					            
	            
								<!--  -->
							</div>
				            <div class="tab-pane show active" id="tab-eg7-1" role="tabpanel">
							<!--  -->
							<div class="scroll-area-md" style="height: 550px;">
				               	<div class="card-body">
									<ul class="list-group">
									<c:forEach var = "i" begin = "1" end = "10">
										<li class="list-group-item-action list-group-item" >
										<a href='<c:url value="/admin/chi-tiet-nguoi-dung"/>'>
											<div class="single-profile-front row" >
												<div class="profile-img col-lg-2" >
													<div class="widget-content p-0">
			                                                        <div class="widget-content-wrapper">
			                                                            <div class="widget-content-left mr-3">
			                                                                <div class="widget-content-left">
			                                                                    <img width="40" height="40" class="rounded-circle" src="/img/web/user.png" alt="">
			                                                                </div>
			                                                            </div>
			                                                            <div class="widget-content-left flex2">
			                                                                <div class="widget-heading">TrangHoang</div>
			                                                                <div class="widget-subheading opacity-7">user</div>
			                                                            </div>
			                                                        </div>
			                                                    </div>
			                                    </div>
												<div class="col-lg-10">
													<div class="profile-caption" style="margin-left: 5px;margin-right: 5px; text-align: left;">
														 <small>SDT: 0352902224 - DC: ktx khu A, Linh Trung, Thu Duc, Tp.HCM </small>
														 <div style="text-align: right;">
														 	<div class="badge badge-success btn">Khôi phục</div>
														 </div>
														 </div>
												</div>
											</div>
										</li>
										</a>
										</c:forEach>
									</ul>
								</div>
				            </div>
	            
	            
							<!--  -->
							
							</div>
				        </div>
				    </div>
				</div>
	           
	           
	           
	           
	            
	            
	            
	            
	            
	            
	            
	            
	            
	        </div>
	     </div>
	</div>
</div>

