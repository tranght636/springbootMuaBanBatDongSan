<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>

<div class="card-body">
	<div style="text-align: right;">
		<a type="button" class="btn btn-primary"
			href='<c:url value="/admin/quan-ly-nguoi-dung"/>'
			style="margin-bottom: 2px;">Làm mới </a>
	</div>
	<div class="mb-3 card">
		<div class="card-header">
			<ul class="nav nav-justified">
				<li class="nav-item"><a data-toggle="tab" href="#tab-eg7-0"
					class="nav-link show active">Người dùng còn hoạt động</a></li>
				<li class="nav-item"><a data-toggle="tab" href="#tab-eg7-1"
					class="nav-link show ">Người dùng đã bị xóa</a></li>
			</ul>
		</div>
		<div class="card-body">

			<div class="tab-content">

				<div class="tab-pane show active" id="tab-eg7-0" role="tabpanel">
					<!--  -->
					<div class="scroll-area-md" style="height: 550px;">
						<div class="card-body">
							<ul class="list-group">
								<c:forEach var="user" items="${userDangHoatDong}">
									<li class="list-group-item-action list-group-item">

										<div class="single-profile-front row">
											<div class="profile-img col-lg-8">
												<a
													href='<c:url value="/admin/chi-tiet-nguoi-dung?user-id=${user.id }"/>'>
													<div class="widget-content p-0">
														<div class="widget-content-wrapper">
															<div class="widget-content-left mr-3">
																<div class="widget-content-left">
																	<img width="40" height="40" class="rounded-circle"
																		src="/img/web/user.png" alt="">
																</div>
															</div>
															<div class="widget-content-left flex2">
																<div class="widget-heading">${user.username}</div>
																<small>Email: ${user.email} - SDT:
																	${user.phone_number} - DC: ${user.address} </small>
															</div>
														</div>
													</div>
												</a>
											</div>

											<div class="col-lg-4">
												<div class="profile-caption"
													style="margin-left: 5px; margin-right: 5px; text-align: left;">
													<div style="text-align: right;">
														<div class="badge badge-success btn">Hoạt động</div>
														<div class="badge badge-danger btn DSND-btn-xoa"
															id-user="${user.id}">Xóa</div>
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

				<div class="tab-pane show " id="tab-eg7-1" role="tabpanel">
					<!--  -->
					<div class="scroll-area-md" style="height: 550px;">
						<div class="card-body">
							<ul class="list-group">
								<c:forEach var="user" items="${userDaXoa}">
									<li class="list-group-item-action list-group-item">
										<div class="single-profile-front row">
											<div class="profile-img col-lg-8">
												<a
													href='<c:url value="/admin/chi-tiet-nguoi-dung?user-id=${user.id }"/>'>
													<div class="widget-content p-0">
														<div class="widget-content-wrapper">
															<div class="widget-content-left mr-3">
																<div class="widget-content-left">
																	<img width="40" height="40" class="rounded-circle"
																		src="/img/web/user.png" alt="">
																</div>
															</div>
															<div class="widget-content-left flex2">
																<div class="widget-heading">${user.username}</div>
																<small>Email: ${user.email} - SDT:
																	${user.phone_number} - DC: ${user.address} </small>
															</div>
														</div>
												</a>
											</div>
										</div>
										<div class="col-lg-4">
											<div class="profile-caption"
												style="margin-left: 5px; margin-right: 5px; text-align: left;">

												<div style="text-align: right;">
													<div class="badge badge-success btn DSND-btn-khoi-phuc"
														id-user="${user.id}">Khôi phục</div>
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
		</div>
	</div>
</div>
</div>
<script src="/js/admin/danhsachnguoidung.js"></script>
