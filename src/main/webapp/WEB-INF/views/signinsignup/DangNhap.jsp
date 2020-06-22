<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign in</title>
	</head>		

	<body>
<div class="container">
<%@include file="../../common/taglib.jsp"%>
	<!-- Outer Row -->
	<div class="row justify-content-center">

		<div class="col-xl-10 col-lg-12 col-md-9">

			<div class="card o-hidden border-0 shadow-lg my-5">
				<div class="card-body p-0">
					<!-- Nested Row within Card Body -->
					<div class="row">
						<div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
						<div class="col-lg-6">
							<div class="p-5">
								<c:if test="${not empty message}">
									<div class="alert alert-${alert}">
											${message}
									</div>
								</c:if>
								<div class="text-center">
									<h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
								</div>
								<form action='<c:url value="/"/>' method="POST">
									<div class="form-group">
										<input type="email" class="form-control form-control-user"
											aria-describedby="emailHelp"
											placeholder="Enter Email Address..."
											name="email">
									</div>
									<div class="form-group">
										<input type="password" class="form-control form-control-user"
											placeholder="Password" name="password">
									</div>
									<div class="form-group">
										<div class="custom-control custom-checkbox small">
											<input type="checkbox" class="custom-control-input"
												id="customCheck"> <label
												class="custom-control-label" for="customCheck">Remember
												Me</label>
										</div>
									</div>
									<button class="btn btn-primary btn-user btn-block" type="submit"> Login </button>
									<hr>
									<a href="#" class="btn btn-google btn-user btn-block">
										<i class="fab fa-google fa-fw"></i> Login with Google
									</a> <a href="#"
										class="btn btn-facebook btn-user btn-block"> <i
										class="fab fa-facebook-f fa-fw"></i> Login with Facebook
									</a>
								</form>
								<hr>
								<div class="text-center">
									<a class="small" href="forgot-password.html">Forgot
										Password?</a>
								</div>
								<div class="text-center">
									<a class="small" href="<c:url value='/sign-up'/>">Create an Account!</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>

</div>
	
		
		<script src="/js/signinsignup/signin.api.js"></script>
	    <script src="/js/signinsignup/signin.view.js"></script>
	    <script src="/js/signinsignup/signin.js"></script>
	</body>
</html>




