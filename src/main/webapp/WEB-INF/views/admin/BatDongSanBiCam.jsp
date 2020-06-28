<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<div class="row" style="width: 100%;">
	<div class="col-lg-12">
	    <div class="main-card mb-12 card">
	        <div class="card-body"><h5 class="card-title">Bất động sản bị cấm</h5>
	            <div class="scroll-area-md" style="height: 550px;">
	               	<div class="card-body">
						<ul class="list-group">
						<c:forEach var = "i" begin = "1" end = "10">
						<li class="list-group-item-action list-group-item">
							<a  href="/admin/chi-tiet-bat-dong-san">
								<div class="single-profile-front row" >
										<div class="profile-img col-lg-2" >
											<img src="/img/web/item2.jpg" alt="" style="border-radius: 10px 10px 10px 10px;max-width: 150px; " >
										</div>
										<div class="col-lg-8">
											<div class="profile-caption" style="margin-left: 5px;margin-right: 5px; text-align: left;">
												 <h6 style="color: black;"> Nhượng 3600m2 đất trang trại nhà vườn trong đất sẵn ao tại Hòa Sơn, Lương Sơn, Hòa Bình</h6>
												<h6 style="color: blue;">17 tỷ - 12000 m2 - Lương Sơn, Hòa Bình</h6>
											</div>
										</div>
										<div class="profile-img col-lg-2" style="text-align: right; font-size: 30px;" >
											<button class="mb-2 mr-2 btn btn-primary">Khôi phục  </button>
										</div>
										
									</div>
									
							</a>
						</li>
							
							
							</c:forEach>
						</ul>
					</div>
	            </div>
	        </div>
	     </div>
	</div>
</div>

