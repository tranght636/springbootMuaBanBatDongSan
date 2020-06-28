<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>

<div class="card-body">
	<div class="main-card mb-3 card">
		<div class="card-header">
			<div class="btn-actions-pane-right">
				<div class="nav">
					<a data-toggle="tab" href="#tab-eg4-0"
						class="border-0 btn-pill btn-wide btn-transition btn btn-outline-danger show active">Thông
						tin</a> <a data-toggle="tab" href="#tab-eg4-1"
						class="mr-1 ml-1 btn-pill btn-wide border-0 btn-transition btn btn-outline-danger show">BDS
						Yêu thích</a> <a data-toggle="tab" href="#tab-eg4-2"
						class="border-0 btn-pill btn-wide btn-transition btn btn-outline-danger show ">BDS
						chờ giao dịch</a> <a data-toggle="tab" href="#tab-eg4-3"
						class="border-0 btn-pill btn-wide btn-transition btn btn-outline-danger show ">BDS
						chờ xác nhận</a> <a data-toggle="tab" href="#tab-eg4-4"
						class="mr-1 ml-1 btn-pill btn-wide border-0 btn-transition btn btn-outline-danger show">BDS
						đẩy tin</a> <a data-toggle="tab" href="#tab-eg4-5"
						class="border-0 btn-pill btn-wide btn-transition btn btn-outline-danger show ">BDS
						đã mua/ đã thuê</a> <a data-toggle="tab" href="#tab-eg4-6"
						class="border-0 btn-pill btn-wide btn-transition btn btn-outline-danger show">BDS
						đã bán/ đã cho thuê</a> <a data-toggle="tab" href="#tab-eg4-7"
						class="mr-1 ml-1 btn-pill btn-wide border-0 btn-transition btn btn-outline-danger show">BDS
						bị cấm</a> <a data-toggle="tab" href="#tab-eg4-8"
						class="border-0 btn-pill btn-wide btn-transition btn btn-outline-danger show ">BDS
						đã xóa</a>
				</div>
			</div>
		</div>
		<div class="card-body">
			<div class="tab-content">
				<div class="tab-pane show active" id="tab-eg4-0" role="tabpanel">
					<!-- Thông tin tài khoản -->
					<div class="row" style="width: 100%;">
						<div class="col-lg-12">
							<div class="main-card mb-12 card">
								<div class="card-body">
									<h5 class="card-title">Thông tin tài khoản</h5>

									<div style="margin: 15px;">
										<c:if test="${not empty message}">
											<div class="alert alert-${alert}">${message}</div>
										</c:if>
										<form id="form-profile" action="/admin/thong-tin-tai-khoan"
											method="POST">
											<input name="id" value="${USERMODEL.id}" hidden="true" />

											<div class="form-group">
												<input type="text" class="form-control form-control-user"
													id="username" placeholder="Full Name" name="username">
											</div>
											<div class="form-group">
												<div class="span-email-exist" style="margin-left: 15px;"
													hidden="true">
													<span style="color: red;">Email đã tồn tại</span>
												</div>
												<input type="email"
													class="form-control form-control-user input-register-email"
													placeholder="Email Address" name="email">
											</div>
											<div class="form-group">
												<input type="text" class="form-control form-control-user"
													id="address" placeholder="Address" name="address">
											</div>
											<div class="form-group">
												<input type="text" class="form-control form-control-user"
													id="phone" placeholder="Phone" name="phoneNumber">
											</div>
											<div class="form-group row">
												<div class="col-sm-6 mb-3 mb-sm-0">
													<input type="text" class="form-control form-control-user"
														id="gender" placeholder="Gender" name="gender">
												</div>
												<div class="col-sm-6">
													<input type="date" class="form-control form-control-user"
														id="dob" name="dob" title="Date of birth">
												</div>
											</div>
											<button type="submit" class="mb-2 mr-2 btn btn-primary"
												style="width: 300px; float: right; margin-bottom: 15px;">Xóa
												tài khoản</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- BDS yêu thích -->
				<div class="tab-pane show " id="tab-eg4-1" role="tabpanel">
					<div class="row" style="width: 100%;">
						<div class="col-lg-12">
							<div class="main-card mb-12 card">
								<div class="card-body">
									<h5 class="card-title">Bất động sản yêu thích</h5>
									<div class="scroll-area-md" style="height: 450px;">
										<div class="card-body">
											<ul class="list-group">
												<c:forEach var="i" begin="1" end="10">
													<li class="list-group-item-action list-group-item">
														<div class="single-profile-front row">
															<div class="profile-img col-lg-2">
																<img src="/img/web/item2.jpg" alt=""
																	style="border-radius: 10px 10px 10px 10px; max-width: 150px;">
															</div>
															<div class="col-lg-10">
																<div class="profile-caption"
																	style="margin-left: 5px; margin-right: 5px; text-align: left;">
																	<h6 style="color: black;">Nhượng 3600m2 đất trang
																		trại nhà vườn trong đất sẵn ao tại Hòa Sơn, Lương Sơn,
																		Hòa Bình</h6>
																	<h6 style="color: blue;">17 tỷ - 12000 m2 - Lương
																		Sơn, Hòa Bình</h6>
																</div>
															</div>
														</div>
													</li>
												</c:forEach>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- bds chờ giao dịch -->
				<div class="tab-pane show " id="tab-eg4-2" role="tabpanel"></div>
				<div class="tab-pane show " id="tab-eg4-3" role="tabpanel">tab3</div>
				<div class="tab-pane show " id="tab-eg4-4" role="tabpanel">tab4</div>
				<div class="tab-pane show " id="tab-eg4-5" role="tabpanel">tab5</div>
				<div class="tab-pane show " id="tab-eg4-6" role="tabpanel">tab6</div>
				<div class="tab-pane show " id="tab-eg4-7" role="tabpanel">tab7</div>
				<div class="tab-pane show " id="tab-eg4-8" role="tabpanel">tab8</div>
			</div>
		</div>
		<div class="d-block text-right card-footer">
			<small> Trang Hoàng - đang hoạt động</small>
		</div>
	</div>



</div>
