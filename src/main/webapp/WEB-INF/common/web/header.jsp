<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@include file="../taglib.jsp"%>
        <header>
            <!-- Header Start -->
            <div class="header-area">
                <div class="main-header ">
                    <div class="header-top top-bg d-none d-lg-block">
                        <div class="container-fluid">
                            <div class="col-xl-12">
                                <div class="row d-flex justify-content-between align-items-center">
                                    <div class="header-info-left">
                                        <ul>
                                            <li>Website Mua Bán Bất Động Sản</li>
                                        </ul>
                                    </div>
                                    <div class="header-info-right">
                                        <ul class="header-social">
                                            <sec:authorize access="isAnonymous()">
                                                <li><a href="/login"> Đăng nhập</a></li>
                                                <li><a href="/register"> Đăng ký</a></li>
                                            </sec:authorize>

                                            <sec:authorize access="isAuthenticated()">
                                                <li><a href="/trang-ca-nhan/cap-nhat-thong-tin">${USER.username}</a></li>
                                                <li><a href="/trang-ca-nhan/cap-nhat-thong-tin">Trang cá nhân</a></li>
                                            </sec:authorize>

                                            <sec:authorize access="hasAnyAuthority('ADMIN', 'CTV')">
                                                <li><a href="/admin/quan-ly-nguoi-dung">Trang admin</a></li>
                                            </sec:authorize>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Header End -->
        </header>