<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>

<div class="row" style="width: 100%;">
	<div class="col-lg-12">
		<div class="main-card mb-12 card">
			<div class="card-body">
				<c:if test="${not empty message}">
					<div class="alert alert-warning">${message}</div>
				</c:if>
				<h5 class="card-title">Đăng ký đẩy tin</h5>
				<div class="scroll-area-md" style="height: 550px;">
					<div class="card-body">
						<form id="bai-dang" class="bai_dang"
							action='<c:url value="/trang-ca-nhan/dang-ky-day-tin"/>'
							method="POST">
							<div class="container">
								<div class="form-group row">
									<h2>Chi phí cho một lần đẩy tin của bạn là 20.000 VND, bạn
										có thể thanh toán bằng cách nạp thẻ cào.</h2>
								</div>
								<input  name="bai_dang_id" id="" class="form-control"
											rows="1" style="width: 100%; color: black;" value="${id}" hidden="true"></input>
								<div class="form-group row">
										
									<label class="col-sm-4 col-form-label">Loại thẻ cào:</label>
									<div class="col-sm-4">
										<select name="loai_the" class="btnSort "
											style="width: 100%; border: 1px solid #ced4da; border-radius: .25rem;">
											<option value="viettel">viettel</option>
											<option value="vinaphone">vinaphone</option>
											<option value="mobiphone">mobiphone</option>
											<option value="vietNamobile">vietNamobile</option>
										</select>
									</div>
									<div class="col-sm-4">Mệnh giá 20.000 VND</div>
								</div>
								<div class="form-group row">
									<label for="title" class="col-sm-2 col-form-label">seri
										thẻ</label>
									<div class="col-sm-10">
										<input type="number" name="seri" id="TBDS_title" class="form-control"
											rows="1" style="width: 100%; color: black;"></input>
									</div>
								</div>
								<div class="form-group row">
									<label  for="title" class="col-sm-2 col-form-label"> Mã
										cào:</label>
									<div class="col-sm-10">
										<input type="number" name="ma_cao" id="TBDS_mo_ta_tong_quat"
											class="form-control" rows="1"
											style="width: 100%; color: black;"></input>
									</div>
								</div>


								<div class="form-group row">
									<div class="col-sm-2"></div>
									<div class="col-sm-10" style="text-align: right;">
										<button id="btn-add-bds" type="submit"
											class="mb-2 mr-2 btn btn-primary">Đăng ký </button>
									</div>
								</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
