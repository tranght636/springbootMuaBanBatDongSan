<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>


<main>


	<div class="slider-area ">
		<!-- Mobile Menu -->
		<div class="slider-active">
			<div class="single-slider  d-flex align-items-center"
				style="min-height: 330px; background-repeat: no-repeat; background-position: center center; background-size: cover"
				data-background="/img/web/bds1.jpg">
				<div class="container">
					<div class="row">
						<div class="col-xl-6 col-lg-6 col-md-8">
							<div class="hero__caption">
								<p data-animation="fadeInLeft" data-delay=".4s">Welcome to
									Website</p>
								<h1 data-animation="fadeInLeft" data-delay=".6s">We help
									you to grow your business</h1>
								<!-- Hero-btn -->
								<div class="hero__btn" data-animation="fadeInLeft"
									data-delay=".8s">
									<a href="industries.html" class="btn hero-btn">Learn More</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- slider Area End-->
	<!-- Team-profile Start -->
	<div class="team-profile team-padding"
		style="padding-top: 50px; padding-bottom: 50px;">
		<div class="container">
			<h3 style="color: blue;">Tin rao nổi bật</h3>
			<div class="row">
				<c:forEach var="i" begin="1" end="1">
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
			<h3 style="color: blue;">Tin rao theo địa điểm</h3>
			<!-- ---------------------------------------- -->
		</div>
	</div>

	<!-- Completed Cases Start -->
	<div class="completed-cases">
		<div class="container-fluid">

			<div class="row">

				<!-- slider Heading -->
				<!-- <div class="col-xl-4 col-lg-4 col-md-8">
					<div class="single-cases-info mb-30">
						<h3>Tin rao theo địa điểm</h3>
						<p>Hãy xem những tin rao theo địa điểm. Hãy xem những tin rao theo địa điểm.Hãy xem những tin rao theo địa điểm.Hãy xem những tin rao theo địa điểm</p>
						<a href="gallery.html" class="border-btn border-btn2">See more</a>
					</div>
				</div> -->
				<!-- OwL -->
				<div class="col-xl-8 col-lg-8 col-md-col-md-7">
					<div class="completed-active owl-carousel owl-loaded owl-drag">


						<div class="owl-stage-outer">
							<div class="owl-stage"
								style="transform: translate3d(-1329px, 0px, 0px); transition: all 2s ease 0s; width: 2659px;">
								<div class="owl-item cloned"
									style="width: 317.333px; margin-right: 15px;">
									<div class="single-cases-img" >
									</div>
								</div>
								<c:forEach var = "i" begin = "1" end = "1">
								
								<div class="owl-item cloned" style="width: 317.333px; margin-right: 15px;">
									<div class="single-cases-img" >
										<a class="small" href="<c:url value='/danh-sach'/>">
										<img src="/img/web/TpHCM.jpg" alt="" style="height: 300px;">
										<!-- img hover caption -->
										<div class="single-cases-cap single-cases-cap2" style="width: auto;height: auto; background-color: rgba(255, 255, 255, 0.4); margin-button: 2px;">
			                                <h4>
												<a href="<c:url value='/danh-sach'/>">Tp.Hồ Chí Minh</a>
											</h4>
			                           </div>
			                           </a>
									</div>
								</div>
								<div class="owl-item cloned"
									style="width: 317.333px; margin-right: 15px;">
									<div class="single-cases-img" >
										<img src="/img/web/TpDN.jpg" alt="" style="height: 300px;">
										<!-- img hover caption -->
										<div class="single-cases-cap single-cases-cap2" style="width: auto;height: auto; background-color: rgba(255, 255, 255, 0.4); margin-button: 2px;">
			                                <h4>
												<a href="case_details.html">Tp.Đà Nẵng</a>
											</h4>
			                           </div>
									</div>
								</div>
								
								<div class="owl-item cloned"
									style="width: 317.333px; margin-right: 15px;">
									<div class="single-cases-img" >
										<img src="/img/web/TpHoiAn.jpg" alt="" style="height: 300px;">
										<!-- img hover caption -->
										<div class="single-cases-cap single-cases-cap2" style="width: auto;height: auto; background-color: rgba(255, 255, 255, 0.4); margin-button: 2px;">
			                                <h4>
												<a href="case_details.html">Tp.Hội An</a>
											</h4>
			                           </div>
									</div>
								</div>
								<div class="owl-item cloned"
									style="width: 317.333px; margin-right: 15px;">
									<div class="single-cases-img" >
										<img src="/img/web/TPDL.jpg" alt="" style="height: 300px;">
										<!-- img hover caption -->
										<div class="single-cases-cap single-cases-cap2" style="width: auto;height: auto; background-color: rgba(255, 255, 255, 0.4); margin-button: 2px;">
			                                <h4>
												<a href="case_details.html">Tp.Đà Lạt</a>
											</h4>
			                           </div>
									</div>
								</div>
								<div class="owl-item cloned"
									style="width: 317.333px; margin-right: 15px;">
									<div class="single-cases-img" >
										<img src="/img/web/TpHue.jpg" alt="" style="height: 300px;">
										<!-- img hover caption -->
										<div class="single-cases-cap single-cases-cap2" style="width: auto;height: 20%; background-color: rgba(255, 255, 255, 0.4); margin-top: 2px;">
			                                <h4>
												<a href="case_details.html">Tp.Huế</a>
											</h4>
			                           </div>
									</div>
								</div>
								</c:forEach>
								
							</div>
						</div>
						<div class="owl-nav disabled">
							<div class="owl-prev">prev</div>
							<div class="owl-next">next</div>
						</div>
						<div class="owl-dots disabled"></div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- Team-profile End-->
	
	
</main>