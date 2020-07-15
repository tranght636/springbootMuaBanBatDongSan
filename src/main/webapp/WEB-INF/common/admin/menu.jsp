<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@include file="../taglib.jsp"%>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
     <div class="app-sidebar sidebar-shadow">
                <div class="app-header__logo">
                    <div class="logo-src"></div>
                    <div class="header__pane ml-auto">
                        <div>
                            <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                                    <span class="hamburger-box">
                                        <span class="hamburger-inner"></span>
                                    </span>
                                </button>
                        </div>
                    </div>
                </div>
                <div class="app-header__mobile-menu">
                    <div>
                        <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                                <span class="hamburger-box">
                                    <span class="hamburger-inner"></span>
                                </span>
                            </button>
                    </div>
                </div>
                <div class="app-header__menu">
                    <span>
                            <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                                <span class="btn-icon-wrapper">
                                    <i class="fa fa-ellipsis-v fa-w-6"></i>
                                </span>
                    </button>
                    </span>
                </div>
                <div class="scrollbar-sidebar">
                    <div class="app-sidebar__inner">
                        <ul class="vertical-nav-menu">
                            <li class="app-sidebar__heading">
									Web Bất Động sản
							</li>
                            <li>
                                <a class="mm-active" href='<c:url value="/"/>'>
			                    <i class="metismenu-icon pe-7s-home"></i> Trang chủ</a>
                            </li>
                            <li class="app-sidebar__heading">Thông tin cá nhân</li>
                            <li>
                                <a href='<c:url value="/admin/cap-nhat-thong-tin"/>'>
                                    <i class="metismenu-icon pe-7s-id"></i> Cập nhật thông tin cá nhân
                                </a>
                            </li>
                            <li class="app-sidebar__heading">Quản lý người dùng</li>
                            <li>
                                <a href='<c:url value="/admin/quan-ly-nguoi-dung"/>'>
                                    <i class="metismenu-icon pe-7s-id"></i> Quản lý người dùng
                                </a>
                            </li>
                            <li>
                                <a href='<c:url value="/admin/phan-hoi"/>'>
                                    <i class="metismenu-icon pe-7s-id"></i> Phản hồi
                                </a>
                            </li>
                            <li>
                                <a href='<c:url value="/admin/bat-dong-san-yeu-thich"/>'>
                                    <i class="metismenu-icon pe-7s-like"></i> BDS yêu thích
                                </a>
                            </li>
                            <li class="app-sidebar__heading">Quản lý tin rao</li>
                            <li>
                                <a href='<c:url value="/admin/bat-dong-san-cho-xac-nhan"/>'>
                                    <i class="metismenu-icon pe-7s-note2"></i> BDS chờ xác nhận
                                </a>
                            </li>
                            <li>
                                <a href='<c:url value="/admin/bat-dong-san-cho-giao-dich"/>'>
                                    <i class="metismenu-icon pe-7s-note2"></i> BDS chờ giao dịch
                                </a>
                            </li>
                             <li>
                                <a href='<c:url value="/admin/bat-dong-san-bi-cam"/>'>
                                    <i class="metismenu-icon pe-7s-note2"></i> BDS bị cấm
                                </a>
                            </li>
                            <li>
                                <a href='<c:url value="/admin/bao-cao-thong-ke"/>'>
                                    <i class="metismenu-icon pe-7s-note2"></i> Báo cáo thống kê
                                </a>
                            </li>
                            <li>
                                <a href='<c:url value="/admin/daytin"/>'>
                                    <i class="metismenu-icon pe-7s-note2"></i> Đẩy bất động sản
                                </a>
                            </li>
                            
                            
                        </ul>
                    </div>
                </div>
            </div>
        
    