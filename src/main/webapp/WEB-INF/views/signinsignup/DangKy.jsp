<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
	<%@include file="../../common/taglib.jsp"%>
	<div class="card o-hidden border-0 shadow-lg my-5">
		<div class="card-body p-0">
			<!-- Nested Row within Card Body -->
			<div class="row">
				<div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
				<div class="col-lg-7">
					<div class="p-5">
						<c:if test="${not empty message}">
							<div class="alert alert-${alert}">${message}</div>
						</c:if>
						<div class="text-center">
							<h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
						</div>
						<form class="user" action='<c:url value="/sign-up"/>' method="POST">
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
										id="password" placeholder="Password" name="password">
								</div>
								<div class="col-sm-6">
									<input type="password" class="form-control form-control-user"
										id="repeat-passsword" placeholder="Repeat Password">
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
								<div class="col-sm-12">
									<input type="date" class="form-control form-control-user"
										id="dob" name="dob" title="Date of birth">
								</div>
							</div>
							<button type="submit"
								class="btn btn-primary btn-user btn-block btn-create">Register
								Account</button>
						</form>
						<hr>
						<div class="text-center">
							<a class="small" href="<c:url value='/sign-in'/>">Already
								have an account? Login!</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>