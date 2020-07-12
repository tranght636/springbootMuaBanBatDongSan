<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<div class="row" style="width: 100%;">
	<div class="col-lg-12">
		<div class="main-card mb-12 card">
			<div class="card-body">
				<h5 class="card-title">Bất động sản chờ xác nhận</h5>
				<div class="scroll-area-md" style="height: 550px;">
					<div class="card-body">
						<ul class="list-group">
							<c:forEach var="bds" items="${BDSChoXacNhan}">
								<li class="list-group-item-action list-group-item">
									<div class="single-profile-front row">
										<div class="profile-img col-lg-2">
												<img src="${mapUrl.get(bds.id)}" alt=""
													style="border-radius: 10px 10px 10px 10px; width: 150px; height: 100px;">
										</div>
										<div class="col-lg-7">
										<a href="/admin/chi-tiet-bat-dong-san-admin?id=${bds.id}">
											<div class="profile-caption"
												style="margin-left: 5px; margin-right: 5px; text-align: left;">
												<h6 style="color: black;">${bds.title}</h6>
												<h6 style="color: blue;">${bds.money}- ${bds.dien_tich}
													- ${bds.dia_chi_chi_tiet}</h6>
												<small>${bds.start_day}</small>
											</div>
											</a>
										</div>
										<div class="profile-img col-lg-3"
											style="text-align: right; font-size: 30px;">
											<button class="mb-2 mr-2 btn btn-primary btn-BDSCXN-xacnhan"
												id-baidang="${bds.id}">Xác nhận</button>
											<button class="mb-2 mr-2 btn btn-danger btn-BDSCXN-cam"
												id-baidang="${bds.id}">Cấm BDS</button>
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
<script src="/js/admin/batdongsanchoxacnhan.js"></script>

