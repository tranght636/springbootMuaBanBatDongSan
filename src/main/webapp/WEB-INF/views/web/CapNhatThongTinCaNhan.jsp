<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>

<body>
	<div class="row justify-content-center">
		<div class="col-xl-10 col-lg-12 col-md-9">
			<div class="card o-hidden border-0 shadow-lg my-5">
				<div class="card-body p-0">
					<div style="margin: 15px;">
					    <c:if test="${not empty message}">
					        <div class="alert alert-${alert}">
					            ${message}
					        </div>
					    </c:if>
					    <form id="form-profile" action="/admin/thong-tin-tai-khoan" method="POST">
					        <input name="id" value="${USERMODEL.id}" hidden="true" />
					        
					        <div class="form-group">
								<input type="text" class="form-control form-control-user"
									id="username" placeholder="Full Name" name="username">
							</div>
							<div class="form-group">
								<div class="span-email-exist" style="margin-left: 15px;"
									hidden="true">
									<span style="color: red;">Email đã tồn tại</span>
								</div>
								<input type="email" class="form-control form-control-user input-register-email"
								 placeholder="Email Address"
									name="email">
							</div>
							<div class="form-group row">
								<div class="col-sm-6 mb-3 mb-sm-0">
									<input type="password" class="form-control form-control-user"
										id="newpassword" placeholder="New Password" name="newpassword">
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
									id="address" placeholder="Address" name="address">
							</div>
							<div class="form-group">
								<input type="text" class="form-control form-control-user"
										id="phone" placeholder="Phone" name="phoneNumber">
							</div>
							<div class="form-group row">
								<div class="col-sm-6 mb-3 mb-sm-0">
									<input type="text" class="form-control form-control-user"
									id="gender" placeholder="Gender" name="gender">
								</div>
								<div class="col-sm-6">
									<input type="date" class="form-control form-control-user"
										id="dob" name="dob" title="Date of birth">
								</div>
							</div>
							<button type="submit" class="btn  btn-user btn-block btn-create" style="width: 300px; float: right; margin-bottom: 15px;">Save</button>
    					</form>
    					</div>
				</div>
			</div>
		</div>
	</div>
				



</body>
</html>