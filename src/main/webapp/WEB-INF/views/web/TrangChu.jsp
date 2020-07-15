<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
	rel="stylesheet" />


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
								<p data-animation="fadeInLeft" data-delay=".4s">Chào mừng
									bạn đến với website mua bán bất động sản</p>
								<h1 data-animation="fadeInLeft" data-delay=".6s">Chúng tôi
									giúp bạn phát triển kinh doanh</h1>
								<!-- Hero-btn -->
								<div class="hero__btn" data-animation="fadeInLeft"
									data-delay=".8s">
									<a href="<c:url value='/trang-ca-nhan/tao-bat-dong-san'/>"
										class="btn header-btn" style="margin-bottom: 2px;">Đăng
										tin rao</a>
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
				<div class="col-xl-12 col-lg-12 col-md-12">
					<div class="single-cases-img  size mb-30">
						<div class="h1-testimonial-active">
							<!-- Single Testimonial -->
							<c:forEach var="a" items="${baiDangModel}">

								<div class="single-testimonial">
									<div class="single-profile-front">
										<div class="profile-img">
											<div class="row">
												<c:forEach var="baiDang" items="${a}">
													<div class="col-xl-3 col-lg-3 col-md-6">
														<a class="small"
															href="<c:url value='/chi-tiet?id=${baiDang.id}'/>">
															<div class="single-profile mb-30"
																style="background-color: white; border-radius: 10px 10px 10px 10px;">
																<!-- Front -->
																<div class="single-profile-front" style="height: 350px;">
																	<div class="profile-img">
																		<img style="height: 160px;"
																			src="${mapUrl.get(baiDang.id)}" alt=""
																			style="border-radius: 10px 10px 10px 10px;">
																	</div>
																	<div class="profile-caption"
																		style="margin-left: 5px; margin-right: 5px;">
																		<h6 class="title" style="color: black;">${baiDang.title}
																		</h6>
																		<p style="color: blue; font-size: 12px;">Giá:
																			${baiDang.money}, Diện tích: ${baiDang.dien_tich}</p>
																		<small style="color: black;">${baiDang.dia_chi_chi_tiet}</small>
																	</div>
																</div>
															</div>
														</a>
													</div>
												</c:forEach>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<!--  -->
						</div>
					</div>
				</div>

				<a href="<c:url value='/tin-rao-noi-bat'/>"
					class="genric-btn success-border circle" style="margin-left: 50%;">Xem
					thêm</a>
			</div>
			<h3 style="color: blue;">Dự án nổi bật</h3>
			<!-- Dự án nổi bật -->
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12">
					<div class="single-cases-img  size mb-30">
						<div class="h1-testimonial-active">
							<!-- Single Testimonial -->
							<c:forEach var="a" items="${baiDangModel3}">

								<div class="single-testimonial">
									<div class="single-profile-front">
										<div class="profile-img">
											<div class="row">
												<c:forEach var="baiDang" items="${a}">
													<div class="col-xl-3 col-lg-3 col-md-6">
														<a class="small"
															href="<c:url value='/chi-tiet?id=${baiDang.id}'/>">
															<div class="single-profile mb-30"
																style="background-color: white; border-radius: 10px 10px 10px 10px;">
																<!-- Front -->
																<div class="single-profile-front" style="height: 320px;">
																	<div class="profile-img">
																		<img style="height: 160px;"
																			src="${mapUrl.get(baiDang.id)}" alt=""
																			style="border-radius: 10px 10px 10px 10px;">
																	</div>
																	<div class="profile-caption"
																		style="margin-left: 5px; margin-right: 5px;">
																		<h6>${baiDang.title}</h6>
																		<p>Diện tích: ${baiDang.dien_tich}</p>
																		<small>${baiDang.dia_chi_chi_tiet}</small>
																	</div>
																</div>
															</div>
														</a>
													</div>
												</c:forEach>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<!--  -->
						</div>
					</div>
				</div>
				<a href="<c:url value='/du-an-noi-bat'/>"
					class="genric-btn success-border circle" style="margin-left: 50%;">Xem
					thêm</a>

			</div>
			<h3 style="color: blue;">Tin rao mới nhất</h3>
			<div class="row">
				<c:forEach var="baiDang" items="${baiDangModel2}">
					<div class="col-xl-3 col-lg-3 col-md-6">
						<a class="small"
							href="<c:url value='/chi-tiet?id=${baiDang.id}'/>">
							<div class="single-profile mb-30"
								style="background-color: white; border-radius: 10px 10px 10px 10px;">
								<!-- Front -->
								<div class="single-profile-front" style="height: 350px;">
									<div class="profile-img">
										<img style="height: 160px;" src="${mapUrl.get(baiDang.id)}"
											alt="" style="border-radius: 10px 10px 10px 10px;">
									</div>
									<div class="profile-caption"
										style="margin-left: 5px; margin-right: 5px;">
										<h6 class="title" style="color: black;">${baiDang.title}
										</h6>
										<p style="color: blue; font-size: 12px;">Giá:
											${baiDang.money}, Diện tích: ${baiDang.dien_tich}</p>
										<small style="color: black;">${baiDang.dia_chi_chi_tiet}</small>
									</div>
								</div>
							</div>
						</a>
					</div>
				</c:forEach>
				<a href="<c:url value='/tin-rao-moi-nhat'/>"
					class="genric-btn success-border circle" style="margin-left: 50%;">Xem
					thêm</a>
			</div>

			<h3 style="color: blue;">Tin rao theo địa điểm</h3>
		</div>
	</div>


	<!-- Completed Cases Start -->
	<div class="completed-cases">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-8 col-lg-8 col-md-col-md-7">
					<div class="completed-active owl-carousel owl-loaded owl-drag">


						<div class="owl-stage-outer">
							<div class="owl-stage"
								style="transform: translate3d(-1329px, 0px, 0px); transition: all 2s ease 0s; width: 2659px;">
								<div class="owl-item cloned"
									style="width: 317.333px; margin-right: 15px;">
									<div class="single-cases-img"></div>
								</div>
								<c:forEach var="i" begin="1" end="1">

									<div class="owl-item cloned"
										style="width: 317.333px; margin-right: 15px;">
										<div class="single-cases-img">
											<img src="/img/web/TpHCM.jpg" alt="" style="height: 300px;">
											<!-- img hover caption -->
											<div class="single-cases-cap single-cases-cap2"
												style="width: auto; height: auto; background-color: rgba(255, 255, 255, 0.4); margin-button: 2px;">
												<h4>
													<a href="<c:url value='/bat-dong-san-tp?city_id=1'/>">Tp.Hồ
														Chí Minh</a>
												</h4>
											</div>
										</div>
									</div>
									<div class="owl-item cloned"
										style="width: 317.333px; margin-right: 15px;">
										<div class="single-cases-img">
											<img src="/img/web/TpDN.jpg" alt="" style="height: 300px;">
											<!-- img hover caption -->
											<div class="single-cases-cap single-cases-cap2"
												style="width: auto; height: auto; background-color: rgba(255, 255, 255, 0.4); margin-button: 2px;">
												<h4>
													<a href="<c:url value='/bat-dong-san-tp?city_id=3'/>">Tp.Đà
														Nẵng</a>
												</h4>
											</div>
										</div>
									</div>

									<div class="owl-item cloned"
										style="width: 317.333px; margin-right: 15px;">
										<div class="single-cases-img">
											<img src="/img/web/TpHoiAn.jpg" alt="" style="height: 300px;">
											<!-- img hover caption -->
											<div class="single-cases-cap single-cases-cap2"
												style="width: auto; height: auto; background-color: rgba(255, 255, 255, 0.4); margin-button: 2px;">
												<h4>
													<a href="<c:url value='/bat-dong-san-tp?city_id=2'/>">Hà
														Nội</a>
												</h4>
											</div>
										</div>
									</div>
									<div class="owl-item cloned"
										style="width: 317.333px; margin-right: 15px;">
										<div class="single-cases-img">
											<img src="/img/web/TPDL.jpg" alt="" style="height: 300px;">
											<!-- img hover caption -->
											<div class="single-cases-cap single-cases-cap2"
												style="width: auto; height: auto; background-color: rgba(255, 255, 255, 0.4); margin-button: 2px;">
												<h4>
													<a href="<c:url value='/bat-dong-san-tp?city_id=14'/>">Lâm
														Đồng</a>
												</h4>
											</div>
										</div>
									</div>
									<div class="owl-item cloned"
										style="width: 317.333px; margin-right: 15px;">
										<div class="single-cases-img">
											<img src="/img/web/TpHue.jpg" alt="" style="height: 300px;">
											<!-- img hover caption -->
											<div class="single-cases-cap single-cases-cap2"
												style="width: auto; height: 20%; background-color: rgba(255, 255, 255, 0.4); margin-top: 2px;">
												<h4>
													<a href="<c:url value='/bat-dong-san-tp?city_id=15'/>">Thừa
														Thiên Huế</a>
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
	<script type="text/javascript">
		// <![CDATA[
		$(function() {
			$(".title").each(function(i) {
				len = $(this).text().length;
				if (len > 80) {
					$(this).text($(this).text().substr(0, 60) + '...');
				}
			});
		});
	</script>

	<script src="/js/web/chitietbatdongsan.js"></script>
</main>