<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<div class="row" style="width: 100%;">
		<div class="col-lg-12">
			<div class="main-card mb-12 card">
				<div class="card-body">
					<h5 class="card-title" >Cập nhật thông tin cá nhân</h5>
					
					
					<div style="margin: 15px;">
						<div hidden="true" id="capNhatThanhCong"> Cập nhật thông tin thành công</div>
						<div hidden="true" id="capNhatThatBai"> Cập nhật thông tin thất bại</div>
					        <input name="id" id="id" value="${userModel.id}" hidden="true" />
					        
					        <div class="form-group">
								<input type="text" class="form-control form-control-user"
									id="username" placeholder="Full Name" name="username" value="${userModel.username}">
							</div>
							<div class="form-group">
								<input type="email" class="form-control form-control-user input-register-email"
								 placeholder="Email Address"
									name="email" id="email" value="${userModel.email}" disabled="disabled">
							</div>
							<div class="form-group row">
								<div class="col-sm-6 mb-3 mb-sm-0">
									<input type="password" class="form-control form-control-user"
										id="newpassword" placeholder="New Password" name="password">
								</div>
								<div class="col-sm-6">
									<input type="password" class="form-control form-control-user"
										id="repeat-passsword" placeholder="Repeat Password">
								</div>
							</div>
							 <div class="form-group" id="confirm-incorrect" hidden="true">
					         	<div class="col-sm-2"></div>
					            <div class="col-sm-10">
					                <span style="color: red;">Nhập lại không đúng</span>
					            </div>
					        </div>
							<div class="form-group">
								<input type="text" class="form-control form-control-user"
									id="address" placeholder="Address" name="address" value="${userModel.address}">
							</div>
							<div class="form-group">
								<input type="text" class="form-control form-control-user"
										id="phone" placeholder="Phone" name="phone_number" value="${userModel.phone_number}">
							</div>
							<div class="form-group row">
								<!-- <div class="col-sm-6 mb-3 mb-sm-0">
									<input type="text" class="form-control form-control-user"
									id="gender" placeholder="Gender" name="gender">
								</div> -->
								<div class="col-sm-12">
									<input type="date" class="form-control form-control-user"
										id="dob" name="dob" title="Date of birth" pattern="yyyy-MM-dd" value="${userModel.dob}">
								</div>
							</div>
							<button type="button" class="mb-2 mr-2 btn btn-primary " id="btnCNTTCN-Luu" style="width: 300px; float: right; margin-bottom: 15px;">Save</button>
    					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="/js/trangcanhan/capnhatthongtincanhan.js"></script>
				

