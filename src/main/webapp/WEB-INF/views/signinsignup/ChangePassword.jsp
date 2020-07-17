<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <c:if test="${not empty message}">
                            <div class="alert alert-warning">
                                ${message}
                            </div>
                        </c:if>
                        <div class="col-lg-6 d-none d-lg-block bg-password-image"></div>
                        <div class="col-lg-6">
                            <div class="p-5">
                                <div class="text-center">
                                    <p class="mb-4">Vui lòng kiểm tra email và thay đổi password</p>
                                </div>
                                <form action="<c:url value='/change-password'/>" method="POST">
                                    <div class="form-group">
                                        <input name="email" type="email" class="form-control form-control-user" aria-describedby="emailHelp" placeholder="Email...">
                                    </div>
                                    <div class="form-group">
                                        <input name="token_reset_password" type="text" class="form-control form-control-user" aria-describedby="emailHelp" placeholder="Token...">
                                    </div>
                                    <div class="form-group">
                                        <input name="password" type="password" class="form-control form-control-user" aria-describedby="emailHelp" placeholder="Mật khẩu mới...">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user" aria-describedby="emailHelp" placeholder="Nhập lại mật khẩu">
                                    </div>
                                    <button type="submit" class="btn btn-primary btn-user btn-block">Đổi mật khẩu</button>
                                </form>
                                <hr>
                                <div class="text-center">
                                    <a class="small" href="<c:url value='/sign-in'/>">Create an Account!</a>
                                </div>
                                <div class="text-center">
                                    <a class="small" href="<c:url value='/register'/>">Already have an account? Login!</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>