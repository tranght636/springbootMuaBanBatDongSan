<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<div class="row" style="width: 100%;">
	<div class="col-lg-12" >
	    <div class="main-card mb-12 card">
	        <div class="card-body"><h5 class="card-title">Bất động sản chờ giao dịch</h5>
	            <div class="scroll-area-md" style="height: 550px;">
	               	<div class="card-body">
						<ul class="list-group">
						<c:forEach var="bds" items="${BDSChoGiaoDich}">
							<li class="list-group-item-action list-group-item" >
								<div class="single-profile-front row" >
									
									<div class="profile-img col-lg-2" >
										<img  src="${mapUrl.get(bds.id)}" alt="" style="border-radius: 10px 10px 10px 10px;width: 150px; height: 100px;">
									</div>
									<div class="col-lg-8">
										<a  href="/trang-ca-nhan/chi-tiet-bat-dong-san?id=${bds.id}" >
										<div class="profile-caption" style="margin-left: 5px;margin-right: 5px; text-align: left;">
											 <h6 style="color: black;">  ${bds.title}</h6>
											<h6 style="color: blue;">${bds.money} - ${bds.dien_tich} - ${bds.dia_chi_chi_tiet}</h6>
										</div>
										</a>
									</div>
									
									<div class="profile-img col-lg-2" style="text-align: right; font-size: 30px;" >
										<a href="/trang-ca-nhan/sua-bat-dong-san?id=${bds.id}" data-toggle="tooltip" title="Sửa bất động sản" class="metismenu-icon pe-7s-pen font-icon-wrapper btn-outline-danger btn-icon-only btn-icon">
										</a>
										<i data-toggle="tooltip" title="Xóa bất động sản" id-baidang="${bds.id}" class="btn-BDSCGD-delete metismenu-icon pe-7s-trash font-icon-wrapper btn-outline-danger btn-icon-only btn-icon"></i>
										<c:if test="${bds.actived < 1}">
											<br/>
											
											<a href="/trang-ca-nhan/dang-ky-day-tin?id=${bds.id}" style="font-size: 10px;"> đăng ký đẩy tin</a>
											<%-- <button class="btn btn-primary btn_BDSChoGiaoDich_DangKyDayTin" id-baidang="${bds.id}" style="font-size: 10px;" >Đăng ký đẩy tin</button> --%>
										</c:if>
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
<script src="/js/trangcanhan/batdongsanchogiaodich.js"></script>
