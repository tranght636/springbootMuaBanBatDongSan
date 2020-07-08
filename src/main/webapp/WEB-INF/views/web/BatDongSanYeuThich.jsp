<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<div class="row" style="width: 100%;">
	<div class="col-lg-12" >
	    <div class="main-card mb-12 card">
	        <div class="card-body"><h5 class="card-title">Bất động sản yêu thích</h5>
	            <div class="scroll-area-md" style="height: 550px;">
	               	<div class="card-body">
						<ul class="list-group">
						<c:forEach var="bds" items="${BDSYeuThich}">
							<li class="list-group-item-action list-group-item" >
								<div class="single-profile-front row" >
									<div class="profile-img col-lg-2" >
										<img src="/img/web/item2.jpg" alt="" style="border-radius: 10px 10px 10px 10px;max-width: 150px; " >
									</div>
									<div class="col-lg-8">
										<div class="profile-caption" style="margin-left: 5px;margin-right: 5px; text-align: left;">
											<h6 style="color: black;">  ${bds.title}</h6>
											<h6 style="color: blue;">${bds.money} - ${bds.dien_tich} - ${bds.dia_chi_chi_tiet}</h6>
										</div>
									</div>
									<div class="profile-img col-lg-2" style="text-align: right; font-size: 30px;" >
										<i id-baidang="${bds.id}" data-toggle="tooltip" title="Xóa khỏi danh sách yêu thích"  class="btn-BDSYT-delete metismenu-icon pe-7s-trash font-icon-wrapper btn-outline-danger btn-icon-only btn-icon"></i>
									
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
<script src="/js/trangcanhan/batdongsanyeuthich.js"></script>

