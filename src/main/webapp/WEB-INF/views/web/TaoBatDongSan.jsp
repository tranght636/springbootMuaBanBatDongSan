<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<style>
.wrapper {
    position:relative;
    width: 150px;
    height: 150px;
    margin-right: 2px;
}
.img {
    position: absolute;
    top: 0px;
    right: 0px;
    width: 100%;
    height: 100%;
}
.cross-img {
    position: absolute;
    top: -10px;
    right: 0px;
    width: 20px;
    height: 20px;
   
}
i.dngaz:link, i.dngaz:visited
{
color:blue;
text-decoration:none;
}
 
i.dngaz:hover
{
color:red;
font-weight:bold;
}
 
i.dngaz:active
{
}
</style>
<div class="row" style="width: 100%;">
	<div class="col-lg-12">
		<div class="main-card mb-12 card">
			<div class="card-body">
			<c:if test="${not empty message}">
				<div class="alert alert-warning">
						${message}
				</div>
			</c:if>
				<h5 class="card-title">Tạo bất động sản mới</h5>
				<div class="scroll-area-md" style="height: 550px;">
					<div class="card-body">
						<form id="bai-dang" class="bai_dang"
							action='<c:url value="/trang-ca-nhan/tao-bat-dong-san"/>'
							method="POST">
							<div class="container">
								<div class="form-group row">
									<h2>Thông tin cơ bản:</h2>
								</div>
								<div class="form-group row">

									<label class="col-sm-4 col-form-label">Danh mục bất
										động sản:</label>
									<div class="col-sm-4">
										<select id="TBDS_DanhMucChung" class="btnSort "
											style=" width: 100%; border: 1px solid #ced4da; border-radius: .25rem;">
											<c:forEach var="danhMucChung" items="${danhMucChungModel}">
												<option value="${danhMucChung.id}">${danhMucChung.name}</option>
											</c:forEach>

										</select>
									</div>
									<div class="col-sm-4">
										<select name="danh_muc_id" id="TBDS_DanhMuc" class="btnSort "
											style="width: 100%; border: 1px solid #ced4da; border-radius: .25rem;">
											<c:forEach var="danhMuc" items="${danhMucModel}">
												<option value="${danhMuc.id}">${danhMuc.name}</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="form-group row">
									<label for="title" class="col-sm-2 col-form-label">Tiêu
										đề:</label>
									<div class="col-sm-10">
										<textarea name="title" id="TBDS_title" class="form-control"
											rows="1" style="width: 100%; color: black;"></textarea>
									</div>
								</div>
								<div class="form-group row">
									<label for="title" class="col-sm-2 col-form-label"> Mô
										tả tổng quát:</label>
									<div class="col-sm-10">
										<textarea name="mo_ta_tong_quat" id="TBDS_mo_ta_tong_quat"
											class="form-control" rows="1"
											style="width: 100%; color: black;"></textarea>
									</div>
								</div>
								<div class="form-group row">
									<label for="title" class="col-sm-2 col-form-label">Giá
										(VND):</label>
									<div class="col-sm-10">
										<input name="gia_tu" id ="gia_tu" hidden="true"/>
										<input type="number" id="TBDS_giatu"
											style="width: 100px; border: 1px solid #ced4da; border-radius: .25rem;">
										<select  id="TBDS_select_gia_tu" style="width: 100px; border: 1px solid #ced4da; border-radius: .25rem;">
											<option value="1000000000">Tỷ VNĐ</option>
											<option value="1000000">Triệu VNĐ</option>
											<option value="1">VNĐ</option>
										</select>
										-
										<input name="gia_den" id ="gia_den" hidden="true"/>
										<input type="number" id="TBDS_giaden" 
											style="width: 100px; border: 1px solid #ced4da; border-radius: .25rem;">
										<select  id="TBDS_select_gia_den" style="width: 100px; border: 1px solid #ced4da; border-radius: .25rem;">
											<option value="1000000000">Tỷ VNĐ</option>
											<option value="1000000">Triệu VNĐ</option>
											<option value="1">VNĐ</option>
										</select>
									</div>
								</div>
								<div class="form-group row">
									<label for="title" class="col-sm-2 col-form-label">Chi tiết giá:</label>
									<div class="col-sm-10">
										<input type="text" id="TBDS_money" name="money"
											style="width: 100%; border: 1px solid #ced4da; border-radius: .25rem;" value="Thương lượng">
									</div>
									</div>
								<div class="form-group row">
									<h2>Thông tin chi tiết:</h2>
								</div>
								<div class="form-group row">
									<label for="title" class="col-sm-2 col-form-label">Loại
										bất động sản:</label>
									<div class="col-sm-10">
										<select name="loai_bat_dong_san_id"
											id="TBDS_loai_bat_dong_san_id" class="btnSort "
											style="width: 100%; border: 1px solid #ced4da; border-radius: .25rem;">
											<c:forEach var="loaiBatDongSan"
												items="${loaiBatDongSanModel}">
												<option value="${loaiBatDongSan.id}">${loaiBatDongSan.name}</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="form-group row">
									<label for="title" class="col-sm-2 col-form-label">Diện
										tích (m2):</label>
									<div class="col-sm-10">
										<input type="text" id="TBDS_dien_tich" name="dien_tich"
											style="width: 100%; border: 1px solid #ced4da; border-radius: .25rem;">
									</div>
								</div>
								<div class="form-group row">
									<label for="title" class="col-sm-2 col-form-label">Thành
										phố/Tỉnh:</label>
									<div class="col-sm-4">
										<select name="city_id" id="TBDS_city_id" class="btnSort "
											style="width: 100%;; border: 1px solid #ced4da; border-radius: .25rem;">
											<c:forEach var="province" items="${provinceModel}">
												<option value="${province.id}">${province._name}</option>
											</c:forEach>
										</select>
									</div>
									<label for="title" class="col-sm-2 col-form-label">Quận/Huyện:</label>
									<div class="col-sm-4">
										<select name="huyen_id" id="TBDS_huyen_id" class="btnSort "
											style="width: 100%;; border: 1px solid #ced4da; border-radius: .25rem;">
											<c:forEach var="district" items="${districtModel}">
												<option value="${district.id}">${district._prefix}
													${district._name}</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="form-group row">
									<label for="title" class="col-sm-2 col-form-label">
										Phường/Xã:</label>
									<div class="col-sm-4">
										<select name="xa_id" id="TBDS_xa_id" class="btnSort "
											style="width: 100%;; border: 1px solid #ced4da; border-radius: .25rem;">
											<c:forEach var="ward" items="${wardModel}">
												<option value="${ward.id}">${ward._prefix}
													${ward._name}</option>
											</c:forEach>
										</select>
									</div>
									<label for="title" class="col-sm-2 col-form-label">Tên
										đường:</label>
									<div class="col-sm-4">
										<select name="duong_id" id="TBDS_duong_id" class="btnSort "
											style="width: 100%;; border: 1px solid #ced4da; border-radius: .25rem;">
											<c:forEach var="street" items="${streetModel}">
												<option value="${street.id}">${street._prefix}
													${street._name}</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="form-group row">
									<label for="title" class="col-sm-2 col-form-label"> Số
										nhà/Chi tiết khác:</label>
									<div class="col-sm-10">
										<input type="text" id="TBDS_so_nha_chi_tiet_khac"
											style="width: 100%; border: 1px solid #ced4da; border-radius: .25rem;">
									</div>
								</div>
								<div class="form-group row">
									<label for="title" class="col-sm-2 col-form-label"> Địa
										chỉ chi tiết:</label>
									<div class="col-sm-10">
										<input type="text" class="TBDS_dia_chi_chi_tiet"
											style="width: 100%; border: 1px solid #ced4da; border-radius: .25rem;"
											> <input type="text"
											class="TBDS_dia_chi_chi_tiet" name="dia_chi_chi_tiet"
											hidden="true">
									</div>
								</div>
								<div class="form-group row">
									<label for="title" class="col-sm-2 col-form-label"> Mặt
										tiền:</label>
									<div class="col-sm-4">
										<input type="text" name="mat_tien"
											style="width: 100%; border: 1px solid #ced4da; border-radius: .25rem;">
									</div>
									<label for="title" class="col-sm-2 col-form-label">
										Hướng:</label>
									<div class="col-sm-4">
										<select name="huong_nha" class="btnSort "
											style="width: 100%;; border: 1px solid #ced4da; border-radius: .25rem;">
											<option value="D">Đông</option>
											<option value="T">Tây</option>
											<option value="N">Nam</option>
											<option value="B">Bắc</option>
											<option value="TB">Tây Bắc</option>
											<option value="DN">Đông Nam</option>
											<option value="BD">Bắc Đông</option>
											<option value="NT">Tây Nam</option>
										</select>
									</div>

								</div>
								<div class="form-group row">
									<label for="title" class="col-sm-2 col-form-label">
										Chiều rộng đường vào(m2):</label>
									<div class="col-sm-4">
										<input type="number" name="duong_vao_m"
											style="width: 100%; border: 1px solid #ced4da; border-radius: .25rem;">
									</div>
								</div>
								<div class="form-group row">
									<label for="title" class="col-sm-2 col-form-label"> Số
										nhà vệ sinh:</label>
									<div class="col-sm-2">
										<input type="number" name="so_nha_ve_sinh"
											style="width: 100%; border: 1px solid #ced4da; border-radius: .25rem;">
									</div>
									<label for="title" class="col-sm-2 col-form-label"> Số
										phòng ngủ:</label>
									<div class="col-sm-2">
										<input type="number" name="so_phong_ngu"
											style="width: 100%; border: 1px solid #ced4da; border-radius: .25rem;">
									</div>
									<label for="title" class="col-sm-2 col-form-label"> Số
										tầng:</label>
									<div class="col-sm-2">
										<input type="number" name="so_tang"
											style="width: 100%; border: 1px solid #ced4da; border-radius: .25rem;">
									</div>
								</div>

								<div class="form-group row">
									<label for="editorContentThongBao"
										class="col-sm-2 col-form-label">Mô tả chi tiết</label>
									<div class="col-sm-10">
										<textarea id="textareacontent" name="content" cols="500"
											rows="10" style="width: 100%;">
										</textarea>
									</div>
								</div>
								<div class="form-group row">
									<label for="title" class="col-sm-2 col-form-label">
										Hình:</label>
									<div class="col-sm-10">
										<div class="position-relative form-group">
											<div>
												<div class="single-profile-front">
													<div class="profile-img">
														<div class="row" id="list-image-tbds">
															 
														<!-- 
														<div >
														<div>
														<button type="button" class="close" aria-label="Close" style="position: absolute;">
														  <span aria-hidden="true" >&times;</span>
														  
														</button>
														<img class="col-sm-2" src="/img/web/TpHue.jpg" alt=""
																	style="border-radius: 10px 10px 10px 10px;position: absolute;" >
														</div>
														</div>
														
														 -->
														
														</div>

													</div>
												</div>
											</div>
											<input id="multi-file-tbds" type="file"
												class="form-control-file" style="margin-top: 5px;" multiple>
											<input name="img_id" id="InputIDImg" hidden="true">
											<button id="btn-upload-img-tbds" type="button"
												class="mb-2 mr-2 mt-2 btn btn-primary">Upload</button>
											<small class="form-text text-muted"></small>
										</div>
									</div>
								</div>
								<div class="form-group row">
									<label for="editorContentThongBao"
										class="col-sm-2 col-form-label">Thông tin liên hệ:</label>
									<div class="col-sm-10">
										<input name="thong_tin_lien_he" type="text"
											style="width: 100%;">
									</div>
								</div>
								<div class="form-group row">
									<div class="col-md-12">
										<div class="main-card mb-3 card">
											<div class="card-body">
												<div class="card-title">Google Maps</div>
												<div id="gmap-example"
													style="width: 100%; height: 300px; position: relative; overflow: hidden;">
													<div
														style="height: 100%; width: 100%; position: absolute; top: 0px; left: 0px; background-color: rgb(229, 227, 223);">
														<div class="gm-style"
															style="position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px;">
															<div tabindex="0"
																style="position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; cursor: url(&quot;http://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;), default; touch-action: none;">
																<div
																	style="z-index: 1; position: absolute; left: 50%; top: 50%; width: 100%; transform: translate(0px, 0px);">
																	<div
																		style="position: absolute; left: 0px; top: 0px; z-index: 100; width: 100%;">
																		<div
																			style="position: absolute; left: 0px; top: 0px; z-index: 0;">
																			<div
																				style="position: absolute; z-index: 985; transform: matrix(1, 0, 0, 1, -182, -96);">
																				<div
																					style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px;">
																					<div style="width: 256px; height: 256px;"></div>
																				</div>
																				<div
																					style="position: absolute; left: -256px; top: 0px; width: 256px; height: 256px;">
																					<div style="width: 256px; height: 256px;"></div>
																				</div>
																				<div
																					style="position: absolute; left: -256px; top: -256px; width: 256px; height: 256px;">
																					<div style="width: 256px; height: 256px;"></div>
																				</div>
																				<div
																					style="position: absolute; left: 0px; top: -256px; width: 256px; height: 256px;">
																					<div style="width: 256px; height: 256px;"></div>
																				</div>
																				<div
																					style="position: absolute; left: 256px; top: -256px; width: 256px; height: 256px;">
																					<div style="width: 256px; height: 256px;"></div>
																				</div>
																				<div
																					style="position: absolute; left: 256px; top: 0px; width: 256px; height: 256px;">
																					<div style="width: 256px; height: 256px;"></div>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div
																		style="position: absolute; left: 0px; top: 0px; z-index: 101; width: 100%;"></div>
																	<div
																		style="position: absolute; left: 0px; top: 0px; z-index: 102; width: 100%;"></div>
																	<div
																		style="position: absolute; left: 0px; top: 0px; z-index: 103; width: 100%;"></div>
																	<div
																		style="position: absolute; left: 0px; top: 0px; z-index: 0;">
																		<div
																			style="position: absolute; z-index: 985; transform: matrix(1, 0, 0, 1, -182, -96);">
																			<div
																				style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
																				<img draggable="false" alt="" role="presentation"
																					src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i15!2i9372!3i17488!4i256!2m3!1e0!2sm!3i518233132!2m3!1e2!6m1!3e5!3m17!2svi!3sUS!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0!5m1!5f2&amp;token=109148"
																					style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
																			</div>
																			<div
																				style="position: absolute; left: -256px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
																				<img draggable="false" alt="" role="presentation"
																					src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i15!2i9371!3i17488!4i256!2m3!1e0!2sm!3i518233168!2m3!1e2!6m1!3e5!3m17!2svi!3sUS!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0!5m1!5f2&amp;token=110821"
																					style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
																			</div>
																			<div
																				style="position: absolute; left: 256px; top: -256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
																				<img draggable="false" alt="" role="presentation"
																					src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i15!2i9373!3i17487!4i256!2m3!1e0!2sm!3i518233252!2m3!1e2!6m1!3e5!3m17!2svi!3sUS!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0!5m1!5f2&amp;token=30691"
																					style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
																			</div>
																			<div
																				style="position: absolute; left: -256px; top: -256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
																				<img draggable="false" alt="" role="presentation"
																					src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i15!2i9371!3i17487!4i256!2m3!1e0!2sm!3i518233252!2m3!1e2!6m1!3e5!3m17!2svi!3sUS!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0!5m1!5f2&amp;token=87977"
																					style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
																			</div>
																			<div
																				style="position: absolute; left: 256px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
																				<img draggable="false" alt="" role="presentation"
																					src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i15!2i9373!3i17488!4i256!2m3!1e0!2sm!3i518233216!2m3!1e2!6m1!3e5!3m17!2svi!3sUS!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0!5m1!5f2&amp;token=70873"
																					style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
																			</div>
																			<div
																				style="position: absolute; left: 0px; top: -256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
																				<img draggable="false" alt="" role="presentation"
																					src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i15!2i9372!3i17487!4i256!2m3!1e0!2sm!3i518233252!2m3!1e2!6m1!3e5!3m17!2svi!3sUS!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0!5m1!5f2&amp;token=59334"
																					style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
																			</div>
																		</div>
																	</div>
																</div>
																<div class="gm-style-pbc"
																	style="z-index: 2; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px; opacity: 0;">
																	<p class="gm-style-pbt"></p>
																</div>
																<div
																	style="z-index: 3; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px; touch-action: pan-x pan-y;">
																	<div
																		style="z-index: 4; position: absolute; left: 50%; top: 50%; width: 100%; transform: translate(0px, 0px);">
																		<div
																			style="position: absolute; left: 0px; top: 0px; z-index: 104; width: 100%;"></div>
																		<div
																			style="position: absolute; left: 0px; top: 0px; z-index: 105; width: 100%;"></div>
																		<div
																			style="position: absolute; left: 0px; top: 0px; z-index: 106; width: 100%;"></div>
																		<div
																			style="position: absolute; left: 0px; top: 0px; z-index: 107; width: 100%;"></div>
																	</div>
																</div>
															</div>
															<iframe aria-hidden="true" frameborder="0" tabindex="-1"
																style="z-index: -1; position: absolute; width: 100%; height: 100%; top: 0px; left: 0px; border: none;"></iframe>
															<div
																style="margin-left: 5px; margin-right: 5px; z-index: 1000000; position: absolute; left: 0px; bottom: 0px;">
																<a target="_blank" rel="noopener"
																	href="https://maps.google.com/maps?ll=-12.043333,-77.028333&amp;z=15&amp;t=m&amp;hl=vi&amp;gl=US&amp;mapclient=apiv3"
																	title="Mở khu vực này trong Google Maps (mở cửa sổ mới)"
																	style="position: static; overflow: visible; float: none; display: inline;"><div
																		style="width: 66px; height: 26px; cursor: pointer;">
																		<img alt=""
																			src="http://maps.gstatic.com/mapfiles/api-3/images/google4_hdpi.png"
																			draggable="false"
																			style="position: absolute; left: 0px; top: 0px; width: 66px; height: 26px; user-select: none; border: 0px; padding: 0px; margin: 0px;">
																	</div></a>
															</div>
															<div
																style="background-color: white; padding: 15px 21px; border: 1px solid rgb(171, 171, 171); font-family: Roboto, Arial, sans-serif; color: rgb(34, 34, 34); box-sizing: border-box; box-shadow: rgba(0, 0, 0, 0.2) 0px 4px 16px; z-index: 10000002; display: none; width: 300px; height: 180px; position: absolute; left: 117px; top: 60px;">
																<div
																	style="padding: 0px 0px 10px; font-size: 16px; box-sizing: border-box;">Dữ
																	liệu Bản đồ</div>
																<div style="font-size: 13px;">Dữ liệu bản đồ ©2020</div>
																<button draggable="false" title="Đóng" aria-label="Đóng"
																	type="button" class="gm-ui-hover-effect"
																	style="background: none; display: block; border: 0px; margin: 0px; padding: 0px; position: absolute; cursor: pointer; user-select: none; top: 0px; right: 0px; width: 37px; height: 37px;">
																	<img
																		src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224px%22%20height%3D%2224px%22%20viewBox%3D%220%200%2024%2024%22%20fill%3D%22%23000000%22%3E%0A%20%20%20%20%3Cpath%20d%3D%22M19%206.41L17.59%205%2012%2010.59%206.41%205%205%206.41%2010.59%2012%205%2017.59%206.41%2019%2012%2013.41%2017.59%2019%2019%2017.59%2013.41%2012z%22%2F%3E%0A%20%20%20%20%3Cpath%20d%3D%22M0%200h24v24H0z%22%20fill%3D%22none%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																		style="pointer-events: none; display: block; width: 13px; height: 13px; margin: 12px;">
																</button>
															</div>
															<div class="gmnoprint"
																style="z-index: 1000001; position: absolute; right: 305px; bottom: 0px; width: 109px;">
																<div draggable="false" class="gm-style-cc"
																	style="user-select: none; height: 14px; line-height: 14px;">
																	<div
																		style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
																		<div style="width: 1px;"></div>
																		<div
																			style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div>
																	</div>
																	<div
																		style="position: relative; padding-right: 6px; padding-left: 6px; box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
																		<a
																			style="text-decoration: none; cursor: pointer; display: none;">Dữ
																			liệu Bản đồ</a><span>Dữ liệu bản đồ ©2020</span>
																	</div>
																</div>
															</div>
															<div class="gmnoscreen"
																style="position: absolute; right: 0px; bottom: 0px;">
																<div
																	style="font-family: Roboto, Arial, sans-serif; font-size: 11px; color: rgb(68, 68, 68); direction: ltr; text-align: right; background-color: rgb(245, 245, 245);">Dữ
																	liệu bản đồ ©2020</div>
															</div>
															<div class="gmnoprint gm-style-cc" draggable="false"
																style="z-index: 1000001; user-select: none; height: 14px; line-height: 14px; position: absolute; right: 114px; bottom: 0px;">
																<div
																	style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
																	<div style="width: 1px;"></div>
																	<div
																		style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div>
																</div>
																<div
																	style="position: relative; padding-right: 6px; padding-left: 6px; box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
																	<a
																		href="https://www.google.com/intl/vi_US/help/terms_maps.html"
																		target="_blank" rel="noopener"
																		style="text-decoration: none; cursor: pointer; color: rgb(68, 68, 68);">Điều
																		khoản sử dụng</a>
																</div>
															</div>
															<button draggable="false"
																title="Chuyển đổi chế độ xem toàn màn hình"
																aria-label="Chuyển đổi chế độ xem toàn màn hình"
																type="button"
																class="gm-control-active gm-fullscreen-control"
																style="background: none rgb(255, 255, 255); border: 0px; margin: 10px; padding: 0px; position: absolute; cursor: pointer; user-select: none; border-radius: 2px; height: 40px; width: 40px; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; overflow: hidden; top: 0px; right: 0px;">
																<img
																	src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%20018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23666%22%20d%3D%22M0%2C0v2v4h2V2h4V0H2H0z%20M16%2C0h-4v2h4v4h2V2V0H16z%20M16%2C16h-4v2h4h2v-2v-4h-2V16z%20M2%2C12H0v4v2h2h4v-2H2V12z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																	style="height: 18px; width: 18px;"><img
																	src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23333%22%20d%3D%22M0%2C0v2v4h2V2h4V0H2H0z%20M16%2C0h-4v2h4v4h2V2V0H16z%20M16%2C16h-4v2h4h2v-2v-4h-2V16z%20M2%2C12H0v4v2h2h4v-2H2V12z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																	style="height: 18px; width: 18px;"><img
																	src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23111%22%20d%3D%22M0%2C0v2v4h2V2h4V0H2H0z%20M16%2C0h-4v2h4v4h2V2V0H16z%20M16%2C16h-4v2h4h2v-2v-4h-2V16z%20M2%2C12H0v4v2h2h4v-2H2V12z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																	style="height: 18px; width: 18px;">
															</button>
															<div draggable="false" class="gm-style-cc"
																style="user-select: none; height: 14px; line-height: 14px; position: absolute; right: 0px; bottom: 0px;">
																<div
																	style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
																	<div style="width: 1px;"></div>
																	<div
																		style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div>
																</div>
																<div
																	style="position: relative; padding-right: 6px; padding-left: 6px; box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
																	<a target="_blank" rel="noopener"
																		title="Báo cáo lỗi trong bản đồ đường hoặc hình ảnh đến Google"
																		href="https://www.google.com/maps/@-12.043333,-77.028333,15z/data=!10m1!1e1!12b1?source=apiv3&amp;rapsrc=apiv3"
																		style="font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); text-decoration: none; position: relative;">Báo
																		cáo một lỗi bản đồ</a>
																</div>
															</div>
															<div class="gmnoprint gm-bundled-control"
																draggable="false" controlwidth="40" controlheight="81"
																style="margin: 10px; user-select: none; position: absolute; left: 0px; top: 0px;">
																<div class="gmnoprint" controlwidth="40"
																	controlheight="81"
																	style="position: absolute; left: 0px; top: 0px;">
																	<div draggable="false"
																		style="user-select: none; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px; cursor: pointer; background-color: rgb(255, 255, 255); width: 40px; height: 81px;">
																		<button draggable="false" title="Phóng to"
																			aria-label="Phóng to" type="button"
																			class="gm-control-active"
																			style="background: none; display: block; border: 0px; margin: 0px; padding: 0px; position: relative; cursor: pointer; user-select: none; overflow: hidden; width: 40px; height: 40px; top: 0px; left: 0px;">
																			<img
																				src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpolygon%20fill%3D%22%23666%22%20points%3D%2218%2C7%2011%2C7%2011%2C0%207%2C0%207%2C7%200%2C7%200%2C11%207%2C11%207%2C18%2011%2C18%2011%2C11%2018%2C11%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																				style="height: 18px; width: 18px;"><img
																				src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpolygon%20fill%3D%22%23333%22%20points%3D%2218%2C7%2011%2C7%2011%2C0%207%2C0%207%2C7%200%2C7%200%2C11%207%2C11%207%2C18%2011%2C18%2011%2C11%2018%2C11%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																				style="height: 18px; width: 18px;"><img
																				src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpolygon%20fill%3D%22%23111%22%20points%3D%2218%2C7%2011%2C7%2011%2C0%207%2C0%207%2C7%200%2C7%200%2C11%207%2C11%207%2C18%2011%2C18%2011%2C11%2018%2C11%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																				style="height: 18px; width: 18px;">
																		</button>
																		<div
																			style="position: relative; overflow: hidden; width: 30px; height: 1px; margin: 0px 5px; background-color: rgb(230, 230, 230); top: 0px;"></div>
																		<button draggable="false" title="Thu nhỏ"
																			aria-label="Thu nhỏ" type="button"
																			class="gm-control-active"
																			style="background: none; display: block; border: 0px; margin: 0px; padding: 0px; position: relative; cursor: pointer; user-select: none; overflow: hidden; width: 40px; height: 40px; top: 0px; left: 0px;">
																			<img
																				src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23666%22%20d%3D%22M0%2C7h18v4H0V7z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																				style="height: 18px; width: 18px;"><img
																				src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23333%22%20d%3D%22M0%2C7h18v4H0V7z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																				style="height: 18px; width: 18px;"><img
																				src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23111%22%20d%3D%22M0%2C7h18v4H0V7z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																				style="height: 18px; width: 18px;">
																		</button>
																	</div>
																</div>
															</div>
															<div
																class="gmnoprint gm-bundled-control gm-bundled-control-on-bottom"
																draggable="false" controlwidth="0" controlheight="0"
																style="margin: 10px; user-select: none; position: absolute; display: none; bottom: 14px; right: 0px;">
																<div style="position: absolute; left: 0px; top: 0px;"></div>
																<div class="gmnoprint" controlwidth="40"
																	controlheight="40"
																	style="display: none; position: absolute;">
																	<div style="width: 40px; height: 40px;">
																		<button draggable="false" title="Xoay bản đồ 90 độ"
																			aria-label="Xoay bản đồ 90 độ" type="button"
																			class="gm-control-active"
																			style="background: none rgb(255, 255, 255); display: none; border: 0px; margin: 0px 0px 32px; padding: 0px; position: relative; cursor: pointer; user-select: none; width: 40px; height: 40px; top: 0px; left: 0px; overflow: hidden; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px;">
																			<img
																				src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224%22%20height%3D%2222%22%20viewBox%3D%220%200%2024%2022%22%3E%0A%20%20%3Cpath%20fill%3D%22%23666%22%20fill-rule%3D%22evenodd%22%20d%3D%22M20%2010c0-5.52-4.48-10-10-10s-10%204.48-10%2010v5h5v-5c0-2.76%202.24-5%205-5s5%202.24%205%205v5h-4l6.5%207%206.5-7h-4v-5z%22%20clip-rule%3D%22evenodd%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																				style="height: 18px; width: 18px;"><img
																				src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224%22%20height%3D%2222%22%20viewBox%3D%220%200%2024%2022%22%3E%0A%20%20%3Cpath%20fill%3D%22%23333%22%20fill-rule%3D%22evenodd%22%20d%3D%22M20%2010c0-5.52-4.48-10-10-10s-10%204.48-10%2010v5h5v-5c0-2.76%202.24-5%205-5s5%202.24%205%205v5h-4l6.5%207%206.5-7h-4v-5z%22%20clip-rule%3D%22evenodd%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																				style="height: 18px; width: 18px;"><img
																				src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224%22%20height%3D%2222%22%20viewBox%3D%220%200%2024%2022%22%3E%0A%20%20%3Cpath%20fill%3D%22%23111%22%20fill-rule%3D%22evenodd%22%20d%3D%22M20%2010c0-5.52-4.48-10-10-10s-10%204.48-10%2010v5h5v-5c0-2.76%202.24-5%205-5s5%202.24%205%205v5h-4l6.5%207%206.5-7h-4v-5z%22%20clip-rule%3D%22evenodd%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																				style="height: 18px; width: 18px;">
																		</button>
																		<button draggable="false" title="Nghiêng bản đồ"
																			aria-label="Nghiêng bản đồ" type="button"
																			class="gm-tilt gm-control-active"
																			style="background: none rgb(255, 255, 255); display: block; border: 0px; margin: 0px; padding: 0px; position: relative; cursor: pointer; user-select: none; width: 40px; height: 40px; top: 0px; left: 0px; overflow: hidden; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px;">
																			<img
																				src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218px%22%20height%3D%2216px%22%20viewBox%3D%220%200%2018%2016%22%3E%0A%20%20%3Cpath%20fill%3D%22%23666%22%20d%3D%22M0%2C16h8V9H0V16z%20M10%2C16h8V9h-8V16z%20M0%2C7h8V0H0V7z%20M10%2C0v7h8V0H10z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																				style="width: 18px;"><img
																				src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218px%22%20height%3D%2216px%22%20viewBox%3D%220%200%2018%2016%22%3E%0A%20%20%3Cpath%20fill%3D%22%23333%22%20d%3D%22M0%2C16h8V9H0V16z%20M10%2C16h8V9h-8V16z%20M0%2C7h8V0H0V7z%20M10%2C0v7h8V0H10z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																				style="width: 18px;"><img
																				src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218px%22%20height%3D%2216px%22%20viewBox%3D%220%200%2018%2016%22%3E%0A%20%20%3Cpath%20fill%3D%22%23111%22%20d%3D%22M0%2C16h8V9H0V16z%20M10%2C16h8V9h-8V16z%20M0%2C7h8V0H0V7z%20M10%2C0v7h8V0H10z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																				style="width: 18px;">
																		</button>
																	</div>
																</div>
															</div>
															<div draggable="false" class="gm-style-cc"
																style="position: absolute; user-select: none; height: 14px; line-height: 14px; right: 215px; bottom: 0px;">
																<div
																	style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
																	<div style="width: 1px;"></div>
																	<div
																		style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div>
																</div>
																<div
																	style="position: relative; padding-right: 6px; padding-left: 6px; box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
																	<span>200 m&nbsp;</span>
																	<div
																		style="position: relative; display: inline-block; height: 8px; bottom: -1px; width: 47px;">
																		<div
																			style="width: 100%; height: 4px; position: absolute; left: 0px; top: 0px;"></div>
																		<div
																			style="width: 4px; height: 8px; left: 0px; top: 0px; background-color: rgb(255, 255, 255);"></div>
																		<div
																			style="width: 4px; height: 8px; position: absolute; background-color: rgb(255, 255, 255); right: 0px; bottom: 0px;"></div>
																		<div
																			style="position: absolute; background-color: rgb(102, 102, 102); height: 2px; left: 1px; bottom: 1px; right: 1px;"></div>
																		<div
																			style="position: absolute; width: 2px; height: 6px; left: 1px; top: 1px; background-color: rgb(102, 102, 102);"></div>
																		<div
																			style="width: 2px; height: 6px; position: absolute; background-color: rgb(102, 102, 102); bottom: 1px; right: 1px;"></div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div
														style="background-color: white; font-weight: 500; font-family: Roboto, sans-serif; padding: 15px 25px; box-sizing: border-box; top: 5px; border: 1px solid rgba(0, 0, 0, 0.12); border-radius: 5px; left: 50%; max-width: 375px; position: absolute; transform: translateX(-50%); width: calc(100% - 10px); z-index: 1;">
														<div>
															<img alt=""
																src="http://maps.gstatic.com/mapfiles/api-3/images/google_gray.svg"
																draggable="false"
																style="padding: 0px; margin: 0px; border: 0px; height: 17px; vertical-align: middle; width: 52px; user-select: none;">
														</div>
														<div style="line-height: 20px; margin: 15px 0px;">
															<span
																style="color: rgba(0, 0, 0, 0.87); font-size: 14px;">Trang
																này không thể tải Google Maps đúng cách.</span>
														</div>
														<table style="width: 100%;">
															<tr>
																<td style="line-height: 16px; vertical-align: middle;"><a
																	href="https://developers.google.com/maps/documentation/javascript/error-messages?utm_source=maps_js&amp;utm_medium=degraded&amp;utm_campaign=keyless#api-key-and-billing-errors"
																	target="_blank" rel="noopener"
																	style="color: rgba(0, 0, 0, 0.54); font-size: 12px;">Bạn
																		có sở hữu trang web này không?</a></td>
																<td style="text-align: right;"><button
																		class="btn dismissButton">OK</button></td>
															</tr>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>


							</div>

							<div class="form-group row">
								<div class="col-sm-2"></div>
								<div class="col-sm-10" style="text-align: right;">
									<button id="btn-add-bds" type="button"
										class="mb-2 mr-2 btn btn-primary">Lưu</button>
								</div>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="/js/trangcanhan/taobatdongsan.js"></script>