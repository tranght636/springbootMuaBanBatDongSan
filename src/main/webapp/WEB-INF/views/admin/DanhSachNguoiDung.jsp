<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@include file="../../common/taglib.jsp"%>

        <div class="card-body">
            <div style="text-align: right;">
                <a type="button" class="btn btn-primary" href='<c:url value="/admin/quan-ly-nguoi-dung"/>' style="margin-bottom: 2px;">Làm mới </a>
                <!-- <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#AddUserModalCenter">Tạo tài khoản</button> -->
            </div>
            <div class="mb-3 card">
                <div class="card-header">
                    <ul class="nav nav-justified">
                        <li class="nav-item"><a data-toggle="tab" href="#tab-eg7-0" class="nav-link show active">Người dùng còn hoạt động</a></li>
                        <li class="nav-item"><a data-toggle="tab" href="#tab-eg7-1" class="nav-link show ">Người dùng đã bị xóa</a></li>
                        <sec:authorize access="hasAnyAuthority('ADMIN')">
                            <li class="nav-item"><a data-toggle="tab" href="#tab-eg7-2" class="nav-link show ">Tạo tài khoản</a></li>
                        </sec:authorize>
                    </ul>
                </div>
                <div class="card-body">

                    <div class="tab-content">

                        <div class="tab-pane show active" id="tab-eg7-0" role="tabpanel">
                            <!--  -->
                            <div class="scroll-area-md" style="height: 550px;">
                                <div class="card-body">
                                    <ul class="list-group">
                                        <c:forEach var="user" items="${userDangHoatDong}">
                                            <li class="list-group-item-action list-group-item">

                                                <div class="single-profile-front row">
                                                    <div class="profile-img col-lg-8">
                                                        <a href='<c:url value="/admin/chi-tiet-nguoi-dung?user-id=${user.id }"/>'>
                                                            <div class="widget-content p-0">
                                                                <div class="widget-content-wrapper">
                                                                    <div class="widget-content-left mr-3">
                                                                        <div class="widget-content-left">
                                                                            <img width="40" height="40" class="rounded-circle" src="/img/web/user.png" alt="">
                                                                        </div>
                                                                    </div>
                                                                    <div class="widget-content-left flex2">
                                                                        <div class="widget-heading">${user.username}</div>
                                                                        <small>Email: ${user.email} - SDT:
																	${user.phone_number} - DC: ${user.address} </small>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <div class="profile-caption" style="margin-left: 5px; margin-right: 5px; text-align: left;">
                                                            <div style="text-align: right;">
                                                                <div class="badge badge-success btn">Hoạt động</div>
                                                                <sec:authorize access="hasAnyAuthority('ADMIN')">
                                                                    <div class="badge badge-danger btn DSND-btn-xoa" id-user="${user.id}">Xóa</div>
                                                                </sec:authorize>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>


                            <!--  -->
                        </div>

                        <div class="tab-pane show " id="tab-eg7-1" role="tabpanel">
                            <!--  -->
                            <div class="scroll-area-md" style="height: 550px;">
                                <div class="card-body">
                                    <ul class="list-group">
                                        <c:forEach var="user" items="${userDaXoa}">
                                            <li class="list-group-item-action list-group-item">
                                                <div class="single-profile-front row">
                                                    <div class="profile-img col-lg-8">
                                                        <a href='<c:url value="/admin/chi-tiet-nguoi-dung?user-id=${user.id }"/>'>
                                                            <div class="widget-content p-0">
                                                                <div class="widget-content-wrapper">
                                                                    <div class="widget-content-left mr-3">
                                                                        <div class="widget-content-left">
                                                                            <img width="40" height="40" class="rounded-circle" src="/img/web/user.png" alt="">
                                                                        </div>
                                                                    </div>
                                                                    <div class="widget-content-left flex2">
                                                                        <div class="widget-heading">${user.username}</div>
                                                                        <small>Email: ${user.email} - SDT:
																	${user.phone_number} - DC: ${user.address} </small>
                                                                    </div>
                                                                </div>
                                                        </a>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="profile-caption" style="margin-left: 5px; margin-right: 5px; text-align: left;">

                                                            <div style="text-align: right;">
                                                                <div class="badge badge-success btn DSND-btn-khoi-phuc" id-user="${user.id}">Khôi phục</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </li>

                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>


                            <!--  -->

                        </div>


                        <!-- Tab Tạo tài khoản -->
                        <sec:authorize access="hasAnyAuthority('ADMIN')">
                            <div class="tab-pane show" id="tab-eg7-2" role="tabpanel">
                                <!--  -->
                                <div class="scroll-area-md" style="height: 550px;">
                                    <div class="card-body">
                                        <form class="user" action='<c:url value="/create-user"/>' method="POST">
                                            <div class="form-group">
                                                <input type="text" class="form-control form-control-user" id="username" placeholder="Full Name" name="username">
                                            </div>
                                            <div class="form-group">
                                                <div class="span-email-exist" style="margin-left: 15px;" hidden="true">
                                                    <span style="color: red;">Email đã tồn tại</span>
                                                </div>
                                                <input type="email" class="form-control form-control-user input-register-email" placeholder="Email Address" name="email">
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-sm-6 mb-3 mb-sm-0">
                                                    <input type="password" class="form-control form-control-user" id="password" placeholder="Password" name="password">
                                                </div>
                                                <div class="col-sm-6">
                                                    <input type="password" class="form-control form-control-user" id="repeat-passsword" placeholder="Repeat Password">
                                                </div>
                                            </div>
                                            <div class="form-group row" id="confirm-incorrect" hidden="true">
                                                <div class="col-sm-2"></div>
                                                <div class="col-sm-10">
                                                    <span style="color: red;">Nhập lại không đúng</span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control form-control-user" id="address" placeholder="Address" name="address">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control form-control-user" id="phone_number" placeholder="Phone" name="phone_number">
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-sm-12">
                                                    <input type="date" class="form-control form-control-user" id="dob" name="dob" title="Date of birth">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-sm-12">
                                                    <select class="form-control" name="roleId">
                                                    <option value="-1">Chọn quyền</option>
                                                    <c:forEach var="role" items="${roles}">
                                                        <option value="${role.id}">${role.name}</option>
                                                    </c:forEach>
												</select>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-sm-12" style="text-align: right;">
                                                    <button type="submit" class="btn btn-outline-danger">Thêm tài khoản</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>


                                <!--  -->
                            </div>
                        </sec:authorize>
                    </div>
                </div>
            </div>
        </div>

        <script src="/js/admin/danhsachnguoidung.js"></script>