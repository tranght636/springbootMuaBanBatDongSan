<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@include file="../../common/taglib.jsp"%>
        <main>
            <style>
                #main-image>div>div {
                    overflow: visible;
                }
                
                #main-image ul {
                    height: 250px;
                    overflow: auto !important;
                }
            </style>

            <div id="main-image" class="slider-area">
                <!-- Mobile Menu -->
                <div class="slider-active" style="z-index: 1;">
                    <div class="single-slider  d-flex align-items-center" style="min-height: 330px; background-repeat: no-repeat; background-position: center center; background-size: cover" data-background="/img/web/bds1.jpg">
                        <div class="container">
                            <div class="row">
                                <div class="col-xl-12 col-lg-12 col-md-12">

                                    <div class="hero__caption">
                                        <p data-animation="fadeInLeft" data-delay=".4s">Chào mừng bạn đến với website mua bán bất động sản</p>
                                        <div data-animation="fadeInLeft" data-delay=".6s">


                                            <div class="form-wrapper" style="background: rgba(255, 248, 153, 0.424); border: 2px solid #cc0000; border-radius: 10px; padding: 15px; margin: 20px;">
                                                <form action="<c:url value='/tim-kiem'/>" method="GET">
                                                    <div class="row">

                                                        <div class="col-lg-2 col-md-2 mb-4">
                                                            <div class="select-itms">
                                                                <select class="sel-danh-muc-chung" name="danhMucChungId" style="display: none; width: 100%;">
                                                                    <c:forEach var="danhMucChung" items="${danhMucChungs}">
                                                                        <option value="${danhMucChung.id}">${danhMucChung.name}</option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-2 col-md-2 mb-4">
                                                            <div class="select-itms">
                                                                <select class="sel-danh-muc" name="danhMucId" style="display: none; width: 100%;">
                                                                <option value="-1">Loại BDS</option>
                                                                <c:forEach var="danhMuc" items="${danhMucs}">
                                                                    <option value="${danhMuc.id}">${danhMuc.name}</option>
                                                                </c:forEach>
                                                            </select>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-6 col-md-6 mb-4">
                                                            <div class="form-box">
                                                                <input type="text" name="tuKhoa" placeholder="Từ khoá">
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-2 col-md-2 mb-4">
                                                            <button type="submit" class="send-btn">Tìm kiếm!</button>
                                                        </div>

                                                        <div class="col-lg-2 col-md-2">
                                                            <div class="select-itms">
                                                                <select class="sel-tinh-thanh" name="tinhId" style="display: none;">
                                                                <option value="-1">Tỉnh/Thành</option>
                                                                <c:forEach var="province" items="${provinces}">
                                                                    <option value="${province.id}">${province._name}</option>
                                                                </c:forEach>
                                                            </select>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-2 col-md-2">
                                                            <div class="select-itms">
                                                                <select class="sel-quan-huyen" name="quanId" style="display: none;">
                                                                    <option value="-1">Quận/Huyện</option>
                                                                </select>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-2 col-md-2">
                                                            <div class="select-itms">
                                                                <select class="sel-phuong-xa" name="phuongId" style="display: none;">
                                                                    <option value="-1">Phường/Xã</option>
                                                                </select>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-2 col-md-2">
                                                            <div class="select-itms">
                                                                <select class="sel-duong" name="duongId" style="display: none;">
                                                                    <option value="-1">Đường</option>
                                                                </select>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-2 col-md-2">
                                                            <div class="select-itms">
                                                                <select name="giaThapNhat" id="giaThapNhat" style="display: none;">
		                                                            <option value="-1">Giá thấp nhất</option>
		                                                            <option value="1000000">1 Triệu</option>
		                                                            <option value="3000000">3 Triệu</option>
		                                                            <option value="5000000">5 Triệu</option>
		                                                            <option value="10000000">10 Triệu</option>
		                                                            <option value="30000000">30 Triệu</option>
		                                                            <option value="50000000">50 Triệu</option>
		                                                            <option value="100000000">100 Triệu</option>
		                                                            <option value="300000000">300 Triệu</option>
		                                                            <option value="500000000">500 Triệu</option>
		                                                            <option value="1000000000">1 Tỷ</option>
		                                                            <option value="10000000000">10 Tỷ</option>
		                                                            <option value="50000000000">50 Tỷ</option>
		                                                        </select>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-2 col-md-2">
                                                            <div class="select-itms">
                                                                <select name="giaCaoNhat" id="giaCaoNhat" style="display: none;">
	                                                                <option value="-1">Giá cao nhất</option>
	                                                                <option value="1000000">1 Triệu</option>
		                                                            <option value="3000000">3 Triệu</option>
		                                                            <option value="5000000">5 Triệu</option>
		                                                            <option value="10000000">10 Triệu</option>
		                                                            <option value="30000000">30 Triệu</option>
		                                                            <option value="50000000">50 Triệu</option>
		                                                            <option value="100000000">100 Triệu</option>
		                                                            <option value="300000000">300 Triệu</option>
		                                                            <option value="500000000">500 Triệu</option>
		                                                            <option value="1000000000">1 Tỷ</option>
		                                                            <option value="10000000000">10 Tỷ</option>
		                                                            <option value="50000000000">50 Tỷ</option>
		                                                            <option value="-1">Không giới hạn</option>
	                                                            </select>
                                                            </div>
                                                        </div>


                                                    </div>
                                                </form>
                                            </div>





                                        </div>
                                        <!-- Hero-btn -->
                                        <div class="hero__btn" data-animation="fadeInLeft" data-delay=".8s">
                                            <a href="<c:url value='/trang-ca-nhan/tao-bat-dong-san'/>" class="btn header-btn" style="margin-bottom: 2px;">Đăng
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
            <div class="team-profile team-padding" style="padding-top: 50px; padding-bottom: 50px;">
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
                                                                <a class="small" href="<c:url value='/chi-tiet?id=${baiDang.id}'/>">
                                                                    <div class="single-profile mb-30" style="background-color: white; border-radius: 10px 10px 10px 10px;">
                                                                        <!-- Front -->
                                                                        <div class="single-profile-front" style="height: 350px;">
                                                                            <div class="profile-img">
                                                                                <img style="height: 160px;" src="${mapUrl.get(baiDang.id)}" alt="" style="border-radius: 10px 10px 10px 10px;">
                                                                            </div>
                                                                            <div class="profile-caption" style="margin-left: 5px; margin-right: 5px;">
                                                                                <h6 class="title" style="color: black;">${baiDang.title}
                                                                                </h6>
                                                                                <p style="color: blue; font-size: 12px;">Giá: ${baiDang.money}, Diện tích: ${baiDang.dien_tich}</p>
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

                        <a href="<c:url value='/tin-rao-noi-bat'/>" class="genric-btn success-border circle" style="margin-left: 50%;">Xem
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
                                                                <a class="small" href="<c:url value='/chi-tiet?id=${baiDang.id}'/>">
                                                                    <div class="single-profile mb-30" style="background-color: white; border-radius: 10px 10px 10px 10px;">
                                                                        <!-- Front -->
                                                                        <div class="single-profile-front" style="height: 320px;">
                                                                            <div class="profile-img">
                                                                                <img style="height: 160px;" src="${mapUrl.get(baiDang.id)}" alt="" style="border-radius: 10px 10px 10px 10px;">
                                                                            </div>
                                                                            <div class="profile-caption" style="margin-left: 5px; margin-right: 5px;">
                                                                                <h6>
                                                                                    ${baiDang.title}
                                                                                </h6>
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
                        <a href="<c:url value='/du-an-noi-bat'/>" class="genric-btn success-border circle" style="margin-left: 50%;">Xem
					thêm</a>

                    </div>
                    <h3 style="color: blue;">Tin rao mới nhất</h3>
                    <div class="row">
                        <c:forEach var="baiDang" items="${baiDangModel2}">
                            <div class="col-xl-3 col-lg-3 col-md-6">
                                <a class="small" href="<c:url value='/chi-tiet?id=${baiDang.id}'/>">
                                    <div class="single-profile mb-30" style="background-color: white; border-radius: 10px 10px 10px 10px;">
                                        <!-- Front -->
                                        <div class="single-profile-front" style="height: 350px;">
                                            <div class="profile-img">
                                                <img style="height: 160px;" src="${mapUrl.get(baiDang.id)}" alt="" style="border-radius: 10px 10px 10px 10px;">
                                            </div>
                                            <div class="profile-caption" style="margin-left: 5px; margin-right: 5px;">
                                                <h6 class="title" style="color: black;">${baiDang.title}
                                                </h6>
                                                <p style="color: blue; font-size: 12px;">Giá: ${baiDang.money}, Diện tích: ${baiDang.dien_tich}</p>
                                                <small style="color: black;">${baiDang.dia_chi_chi_tiet}</small>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </c:forEach>
                        <a href="<c:url value='/tin-rao-moi-nhat'/>" class="genric-btn success-border circle" style="margin-left: 50%;">Xem
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
                                    <div class="owl-stage" style="transform: translate3d(-1329px, 0px, 0px); transition: all 2s ease 0s; width: 2659px;">
                                        <div class="owl-item cloned" style="width: 317.333px; margin-right: 15px;">
                                            <div class="single-cases-img"></div>
                                        </div>
                                        <c:forEach var="i" begin="1" end="1">

                                            <div class="owl-item cloned" style="width: 317.333px; margin-right: 15px;">
                                                <div class="single-cases-img">
                                                    <img src="/img/web/TpHCM.jpg" alt="" style="height: 300px;">
                                                    <!-- img hover caption -->
                                                    <div class="single-cases-cap single-cases-cap2" style="width: auto; height: auto; background-color: rgba(255, 255, 255, 0.4); margin-button: 2px;">
                                                        <h4>
                                                            <a href="<c:url value='/bat-dong-san-tp?city_id=1'/>">Tp.Hồ Chí Minh</a>
                                                        </h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="owl-item cloned" style="width: 317.333px; margin-right: 15px;">
                                                <div class="single-cases-img">
                                                    <img src="/img/web/TpDN.jpg" alt="" style="height: 300px;">
                                                    <!-- img hover caption -->
                                                    <div class="single-cases-cap single-cases-cap2" style="width: auto; height: auto; background-color: rgba(255, 255, 255, 0.4); margin-button: 2px;">
                                                        <h4>
                                                            <a href="<c:url value='/bat-dong-san-tp?city_id=3'/>">Tp.Đà Nẵng</a>
                                                        </h4>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="owl-item cloned" style="width: 317.333px; margin-right: 15px;">
                                                <div class="single-cases-img">
                                                    <img src="/img/web/TpHoiAn.jpg" alt="" style="height: 300px;">
                                                    <!-- img hover caption -->
                                                    <div class="single-cases-cap single-cases-cap2" style="width: auto; height: auto; background-color: rgba(255, 255, 255, 0.4); margin-button: 2px;">
                                                        <h4>
                                                            <a href="<c:url value='/bat-dong-san-tp?city_id=2'/>">Hà Nội</a>
                                                        </h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="owl-item cloned" style="width: 317.333px; margin-right: 15px;">
                                                <div class="single-cases-img">
                                                    <img src="/img/web/TPDL.jpg" alt="" style="height: 300px;">
                                                    <!-- img hover caption -->
                                                    <div class="single-cases-cap single-cases-cap2" style="width: auto; height: auto; background-color: rgba(255, 255, 255, 0.4); margin-button: 2px;">
                                                        <h4>
                                                            <a href="<c:url value='/bat-dong-san-tp?city_id=14'/>">Lâm Đồng</a>
                                                        </h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="owl-item cloned" style="width: 317.333px; margin-right: 15px;">
                                                <div class="single-cases-img">
                                                    <img src="/img/web/TpHue.jpg" alt="" style="height: 300px;">
                                                    <!-- img hover caption -->
                                                    <div class="single-cases-cap single-cases-cap2" style="width: auto; height: 20%; background-color: rgba(255, 255, 255, 0.4); margin-top: 2px;">
                                                        <h4>
                                                            <a href="<c:url value='/bat-dong-san-tp?city_id=15'/>">Thừa Thiên Huế</a>
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

            <script src="/js/web/TimKiem.js"></script>
        </main>