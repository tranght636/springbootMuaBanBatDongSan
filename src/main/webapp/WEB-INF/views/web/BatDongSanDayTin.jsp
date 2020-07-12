<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<div class="row" style="width: 100%;">
	<div class="col-lg-12">
		<div class="main-card mb-12 card">
			<div class="card-body">
				<h5 class="card-title">Bất động sản đẩy tin</h5>
				<div class="scroll-area-md" style="height: 550px;">
					<div class="card-body">
						<ul class="list-group">
							<c:forEach var="bds" items="${BDSDayTin}">
								<li class="list-group-item-action list-group-item">
									<div class="single-profile-front row">
										<div class="profile-img col-lg-2">
											<img src="${mapUrl.get(bds.id)}" alt=""
												style="border-radius: 10px 10px 10px 10px; width: 150px; height: 100px;">
										</div>
										<div class="col-lg-8">
											<a href="/trang-ca-nhan/chi-tiet-bat-dong-san?id=${bds.id}">
												<div class="profile-caption"
													style="margin-left: 5px; margin-right: 5px; text-align: left;">
													<h6 style="color: black;">${bds.title}</h6>
													<h6 style="color: blue;">${bds.money}-
														${bds.dien_tich} - ${bds.dia_chi_chi_tiet}</h6>
												</div>
											</a>
										</div>
										<div class="profile-img col-lg-2"
											style="text-align: right; font-size: 30px;">
											<c:if test="${bds.actived ==1}">
											<i class="metismenu-icon pe-7s-mail font-icon-wrapper btn-outline-danger btn-icon-only btn-icon"data-toggle="tooltip" title="Tự động nhắc nhỡ admin" ></i>
											</c:if>
												
											<i
												class="metismenu-icon pe-7s-pen font-icon-wrapper btn-outline-danger btn-icon-only btn-icon"></i>
											<i
												class="metismenu-icon pe-7s-trash font-icon-wrapper btn-outline-danger btn-icon-only btn-icon btn-BDSDT-Xoa" id-baidang="${bds.id}"></i>
											<c:choose>
												<c:when test="${bds.actived ==1}">
													<br />
													<small style="font-size: 10px;">Đang chờ admin đẩy
														tin</small>
												</c:when>
												<c:otherwise>
													<br />
													<small style="font-size: 10px;">Còn 1 ngày</small>
												</c:otherwise>
											</c:choose>
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
<script src="/js/trangcanhan/batdongsandaytin.js"></script>
