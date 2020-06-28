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
				<c:forEach var="baiDang" items="${baiDangModel}">
					<div class="col-xl-3 col-lg-3 col-md-6">
						<a class="small" href="<c:url value='/chi-tiet?id=${baiDang.id}'/>">
						<div class="single-profile mb-30" style="background-color: white;   border-radius: 10px 10px 10px 10px;">
							<!-- Front -->
							<div class="single-profile-front" style="height: 320px;">
								<div class="profile-img">
									<img src="/img/web/item1.jpg" alt="" style="border-radius: 10px 10px 10px 10px;">
								</div>
								<div class="profile-caption" style="margin-left: 5px;margin-right: 5px;">
									 <h6 class="title" style="color: black;">
										${baiDang.title}
									</h6>
									<p style="color: blue; font-size: 12px;">Giá: ${baiDang.money}, Diện tích: ${baiDang.dien_tich}</p>
									<small style="color: black; ">${baiDang.dia_chi_chi_tiet}</small>
								</div>
							</div>
						</div>
						</a>
					</div>
					
					
					
					
					
					
					
					
					
					
					
					
					
					<!-- start drop -->
					<div class="col-xl-3 col-lg-3 col-md-6">
						<a class="small" href="<c:url value='/chi-tiet?id=${baiDang.id}'/>">
						<div class="single-profile mb-30" style="background-color: white;   border-radius: 10px 10px 10px 10px;">
							<!-- Front -->
							<div class="single-profile-front" style="height: 320px;">
								<div class="profile-img">
									<img src="/img/web/item1.jpg" alt="" style="border-radius: 10px 10px 10px 10px;">
								</div>
								<div class="profile-caption" style="margin-left: 5px;margin-right: 5px;">
									 <h6 class="title" style="color: black;">
										${baiDang.title}
									</h6>
									<p style="color: blue; font-size: 12px;">Giá: ${baiDang.money}, Diện tích: ${baiDang.dien_tich}</p>
									<small style="color: black; ">${baiDang.dia_chi_chi_tiet}</small>
								</div>
							</div>
						</div>
						</a>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-6">
						<a class="small" href="<c:url value='/chi-tiet?id=${baiDang.id}'/>">
						<div class="single-profile mb-30" style="background-color: white;   border-radius: 10px 10px 10px 10px;">
							<!-- Front -->
							<div class="single-profile-front" style="height: 320px;">
								<div class="profile-img">
									<img src="/img/web/bds1.jpg" alt="" style="border-radius: 10px 10px 10px 10px;">
								</div>
								<div class="profile-caption" style="margin-left: 5px;margin-right: 5px;">
									 <h6 class="title" style="color: black;">
										${baiDang.title}
									</h6>
									<p style="color: blue; font-size: 12px;">Giá: ${baiDang.money}, Diện tích: ${baiDang.dien_tich}</p>
									<small style="color: black; ">${baiDang.dia_chi_chi_tiet}</small>
								</div>
							</div>
						</div>
						</a>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-6">
						<a class="small" href="<c:url value='/chi-tiet?id=${baiDang.id}'/>">
						<div class="single-profile mb-30" style="background-color: white;   border-radius: 10px 10px 10px 10px;">
							<!-- Front -->
							<div class="single-profile-front" style="height: 320px;">
								<div class="profile-img">
									<img src="/img/web/bds2.jpg" alt="" style="border-radius: 10px 10px 10px 10px;">
								</div>
								<div class="profile-caption" style="margin-left: 5px;margin-right: 5px;">
									 <h6 class="title" style="color: black;">
										${baiDang.title}
									</h6>
									<p style="color: blue; font-size: 12px;">Giá: ${baiDang.money}, Diện tích: ${baiDang.dien_tich}</p>
									<small style="color: black; ">${baiDang.dia_chi_chi_tiet}</small>
								</div>
							</div>
						</div>
						</a>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-6">
						<a class="small" href="<c:url value='/chi-tiet?id=${baiDang.id}'/>">
						<div class="single-profile mb-30" style="background-color: white;   border-radius: 10px 10px 10px 10px;">
							<!-- Front -->
							<div class="single-profile-front" style="height: 320px;">
								<div class="profile-img">
									<img src="/img/web/item3.jpg" alt="" style="border-radius: 10px 10px 10px 10px;">
								</div>
								<div class="profile-caption" style="margin-left: 5px;margin-right: 5px;">
									 <h6 class="title" style="color: black;">
										${baiDang.title}
									</h6>
									<p style="color: blue; font-size: 12px;">Giá: ${baiDang.money}, Diện tích: ${baiDang.dien_tich}</p>
									<small style="color: black; ">${baiDang.dia_chi_chi_tiet}</small>
								</div>
							</div>
						</div>
						</a>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-6">
						<a class="small" href="<c:url value='/chi-tiet?id=${baiDang.id}'/>">
						<div class="single-profile mb-30" style="background-color: white;   border-radius: 10px 10px 10px 10px;">
							<!-- Front -->
							<div class="single-profile-front" style="height: 320px;">
								<div class="profile-img">
									<img src="/img/web/item2.jpg" alt="" style="border-radius: 10px 10px 10px 10px;">
								</div>
								<div class="profile-caption" style="margin-left: 5px;margin-right: 5px;">
									 <h6 class="title" style="color: black;">
										${baiDang.title}
									</h6>
									<p style="color: blue; font-size: 12px;">Giá: ${baiDang.money}, Diện tích: ${baiDang.dien_tich}</p>
									<small style="color: black; ">${baiDang.dia_chi_chi_tiet}</small>
								</div>
							</div>
						</div>
						</a>
					</div>
					<!-- end drop -->
					
				</c:forEach>
			</div>
			<!-- ---------------------------------------- -->
			<script type="text/javascript">// <![CDATA[
		$(function(){
		  $(".title").each(function(i){
		    len=$(this).text().length;
		    if(len>80)
		    {
		      $(this).text($(this).text().substr(0,60)+'...');
		    }
		  });
		});
	</script>
		</div>
	</div>
</main>