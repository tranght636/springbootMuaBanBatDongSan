<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../taglib.jsp"%>
			<div class="header-bottom  header-sticky" style="box-shadow: 2px 2px 2px #eeeeee">
				<div class="container-fluid">
					<div class="row align-items-center">
						<!-- Logo -->
						<div class="col-xl-2 col-lg-1 col-md-1">
							<div class="logo">
								<a href="#"><img src="/img/web/logo.png" alt="" style="max-width: 400px; max-height: 100px;"></a>
							</div>
						</div>
						<div class="col-xl-8 col-lg-8 col-md-8">
							<!-- Main-menu -->
							<div class="main-menu f-right d-none d-lg-block">
								<nav>
									<ul id="navigation">
										<li><a href="/">Trang chủ</a></li>
										<li><a href="#">Nhà đất bán</a>
											<ul class="submenu">
												<li><a href="#">Bán căn hộ chung cư</a></li>
												<li><a href="#">Bán nhà riêng</a></li>
												<li><a href="#">Bán biệt thự, liền kề</a></li>
												<li><a href="#">Bán nhà mặt phố</a></li>
												<li><a href="#">Bán đất nên dự án</a></li>
												<li><a href="#">Bán đất</a></li>
												<li><a href="#">Bán trang trại khu nghỉ dưỡng</a></li>
												<li><a href="#">Bán kho, nhà xưởng</a></li>
												<li><a href="#">Bán loại bất động sản khác</a></li>


											</ul></li>
										<li><a href="#">Nhà đất cho thuê</a>
											<ul class="submenu">
												<li><a href="#">Cho thuê căn hộ chung cư</a></li>
												<li><a href="#">Cho thuê nhà riêng</a></li>

												<li><a href="#">Cho thuê nhà mặt phố</a></li>
												<li><a href="#">Cho thuê nhà trọ, phòng trọ</a></li>
												<li><a href="#">Cho thuê văn phòng</a></li>
												<li><a href="#">Cho thuê cửa hàng - ki ốt</a></li>
												<li><a href="#">Cho thuê kho, nhà xưởng, đất</a></li>
												<li><a href="#">Cho thuê loại bất động sản khác</a></li>


											</ul></li>
										<li><a href="#">Dự án</a>
											<ul class="submenu">
												<li><a href="#">Căn hộ, Chung cư</a></li>
												<li><a href="#">Cao ốc văn phòng</a></li>
												<li><a href="#">Trung tâm thương mại</a></li>
												<li><a href="#">Khu đô thị mới</a></li>
												<li><a href="#">Khu phức hợp</a></li>
												<li><a href="#">Nhà ở xã hội</a></li>
												<li><a href="#">Khu nghỉ dưỡng, Sinh thái</a></li>
												<li><a href="#">Khu công nghiệp</a></li>
												<li><a href="#">Dự án khác</a></li>
												<li><a href="#">Biệt thự, liền kề</a></li>




											</ul></li>
										<li><a href="#">Cần mua</a>
											<ul class="submenu">
												<li><a href="#">Mua căn hộ chung cư</a></li>
												<li><a href="#">Mua nhà riêng</a></li>
												<li><a href="#">Mua biệt thự, liền kề </a></li>
												<li><a href="#">Mua nhà mặt phố </a></li>
												<li><a href="#">Mua đất nền dự án </a></li>
												<li><a href="#">Mua đất </a></li>
												<li><a href="#">Mua trang trại, khu nghỉ dưỡng </a></li>
												<li><a href="#">Mua kho, nhà xưởng </a></li>
												<li><a href="#">Mua loại bất động sản khác </a></li>
											</ul>
												
										<li><a href="blog.html">Cần thuê</a>
											<ul class="submenu">
												<li><a href="contact.html">Cần thuê căn hộ chung cư</a></li>
												<li><a href="contact.html">Cần thuê nhà riêng</a></li>
												<li><a href="contact.html">Cần thuê nhà mặt phố </a></li>
												<li><a href="contact.html">Cần thuê nhà trọ, phòng trọ </a></li>
												<li><a href="contact.html">Cần thuê văn phòng </a></li>
												<li><a href="contact.html">Cần thuê cửa hàng - ki ốt </a></li>
												<li><a href="contact.html">Cần thuê kho, nhà xưởng, đất </a></li>
												<li><a href="contact.html">Cần thuê loại bất động sản khác </a></li>
											</ul>
												
												
												
											</li>
										<li><a href="blog.html">Tin tức</a></li>
									</ul>
								</nav>
							</div>
						</div>
						<div class="col-xl-2 col-lg-3 col-md-3">
							<div class="header-right-btn f-right d-none d-lg-block">
								<div class="form-group" style="margin-top: 5px; margin-bottom: 5px;">
										<aside class="single_sidebar_widget search_widget">
					                     <form action="#">
					                        <div class="form-group">
					                           <div class="input-group" >
					                              <input type="text" class="form-control " placeholder='Search Keyword'
					                                 onfocus="this.placeholder = ''" onblur="this.placeholder = 'Search Keyword'"  >
					                               <div class="input-group-append">
					                               		<button class=" btn-info " type="button" style="border-top-right-radius:    1em 5em; border-bottom-right-radius: 1em 5em;" ><i class="ti-search"></i></button>
					                              </div>
					                           </div>
					                        </div>
					                     </form>
					                  </aside>
					                 </div>
							</div>
						</div>
					</div>
				</div>
				<%-- <div class="container-fluid">
					<div class="row align-items-center">
					<div class="col-xl-1"></div>
						<div class="col-xl-2">
							<select class="browser-default " style="border-radius: 2px; width: 100%; margin-right: 2px;">
							  <option selected>Toàn quốc</option>
							  <c:forEach var = "i" begin = "1" end = "5">
	       					 	<option value="1">tp.HCM</option>
							  <option value="2">tp.DN</option>
							  <option value="3">tp.DL</option>
							  </c:forEach>
							</select>
						</div>
						<div class="col-xl-2">
							<select class="browser-default " style="border-radius: 2px; width: 100%; margin-right: 2px;">
							  <option selected>Nhà ở</option>
							  <c:forEach var = "i" begin = "1" end = "5">
	       					 	<option value="1">Căn hộ</option>
							  <option value="2">Two</option>
							  <option value="3">Three</option>
							  </c:forEach>
							</select>
						</div>
						<div class="col-xl-2">
							<select class="browser-default " style="border-radius: 2px; width: 100%; margin-right: 2px;">
							  <option selected>Open this select menu</option>
							  <c:forEach var = "i" begin = "1" end = "5">
	       					 	<option value="1">One</option>
							  <option value="2">Two</option>
							  <option value="3">Three</option>
							  </c:forEach>
							</select>
						</div>
						<div class="col-xl-2">
							<select class="browser-default " style="border-radius: 2px; width: 100%; margin-right: 2px;">
							  <option selected>Open this select menu</option>
							  <c:forEach var = "i" begin = "1" end = "5">
	       					 	<option value="1">One</option>
							  <option value="2">Two</option>
							  <option value="3">Three</option>
							  </c:forEach>
							</select>
						</div>
						<div class="col-xl-2">
							<select class="browser-default " style="border-radius: 2px; width: 100%; margin-right: 2px;">
							  <option selected>Open this select menu</option>
							  <c:forEach var = "i" begin = "1" end = "5">
	       					 	<option value="1">One</option>
							  <option value="2">Two</option>
							  <option value="3">Three</option>
							  </c:forEach>
							</select>
						</div>
						<div class="col-xl-1"></div>
						
    					
						  
					
					</div>
				</div> --%>
				<!-- search -->
					<!-- <div class="form-group" style="margin-top: 5px; margin-bottom: 5px;">
						<aside class="single_sidebar_widget search_widget">
	                     <form action="#">
	                        <div class="form-group">
	                           <div class="input-group">
	                              <input type="text" class="form-control " placeholder='Search Keyword'
	                                 onfocus="this.placeholder = ''" onblur="this.placeholder = 'Search Keyword'"  >
	                               <div class="input-group-append">
	                               		<button class="btns" type="button"><i class="ti-search"></i></button>
	                              </div>
	                           </div>
	                        </div>
	                     </form>
	                  </aside>
	                 </div> -->
				<!-- search -->
				</div>
