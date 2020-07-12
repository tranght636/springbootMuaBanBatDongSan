<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<div class="row">
	<div class="col-lg-12">
		<div class="main-card mb-12 card">
			<div class="card-body">
				<h5 class="card-title">Chi tiết bất động sản</h5>
				<div class="scroll-area-md" style="height: 550px;">
					<div class="card-body">
						<div class="testimonial-area">
							<div class="container">
								<div class="row justify-content-center">

									<div class="card-body">
										<div id="carouselExampleControls1" class="carousel slide"
											data-ride="carousel">
											<div class="carousel-inner">
												<div class="carousel-item active">
															<img src="${urlImg1}" alt="" style="width: 1000px; height: 500px;">
														</div>
												<c:forEach var="url" items="${urlImg}">
														<div class="carousel-item">
															<img src="${url}" alt="" style="width: 1000px; height: 500px;">
														</div>
												</c:forEach>
											</div>
											<a class="carousel-control-prev"
												href="#carouselExampleControls1" role="button"
												data-slide="prev"> <span
												class="carousel-control-prev-icon" aria-hidden="true"></span>
												<span class="sr-only">Previous</span>
											</a> <a class="carousel-control-next"
												href="#carouselExampleControls1" role="button"
												data-slide="next"> <span
												class="carousel-control-next-icon" aria-hidden="true"></span>
												<span class="sr-only">Next</span>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Testimonial End -->


						<!-- Services Details Start -->
						<div class="services-details section-padding2">
							<div class="container">
								<div class="row" style="color: black;">
									<div class="col-lg-12">
										<div class=" mb-12 ">
											<div class="s-details-caption">
												<h4 style="color: blue;">${baiDangModel.title}</h4>
												<p>
													<span style="color: gray;"> Địa chỉ: </span>
													${baiDangModel.dia_chi_chi_tiet}
												</p>
												<div class="row">
													<div class="col-lg-4">
														<span style="color: gray;"> Diện tích: </span>
														${baiDangModel.dien_tich}
													</div>
													<div class="col-lg-4">
														<span style="color: gray;"> Giá: </span>
														${baiDangModel.money}
													</div>
													<div class="col-lg-4">
														<c:if test="${baiDangModel.duong_vao_m !=''}">
															<p>
																<span style="color: gray;"> Đường vào (m): </span>
																${baiDangModel.duong_vao_m}
															</p>
														</c:if>
													</div>
												</div>
												<div class="row">

													<div class="col-lg-4">
														<c:if test="${baiDangModel.so_tang !=''}">
															<p>
																<span style="color: gray;"> Số Tầng: </span>
																${baiDangModel.so_tang} tầng
															</p>
														</c:if>
													</div>
													<div class="col-lg-4">
														<c:if test="${baiDangModel.so_phong_ngu !=''}">
															<p>
																<span style="color: gray;"> Phòng ngủ: </span>
																${baiDangModel.so_tang}
															</p>
														</c:if>
													</div>
													<div class="col-lg-4">
														<c:if test="${baiDangModel.so_phong_ngu !=''}">
															<p>
																<span style="color: gray;"> WC: </span>
																${baiDangModel.so_tang}
															</p>
														</c:if>
													</div>
												</div>
												<div class="row">

													<div class="col-lg-4">
														<c:if test="${baiDangModel.huong_nha !=''}">
															<p>
																<span style="color: gray;"> Hướng: </span>
																${baiDangModel.huong_nha}
															</p>
														</c:if>
													</div>
													<div class="col-lg-4">
														<c:if test="${baiDangModel.mat_tien !=''}">
															<p>
																<span style="color: gray;"> Mặt tiền: </span>
																${baiDangModel.mat_tien}
															</p>
														</c:if>
													</div>
													<div class="col-lg-4">
														<p>
															<span style="color: gray;"> Liên hệ: </span> <span
																style="color: red;">
																${baiDangModel.thong_tin_lien_he} </span>
														</p>
													</div>
												</div>
												<br />
												<p style="color: gray;">Thông tin mô tả</p>
												<p class="details-pera1">${baiDangModel.content}</p>

												<!-- maps -->
												<div class="form-group row">
													<div class="col-md-12">
														<div class="main-card mb-3 card">
															<div class="card-body">
																<div class="card-title">Google Maps</div>
																<div id="gmap-example"
																	style="width: 100%; height: 300px; position: relative; overflow: hidden;">
																	<div
																		style="height: 100%; width: 100%; position: absolute; top: 0px; left: 0px; background-color: rgb(229, 227, 223);">
																		<div class="gm-style"
																			style="position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px;">
																			<div tabindex="0"
																				style="position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; cursor: url(&quot;http://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;), default; touch-action: none;">
																				<div
																					style="z-index: 1; position: absolute; left: 50%; top: 50%; width: 100%; transform: translate(0px, 0px);">
																					<div
																						style="position: absolute; left: 0px; top: 0px; z-index: 100; width: 100%;">
																						<div
																							style="position: absolute; left: 0px; top: 0px; z-index: 0;">
																							<div
																								style="position: absolute; z-index: 985; transform: matrix(1, 0, 0, 1, -182, -96);">
																								<div
																									style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px;">
																									<div style="width: 256px; height: 256px;"></div>
																								</div>
																								<div
																									style="position: absolute; left: -256px; top: 0px; width: 256px; height: 256px;">
																									<div style="width: 256px; height: 256px;"></div>
																								</div>
																								<div
																									style="position: absolute; left: -256px; top: -256px; width: 256px; height: 256px;">
																									<div style="width: 256px; height: 256px;"></div>
																								</div>
																								<div
																									style="position: absolute; left: 0px; top: -256px; width: 256px; height: 256px;">
																									<div style="width: 256px; height: 256px;"></div>
																								</div>
																								<div
																									style="position: absolute; left: 256px; top: -256px; width: 256px; height: 256px;">
																									<div style="width: 256px; height: 256px;"></div>
																								</div>
																								<div
																									style="position: absolute; left: 256px; top: 0px; width: 256px; height: 256px;">
																									<div style="width: 256px; height: 256px;"></div>
																								</div>
																							</div>
																						</div>
																					</div>
																					<div
																						style="position: absolute; left: 0px; top: 0px; z-index: 101; width: 100%;"></div>
																					<div
																						style="position: absolute; left: 0px; top: 0px; z-index: 102; width: 100%;"></div>
																					<div
																						style="position: absolute; left: 0px; top: 0px; z-index: 103; width: 100%;"></div>
																					<div
																						style="position: absolute; left: 0px; top: 0px; z-index: 0;">
																						<div
																							style="position: absolute; z-index: 985; transform: matrix(1, 0, 0, 1, -182, -96);">
																							<div
																								style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
																								<img draggable="false" alt=""
																									role="presentation"
																									src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i15!2i9372!3i17488!4i256!2m3!1e0!2sm!3i518233132!2m3!1e2!6m1!3e5!3m17!2svi!3sUS!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0!5m1!5f2&amp;token=109148"
																									style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
																							</div>
																							<div
																								style="position: absolute; left: -256px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
																								<img draggable="false" alt=""
																									role="presentation"
																									src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i15!2i9371!3i17488!4i256!2m3!1e0!2sm!3i518233168!2m3!1e2!6m1!3e5!3m17!2svi!3sUS!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0!5m1!5f2&amp;token=110821"
																									style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
																							</div>
																							<div
																								style="position: absolute; left: 256px; top: -256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
																								<img draggable="false" alt=""
																									role="presentation"
																									src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i15!2i9373!3i17487!4i256!2m3!1e0!2sm!3i518233252!2m3!1e2!6m1!3e5!3m17!2svi!3sUS!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0!5m1!5f2&amp;token=30691"
																									style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
																							</div>
																							<div
																								style="position: absolute; left: -256px; top: -256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
																								<img draggable="false" alt=""
																									role="presentation"
																									src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i15!2i9371!3i17487!4i256!2m3!1e0!2sm!3i518233252!2m3!1e2!6m1!3e5!3m17!2svi!3sUS!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0!5m1!5f2&amp;token=87977"
																									style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
																							</div>
																							<div
																								style="position: absolute; left: 256px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
																								<img draggable="false" alt=""
																									role="presentation"
																									src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i15!2i9373!3i17488!4i256!2m3!1e0!2sm!3i518233216!2m3!1e2!6m1!3e5!3m17!2svi!3sUS!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0!5m1!5f2&amp;token=70873"
																									style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
																							</div>
																							<div
																								style="position: absolute; left: 0px; top: -256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
																								<img draggable="false" alt=""
																									role="presentation"
																									src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i15!2i9372!3i17487!4i256!2m3!1e0!2sm!3i518233252!2m3!1e2!6m1!3e5!3m17!2svi!3sUS!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0!5m1!5f2&amp;token=59334"
																									style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
																							</div>
																						</div>
																					</div>
																				</div>
																				<div class="gm-style-pbc"
																					style="z-index: 2; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px; opacity: 0;">
																					<p class="gm-style-pbt"></p>
																				</div>
																				<div
																					style="z-index: 3; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px; touch-action: pan-x pan-y;">
																					<div
																						style="z-index: 4; position: absolute; left: 50%; top: 50%; width: 100%; transform: translate(0px, 0px);">
																						<div
																							style="position: absolute; left: 0px; top: 0px; z-index: 104; width: 100%;"></div>
																						<div
																							style="position: absolute; left: 0px; top: 0px; z-index: 105; width: 100%;"></div>
																						<div
																							style="position: absolute; left: 0px; top: 0px; z-index: 106; width: 100%;"></div>
																						<div
																							style="position: absolute; left: 0px; top: 0px; z-index: 107; width: 100%;"></div>
																					</div>
																				</div>
																			</div>
																			<iframe aria-hidden="true" frameborder="0"
																				tabindex="-1"
																				style="z-index: -1; position: absolute; width: 100%; height: 100%; top: 0px; left: 0px; border: none;"></iframe>
																			<div
																				style="margin-left: 5px; margin-right: 5px; z-index: 1000000; position: absolute; left: 0px; bottom: 0px;">
																				<a target="_blank" rel="noopener"
																					href="https://maps.google.com/maps?ll=-12.043333,-77.028333&amp;z=15&amp;t=m&amp;hl=vi&amp;gl=US&amp;mapclient=apiv3"
																					title="Mở khu vực này trong Google Maps (mở cửa sổ mới)"
																					style="position: static; overflow: visible; float: none; display: inline;"><div
																						style="width: 66px; height: 26px; cursor: pointer;">
																						<img alt=""
																							src="http://maps.gstatic.com/mapfiles/api-3/images/google4_hdpi.png"
																							draggable="false"
																							style="position: absolute; left: 0px; top: 0px; width: 66px; height: 26px; user-select: none; border: 0px; padding: 0px; margin: 0px;">
																					</div></a>
																			</div>
																			<div
																				style="background-color: white; padding: 15px 21px; border: 1px solid rgb(171, 171, 171); font-family: Roboto, Arial, sans-serif; color: rgb(34, 34, 34); box-sizing: border-box; box-shadow: rgba(0, 0, 0, 0.2) 0px 4px 16px; z-index: 10000002; display: none; width: 300px; height: 180px; position: absolute; left: 117px; top: 60px;">
																				<div
																					style="padding: 0px 0px 10px; font-size: 16px; box-sizing: border-box;">Dữ
																					liệu Bản đồ</div>
																				<div style="font-size: 13px;">Dữ liệu bản đồ
																					©2020</div>
																				<button draggable="false" title="Đóng"
																					aria-label="Đóng" type="button"
																					class="gm-ui-hover-effect"
																					style="background: none; display: block; border: 0px; margin: 0px; padding: 0px; position: absolute; cursor: pointer; user-select: none; top: 0px; right: 0px; width: 37px; height: 37px;">
																					<img
																						src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224px%22%20height%3D%2224px%22%20viewBox%3D%220%200%2024%2024%22%20fill%3D%22%23000000%22%3E%0A%20%20%20%20%3Cpath%20d%3D%22M19%206.41L17.59%205%2012%2010.59%206.41%205%205%206.41%2010.59%2012%205%2017.59%206.41%2019%2012%2013.41%2017.59%2019%2019%2017.59%2013.41%2012z%22%2F%3E%0A%20%20%20%20%3Cpath%20d%3D%22M0%200h24v24H0z%22%20fill%3D%22none%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																						style="pointer-events: none; display: block; width: 13px; height: 13px; margin: 12px;">
																				</button>
																			</div>
																			<div class="gmnoprint"
																				style="z-index: 1000001; position: absolute; right: 305px; bottom: 0px; width: 109px;">
																				<div draggable="false" class="gm-style-cc"
																					style="user-select: none; height: 14px; line-height: 14px;">
																					<div
																						style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
																						<div style="width: 1px;"></div>
																						<div
																							style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div>
																					</div>
																					<div
																						style="position: relative; padding-right: 6px; padding-left: 6px; box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
																						<a
																							style="text-decoration: none; cursor: pointer; display: none;">Dữ
																							liệu Bản đồ</a><span>Dữ liệu bản đồ ©2020</span>
																					</div>
																				</div>
																			</div>
																			<div class="gmnoscreen"
																				style="position: absolute; right: 0px; bottom: 0px;">
																				<div
																					style="font-family: Roboto, Arial, sans-serif; font-size: 11px; color: rgb(68, 68, 68); direction: ltr; text-align: right; background-color: rgb(245, 245, 245);">Dữ
																					liệu bản đồ ©2020</div>
																			</div>
																			<div class="gmnoprint gm-style-cc" draggable="false"
																				style="z-index: 1000001; user-select: none; height: 14px; line-height: 14px; position: absolute; right: 114px; bottom: 0px;">
																				<div
																					style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
																					<div style="width: 1px;"></div>
																					<div
																						style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div>
																				</div>
																				<div
																					style="position: relative; padding-right: 6px; padding-left: 6px; box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
																					<a
																						href="https://www.google.com/intl/vi_US/help/terms_maps.html"
																						target="_blank" rel="noopener"
																						style="text-decoration: none; cursor: pointer; color: rgb(68, 68, 68);">Điều
																						khoản sử dụng</a>
																				</div>
																			</div>
																			<button draggable="false"
																				title="Chuyển đổi chế độ xem toàn màn hình"
																				aria-label="Chuyển đổi chế độ xem toàn màn hình"
																				type="button"
																				class="gm-control-active gm-fullscreen-control"
																				style="background: none rgb(255, 255, 255); border: 0px; margin: 10px; padding: 0px; position: absolute; cursor: pointer; user-select: none; border-radius: 2px; height: 40px; width: 40px; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; overflow: hidden; top: 0px; right: 0px;">
																				<img
																					src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%20018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23666%22%20d%3D%22M0%2C0v2v4h2V2h4V0H2H0z%20M16%2C0h-4v2h4v4h2V2V0H16z%20M16%2C16h-4v2h4h2v-2v-4h-2V16z%20M2%2C12H0v4v2h2h4v-2H2V12z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																					style="height: 18px; width: 18px;"><img
																					src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23333%22%20d%3D%22M0%2C0v2v4h2V2h4V0H2H0z%20M16%2C0h-4v2h4v4h2V2V0H16z%20M16%2C16h-4v2h4h2v-2v-4h-2V16z%20M2%2C12H0v4v2h2h4v-2H2V12z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																					style="height: 18px; width: 18px;"><img
																					src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23111%22%20d%3D%22M0%2C0v2v4h2V2h4V0H2H0z%20M16%2C0h-4v2h4v4h2V2V0H16z%20M16%2C16h-4v2h4h2v-2v-4h-2V16z%20M2%2C12H0v4v2h2h4v-2H2V12z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																					style="height: 18px; width: 18px;">
																			</button>
																			<div draggable="false" class="gm-style-cc"
																				style="user-select: none; height: 14px; line-height: 14px; position: absolute; right: 0px; bottom: 0px;">
																				<div
																					style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
																					<div style="width: 1px;"></div>
																					<div
																						style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div>
																				</div>
																				<div
																					style="position: relative; padding-right: 6px; padding-left: 6px; box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
																					<a target="_blank" rel="noopener"
																						title="Báo cáo lỗi trong bản đồ đường hoặc hình ảnh đến Google"
																						href="https://www.google.com/maps/@-12.043333,-77.028333,15z/data=!10m1!1e1!12b1?source=apiv3&amp;rapsrc=apiv3"
																						style="font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); text-decoration: none; position: relative;">Báo
																						cáo một lỗi bản đồ</a>
																				</div>
																			</div>
																			<div class="gmnoprint gm-bundled-control"
																				draggable="false" controlwidth="40"
																				controlheight="81"
																				style="margin: 10px; user-select: none; position: absolute; left: 0px; top: 0px;">
																				<div class="gmnoprint" controlwidth="40"
																					controlheight="81"
																					style="position: absolute; left: 0px; top: 0px;">
																					<div draggable="false"
																						style="user-select: none; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px; cursor: pointer; background-color: rgb(255, 255, 255); width: 40px; height: 81px;">
																						<button draggable="false" title="Phóng to"
																							aria-label="Phóng to" type="button"
																							class="gm-control-active"
																							style="background: none; display: block; border: 0px; margin: 0px; padding: 0px; position: relative; cursor: pointer; user-select: none; overflow: hidden; width: 40px; height: 40px; top: 0px; left: 0px;">
																							<img
																								src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpolygon%20fill%3D%22%23666%22%20points%3D%2218%2C7%2011%2C7%2011%2C0%207%2C0%207%2C7%200%2C7%200%2C11%207%2C11%207%2C18%2011%2C18%2011%2C11%2018%2C11%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																								style="height: 18px; width: 18px;"><img
																								src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpolygon%20fill%3D%22%23333%22%20points%3D%2218%2C7%2011%2C7%2011%2C0%207%2C0%207%2C7%200%2C7%200%2C11%207%2C11%207%2C18%2011%2C18%2011%2C11%2018%2C11%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																								style="height: 18px; width: 18px;"><img
																								src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpolygon%20fill%3D%22%23111%22%20points%3D%2218%2C7%2011%2C7%2011%2C0%207%2C0%207%2C7%200%2C7%200%2C11%207%2C11%207%2C18%2011%2C18%2011%2C11%2018%2C11%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																								style="height: 18px; width: 18px;">
																						</button>
																						<div
																							style="position: relative; overflow: hidden; width: 30px; height: 1px; margin: 0px 5px; background-color: rgb(230, 230, 230); top: 0px;"></div>
																						<button draggable="false" title="Thu nhỏ"
																							aria-label="Thu nhỏ" type="button"
																							class="gm-control-active"
																							style="background: none; display: block; border: 0px; margin: 0px; padding: 0px; position: relative; cursor: pointer; user-select: none; overflow: hidden; width: 40px; height: 40px; top: 0px; left: 0px;">
																							<img
																								src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23666%22%20d%3D%22M0%2C7h18v4H0V7z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																								style="height: 18px; width: 18px;"><img
																								src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23333%22%20d%3D%22M0%2C7h18v4H0V7z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																								style="height: 18px; width: 18px;"><img
																								src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23111%22%20d%3D%22M0%2C7h18v4H0V7z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																								style="height: 18px; width: 18px;">
																						</button>
																					</div>
																				</div>
																			</div>
																			<div
																				class="gmnoprint gm-bundled-control gm-bundled-control-on-bottom"
																				draggable="false" controlwidth="0" controlheight="0"
																				style="margin: 10px; user-select: none; position: absolute; display: none; bottom: 14px; right: 0px;">
																				<div
																					style="position: absolute; left: 0px; top: 0px;"></div>
																				<div class="gmnoprint" controlwidth="40"
																					controlheight="40"
																					style="display: none; position: absolute;">
																					<div style="width: 40px; height: 40px;">
																						<button draggable="false"
																							title="Xoay bản đồ 90 độ"
																							aria-label="Xoay bản đồ 90 độ" type="button"
																							class="gm-control-active"
																							style="background: none rgb(255, 255, 255); display: none; border: 0px; margin: 0px 0px 32px; padding: 0px; position: relative; cursor: pointer; user-select: none; width: 40px; height: 40px; top: 0px; left: 0px; overflow: hidden; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px;">
																							<img
																								src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224%22%20height%3D%2222%22%20viewBox%3D%220%200%2024%2022%22%3E%0A%20%20%3Cpath%20fill%3D%22%23666%22%20fill-rule%3D%22evenodd%22%20d%3D%22M20%2010c0-5.52-4.48-10-10-10s-10%204.48-10%2010v5h5v-5c0-2.76%202.24-5%205-5s5%202.24%205%205v5h-4l6.5%207%206.5-7h-4v-5z%22%20clip-rule%3D%22evenodd%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																								style="height: 18px; width: 18px;"><img
																								src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224%22%20height%3D%2222%22%20viewBox%3D%220%200%2024%2022%22%3E%0A%20%20%3Cpath%20fill%3D%22%23333%22%20fill-rule%3D%22evenodd%22%20d%3D%22M20%2010c0-5.52-4.48-10-10-10s-10%204.48-10%2010v5h5v-5c0-2.76%202.24-5%205-5s5%202.24%205%205v5h-4l6.5%207%206.5-7h-4v-5z%22%20clip-rule%3D%22evenodd%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																								style="height: 18px; width: 18px;"><img
																								src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224%22%20height%3D%2222%22%20viewBox%3D%220%200%2024%2022%22%3E%0A%20%20%3Cpath%20fill%3D%22%23111%22%20fill-rule%3D%22evenodd%22%20d%3D%22M20%2010c0-5.52-4.48-10-10-10s-10%204.48-10%2010v5h5v-5c0-2.76%202.24-5%205-5s5%202.24%205%205v5h-4l6.5%207%206.5-7h-4v-5z%22%20clip-rule%3D%22evenodd%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																								style="height: 18px; width: 18px;">
																						</button>
																						<button draggable="false" title="Nghiêng bản đồ"
																							aria-label="Nghiêng bản đồ" type="button"
																							class="gm-tilt gm-control-active"
																							style="background: none rgb(255, 255, 255); display: block; border: 0px; margin: 0px; padding: 0px; position: relative; cursor: pointer; user-select: none; width: 40px; height: 40px; top: 0px; left: 0px; overflow: hidden; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px;">
																							<img
																								src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218px%22%20height%3D%2216px%22%20viewBox%3D%220%200%2018%2016%22%3E%0A%20%20%3Cpath%20fill%3D%22%23666%22%20d%3D%22M0%2C16h8V9H0V16z%20M10%2C16h8V9h-8V16z%20M0%2C7h8V0H0V7z%20M10%2C0v7h8V0H10z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																								style="width: 18px;"><img
																								src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218px%22%20height%3D%2216px%22%20viewBox%3D%220%200%2018%2016%22%3E%0A%20%20%3Cpath%20fill%3D%22%23333%22%20d%3D%22M0%2C16h8V9H0V16z%20M10%2C16h8V9h-8V16z%20M0%2C7h8V0H0V7z%20M10%2C0v7h8V0H10z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																								style="width: 18px;"><img
																								src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218px%22%20height%3D%2216px%22%20viewBox%3D%220%200%2018%2016%22%3E%0A%20%20%3Cpath%20fill%3D%22%23111%22%20d%3D%22M0%2C16h8V9H0V16z%20M10%2C16h8V9h-8V16z%20M0%2C7h8V0H0V7z%20M10%2C0v7h8V0H10z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																								style="width: 18px;">
																						</button>
																					</div>
																				</div>
																			</div>
																			<div draggable="false" class="gm-style-cc"
																				style="position: absolute; user-select: none; height: 14px; line-height: 14px; right: 215px; bottom: 0px;">
																				<div
																					style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
																					<div style="width: 1px;"></div>
																					<div
																						style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div>
																				</div>
																				<div
																					style="position: relative; padding-right: 6px; padding-left: 6px; box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
																					<span>200 m&nbsp;</span>
																					<div
																						style="position: relative; display: inline-block; height: 8px; bottom: -1px; width: 47px;">
																						<div
																							style="width: 100%; height: 4px; position: absolute; left: 0px; top: 0px;"></div>
																						<div
																							style="width: 4px; height: 8px; left: 0px; top: 0px; background-color: rgb(255, 255, 255);"></div>
																						<div
																							style="width: 4px; height: 8px; position: absolute; background-color: rgb(255, 255, 255); right: 0px; bottom: 0px;"></div>
																						<div
																							style="position: absolute; background-color: rgb(102, 102, 102); height: 2px; left: 1px; bottom: 1px; right: 1px;"></div>
																						<div
																							style="position: absolute; width: 2px; height: 6px; left: 1px; top: 1px; background-color: rgb(102, 102, 102);"></div>
																						<div
																							style="width: 2px; height: 6px; position: absolute; background-color: rgb(102, 102, 102); bottom: 1px; right: 1px;"></div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div
																		style="background-color: white; font-weight: 500; font-family: Roboto, sans-serif; padding: 15px 25px; box-sizing: border-box; top: 5px; border: 1px solid rgba(0, 0, 0, 0.12); border-radius: 5px; left: 50%; max-width: 375px; position: absolute; transform: translateX(-50%); width: calc(100% - 10px); z-index: 1;">
																		<div>
																			<img alt=""
																				src="http://maps.gstatic.com/mapfiles/api-3/images/google_gray.svg"
																				draggable="false"
																				style="padding: 0px; margin: 0px; border: 0px; height: 17px; vertical-align: middle; width: 52px; user-select: none;">
																		</div>
																		<div style="line-height: 20px; margin: 15px 0px;">
																			<span
																				style="color: rgba(0, 0, 0, 0.87); font-size: 14px;">Trang
																				này không thể tải Google Maps đúng cách.</span>
																		</div>
																		<table style="width: 100%;">
																			<tr>
																				<td
																					style="line-height: 16px; vertical-align: middle;"><a
																					href="https://developers.google.com/maps/documentation/javascript/error-messages?utm_source=maps_js&amp;utm_medium=degraded&amp;utm_campaign=keyless#api-key-and-billing-errors"
																					target="_blank" rel="noopener"
																					style="color: rgba(0, 0, 0, 0.54); font-size: 12px;">Bạn
																						có sở hữu trang web này không?</a></td>
																				<td style="text-align: right;"><button
																						class="btn dismissButton">OK</button></td>
																			</tr>
																		</table>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>


											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>














