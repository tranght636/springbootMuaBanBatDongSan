<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>

<main>


	
	<!-- Team-profile Start -->
	<div class="team-profile team-padding"
		style="padding-top: 50px; padding-bottom: 50px;">
		<div class="container">
			<h3 style="color: blue;">Tin rao ở tpHCM</h3>
			<div class="row">
				<c:forEach var="i" begin="1" end="10">
					<div class="col-xl-3 col-lg-3 col-md-6">
						<a class="small" href="<c:url value='/chi-tiet'/>">
						<div class="single-profile mb-30" style="background-color: white;   border-radius: 10px 10px 10px 10px;">
							<!-- Front -->
							<div class="single-profile-front">
								<div class="profile-img">
									<img src="/img/web/item1.jpg" alt="" style="border-radius: 10px 10px 10px 10px;">
								</div>
								<div class="profile-caption" style="margin-left: 5px;margin-right: 5px;">
									 <h6 style="color: black;">
										Nhượng 3600m2 đất trang
											trại nhà vườn trong đất sẵn ao tại Hòa Sơn, Lương Sơn, Hòa
											Bình
									</h6>
									<h6 style="color: blue;">17 tỷ</h6>
									<p style="color: black;">12000 m2.</p>
									<p style="color: black;">Lương Sơn, Hòa Bình.</p> 
								</div>
							</div>
						</div>
						</a>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-6">
						<div class="single-profile mb-30" style="background-color: white;   border-radius: 10px 10px 10px 10px;">
							<!-- Front -->
							<div class="single-profile-front">
								<div class="profile-img">
									<img src="/img/web/item2.jpg" alt="" style="border-radius: 10px 10px 10px 10px;">
								</div>
								<div class="profile-caption" style="margin-left: 5px;margin-right: 5px;">
									 <h6>
										<a href="#" style="color: black;">Nhượng 3600m2 đất trang
											trại nhà vườn trong đất sẵn ao tại Hòa Sơn, Lương Sơn, Hòa
											Bình</a>
									</h6>
									<h6 style="color: blue;">17 tỷ</h6>
									<p style="color: black;">12000 m2.</p>
									<p style="color: black;">Lương Sơn, Hòa Bình.</p> 
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-6">
						<div class="single-profile mb-30" style="background-color: white;   border-radius: 10px 10px 10px 10px;">
							<!-- Front -->
							<div class="single-profile-front">
								<div class="profile-img">
									<img src="/img/web/item3.jpg" alt="" style="border-radius: 10px 10px 10px 10px;">
								</div>
								<div class="profile-caption" style="margin-left: 5px;margin-right: 5px;">
									 <h6>
										<a href="#" style="color: black;">Nhượng 3600m2 đất trang
											trại nhà vườn trong đất sẵn ao tại Hòa Sơn, Lương Sơn, Hòa
											Bình</a>
									</h6>
									<h6 style="color: blue;">17 tỷ</h6>
									<p style="color: black;">12000 m2.</p>
									<p style="color: black;">Lương Sơn, Hòa Bình.</p> 
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-6">
						<div class="single-profile mb-30" style="background-color: white;   border-radius: 10px 10px 10px 10px;">
							<!-- Front -->
							<div class="single-profile-front">
								<div class="profile-img">
									<img src="/img/web/item4.jpg" alt="" style="border-radius: 10px 10px 10px 10px;">
								</div>
								<div class="profile-caption" style="margin-left: 5px;margin-right: 5px;">
									 <h6>
										<a href="#" style="color: black;">Nhượng 3600m2 đất trang
											trại nhà vườn trong đất sẵn ao tại Hòa Sơn, Lương Sơn, Hòa
											Bình</a>
									</h6>
									<h6 style="color: blue;">17 tỷ</h6>
									<p style="color: black;">12000 m2.</p>
									<p style="color: black;">Lương Sơn, Hòa Bình.</p> 
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<a href="#" class="genric-btn success-border circle" style="margin-left: 50%;">Xem thêm</a>
			</div>
			<!-- ---------------------------------------- -->
		</div>
	</div>
</main>