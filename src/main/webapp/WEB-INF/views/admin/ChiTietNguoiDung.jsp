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
											<input name="id" value="${userModel.id}" hidden="true" />

											<div class="form-group row">
												<h6 class="col-lg-2">Username</h6>
												<input type="text"
													class=" col-lg-10 form-control form-control-user"
													id="username" placeholder="Full Name" name="username"
													value="${userModel.username}" disabled="disabled">
											</div>
											<div class="form-group row">
												<h6 class="col-lg-2">Email</h6>
												<input type="email"
													class=" col-lg-10 form-control form-control-user input-register-email"
													placeholder="Email Address" name="email"
													value="${userModel.email}" disabled="disabled">
											</div>
											<div class="form-group row">
												<h6 class="col-lg-2">Address</h6>
												<input type="text"
													class="col-sm-10 form-control form-control-user"
													id="address" placeholder="Address" name="address"
													value="${userModel.address }" disabled="disabled">
											</div>
											<div class="form-group row">
												<h6 class="col-lg-2">Phone Number</h6>
												<input type="text"
													class="col-sm-10 form-control form-control-user" id="phone"
													placeholder="Phone" name="phoneNumber"
													value="${userModel.phone_number }" disabled="disabled">
											</div>
											<div class="form-group row">
												<h6 class="col-lg-2">Day of Birth</h6>
												<input type="date"
													class=" col-sm-10 form-control form-control-user" id="dob"
													name="dob" title="Date of birth" ${userModel.dob}
													disabled="disabled">
											</div>
											<c:choose>
												<c:when test="${userModel.status == 1}">
													<button id="btn-CTTK-XoaTaiKhoan" id-user="${userModel.id}" type="button" class="mb-2 mr-2 btn btn-primary"
													style="width: 300px; float: right; margin-bottom: 15px;">Xóa
													tài khoản</button>
												</c:when>
												<c:otherwise>
													<button id="btn-CTTK-KhoiPhucTaiKhoan" id-user="${userModel.id}" type="button" class="mb-2 mr-2 btn btn-primary"
													style="width: 300px; float: right; margin-bottom: 15px;">Khôi
													phục tài khoản</button>
												</c:otherwise>
											</c:choose>
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
												<c:forEach var="bds" items="${BDSYeuThich}">
													<li class="list-group-item-action list-group-item">
														<div class="single-profile-front row">
															<div class="profile-img col-lg-2">
																<img src="/img/web/item2.jpg" alt=""
																	style="border-radius: 10px 10px 10px 10px; max-width: 150px;">
															</div>
															<div class="col-lg-10">
																<div class="profile-caption"
																	style="margin-left: 5px; margin-right: 5px; text-align: left;">
																	<h6 style="color: black;">${bds.title}</h6>
																	<h6 style="color: blue;">${bds.money}-
																		${bds.dien_tich} - ${bds.dia_chi_chi_tiet}</h6>
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
				<div class="tab-pane show " id="tab-eg4-2" role="tabpanel">
					<div class="row" style="width: 100%;">
						<div class="col-lg-12">
							<div class="main-card mb-12 card">
								<div class="card-body">
									<h5 class="card-title">Bất động sản chờ giao dịch</h5>
									<div class="scroll-area-md" style="height: 450px;">
										<div class="card-body">
											<ul class="list-group">
												<c:forEach var="bds" items="${BDSChoGiaoDich}">
													<li class="list-group-item-action list-group-item">
														<div class="single-profile-front row">
															<div class="profile-img col-lg-2">
																<img src="/img/web/item2.jpg" alt=""
																	style="border-radius: 10px 10px 10px 10px; max-width: 150px;">
															</div>
															<div class="col-lg-8">
																<div class="profile-caption"
																	style="margin-left: 5px; margin-right: 5px; text-align: left;">
																	<h6 style="color: black;">${bds.title}</h6>
																	<h6 style="color: blue;">${bds.money}-
																		${bds.dien_tich} - ${bds.dia_chi_chi_tiet}</h6>
																</div>
															</div>
															<div class="col-lg-2">
																<div class="profile-caption"
																	style="margin-left: 5px; margin-right: 5px; text-align: left;">
																	<div style="text-align: right;">
																		<div class="badge badge-success btn btn-CTND-camBDS" id-baidang ="${bds.id}">Cấm BDS</div>
																	</div>
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
				<!-- Bất động sản chờ xác nhận -->
				<div class="tab-pane show " id="tab-eg4-3" role="tabpanel">
					<div class="row" style="width: 100%;">
						<div class="col-lg-12">
							<div class="main-card mb-12 card">
								<div class="card-body">
									<h5 class="card-title">Bất động sản chờ xác nhận</h5>
									<div class="scroll-area-md" style="height: 450px;">
										<div class="card-body">
											<ul class="list-group">
												<c:forEach var="bds" items="${BDSChoXacNhan}">
													<li class="list-group-item-action list-group-item">
														<div class="single-profile-front row">
															<div class="profile-img col-lg-2">
																<img src="/img/web/item2.jpg" alt=""
																	style="border-radius: 10px 10px 10px 10px; max-width: 150px;">
															</div>
															<div class="col-lg-8">
																<div class="profile-caption"
																	style="margin-left: 5px; margin-right: 5px; text-align: left;">
																	<h6 style="color: black;">${bds.title}</h6>
																	<h6 style="color: blue;">${bds.money}-
																		${bds.dien_tich} - ${bds.dia_chi_chi_tiet}</h6>
																</div>
															</div>
															<div class="col-lg-2">
																<div class="profile-caption"
																	style="margin-left: 5px; margin-right: 5px; text-align: left;">
																	<div style="text-align: right;">
																		<div class="badge badge-success btn btn-CTND-xacnhan" id-baidang ="${bds.id}">Xác nhận</div>
																	</div>
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
				<!-- Bất động sản đẩy tin -->
				<div class="tab-pane show " id="tab-eg4-4" role="tabpanel">
					<div class="row" style="width: 100%;">
						<div class="col-lg-12">
							<div class="main-card mb-12 card">
								<div class="card-body">
									<h5 class="card-title">Bất động sản đẩy tin</h5>
									<div class="scroll-area-md" style="height: 450px;">
										<div class="card-body">
											<ul class="list-group">
												<c:forEach var="bds" items="${BDSDayTin}">
													<c:choose>
														<c:when test="${bds.actived == 1}">
															<li class="list-group-item-action list-group-item">
																<div class="single-profile-front row">
																	<div class="profile-img col-lg-2">
																		<img src="/img/web/item2.jpg" alt=""
																			style="border-radius: 10px 10px 10px 10px; max-width: 150px;">
																	</div>
																	<div class="col-lg-8">
																		<div class="profile-caption"
																			style="margin-left: 5px; margin-right: 5px; text-align: left;">
																			<h6 style="color: black;">${bds.title}</h6>
																			<h6 style="color: blue;">${bds.money}-
																				${bds.dien_tich} - ${bds.dia_chi_chi_tiet}</h6>
																		</div>
																	</div>
																	<div class="profile-img col-lg-2"
																		style="text-align: right; font-size: 30px;">
																		<i class="btn-CTND-daytin metismenu-icon pe-7s-rocket font-icon-wrapper btn-outline-danger btn-icon-only btn-icon"
																			style="color: green;" id-baidang ="${bds.id}" data-toggle="tooltip" title="Đẩy tin" ></i>
																	</div>
																</div>
															</li>
														</c:when>
														<c:otherwise>
															<li class="list-group-item-action list-group-item">
																<div class="single-profile-front row">
																	<div class="profile-img col-lg-2">
																		<img src="/img/web/item2.jpg" alt=""
																			style="border-radius: 10px 10px 10px 10px; max-width: 150px;">
																	</div>
																	<div class="col-lg-10">
																		<div class="profile-caption"
																			style="margin-left: 5px; margin-right: 5px; text-align: left;">
																			<h6 style="color: black;">${bds.title}</h6>
																			<h6 style="color: blue;">${bds.money}-
																				${bds.dien_tich} - ${bds.dia_chi_chi_tiet}</h6>
																		</div>
																	</div>
																</div>
															</li>
														</c:otherwise>
													</c:choose>

												</c:forEach>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane show " id="tab-eg4-5" role="tabpanel">tab5</div>
				<div class="tab-pane show " id="tab-eg4-6" role="tabpanel">tab6</div>
				<!-- Bất động sản bị cấm -->
				<div class="tab-pane show " id="tab-eg4-7" role="tabpanel">
					<div class="row" style="width: 100%;">
						<div class="col-lg-12">
							<div class="main-card mb-12 card">
								<div class="card-body">
									<h5 class="card-title">Bất động sản bị cấm</h5>
									<div class="scroll-area-md" style="height: 450px;">
										<div class="card-body">
											<ul class="list-group">
												<c:forEach var="bds" items="${BDSBiCam}">
													<li class="list-group-item-action list-group-item">
														<div class="single-profile-front row">
															<div class="profile-img col-lg-2">
																<img src="/img/web/item2.jpg" alt=""
																	style="border-radius: 10px 10px 10px 10px; max-width: 150px;">
															</div>
															<div class="col-lg-8">
																<div class="profile-caption"
																	style="margin-left: 5px; margin-right: 5px; text-align: left;">
																	<h6 style="color: black;">${bds.title}</h6>
																	<h6 style="color: blue;">${bds.money}- ${bds.dien_tich} - ${bds.dia_chi_chi_tiet}</h6>
																</div>
															</div>
															<div class="col-lg-2">
																<div class="profile-caption"
																	style="margin-left: 5px; margin-right: 5px; text-align: left;">
																	<div style="text-align: right;">
																		<div class="btn-CTND-khoiphuc badge badge-success btn" id-baidang ="${bds.id}">Khôi phục</div>
																	</div>
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
				<!-- bất động sản bị xóa -->
				<div class="tab-pane show " id="tab-eg4-8" role="tabpanel">
					<div class="row" style="width: 100%;">
						<div class="col-lg-12">
							<div class="main-card mb-12 card">
								<div class="card-body">
									<h5 class="card-title">Bất động sản bị xóa</h5>
									<div class="scroll-area-md" style="height: 450px;">
										<div class="card-body">
											<ul class="list-group">
												<c:forEach var="bds" items="${BDSBiXoa}">
													<li class="list-group-item-action list-group-item">
														<div class="single-profile-front row">
															<div class="profile-img col-lg-2">
																<img src="/img/web/item2.jpg" alt=""
																	style="border-radius: 10px 10px 10px 10px; max-width: 150px;">
															</div>
															<div class="col-lg-10">
																<div class="profile-caption"
																	style="margin-left: 5px; margin-right: 5px; text-align: left;">
																	<h6 style="color: black;">${bds.title}</h6>
																	<h6 style="color: blue;">${bds.money}-
																		${bds.dien_tich} - ${bds.dia_chi_chi_tiet}</h6>
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
			</div>
		</div>
		<div class="d-block text-right card-footer">
			<c:choose>
				<c:when test="${userModel.status == 1}">
					${userModel.username} - hoạt động
				</c:when>
				<c:otherwise>
					${userModel.username} - đã bị admin xóa
				</c:otherwise>
			</c:choose>
		</div>
	</div>

<script src="/js/admin/chitietnguoidung.js"></script>

</div>
