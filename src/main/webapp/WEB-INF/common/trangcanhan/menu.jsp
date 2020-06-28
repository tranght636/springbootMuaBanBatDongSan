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
                                <a href='<c:url value="/trang-ca-nhan/cap-nhat-thong-tin"/>'>
                                    <i class="metismenu-icon pe-7s-id"></i> Cập nhật thông tin cá nhân
                                </a>
                            </li>
                            <li>
                                <a href='<c:url value="/trang-ca-nhan/bat-dong-san-yeu-thich"/>'>
                                    <i class="metismenu-icon pe-7s-like"></i> BDS yêu thích
                                </a>
                            </li>
                            <li class="app-sidebar__heading">Quản lý tin rao</li>
                            <li>
                                <a href='<c:url value="/trang-ca-nhan/tao-bat-dong-san"/>'>
                                    <i class="metismenu-icon pe-7s-note2"></i> Tạo BDS
                                </a>
                            </li>
                            <li>
                                <a href='<c:url value="/trang-ca-nhan/bat-dong-san-cho-giao-dich"/>'>
                                    <i class="metismenu-icon pe-7s-news-paper"></i> BDS chờ giao dịch
                                </a>
                            </li>
                            <li>
                                <a  href='<c:url value="/trang-ca-nhan/bat-dong-san-cho-xac-nhan"/>'>
                                    <i class="metismenu-icon pe-7s-hourglass"></i> BDS chờ xác nhận
                                </a>
                            </li>
                            <li>
                                <a  href='<c:url value="/trang-ca-nhan/bat-dong-san-day-tin"/>'>
                                    <i class="metismenu-icon pe-7s-rocket"></i> BDS đẩy tin
                                </a>
                            </li>
                            <li>
                                <a href='<c:url value="/trang-ca-nhan/bat-dong-san-da-mua-hoac-da-thue"/>'>
                                    <i class="metismenu-icon pe-7s-display2"></i> BDS đã mua/đã thuê
                                </a>
                            </li>
                            <li>
                                <a href='<c:url value="/trang-ca-nhan/bat-dong-san-da-ban-hoac-da-cho-thue"/>'>
                                    <i class="metismenu-icon pe-7s-check"></i> BDS đã bán/đã cho thuê
                                </a>
                            </li>
                            <li>
                                <a href='<c:url value="/trang-ca-nhan/bat-dong-san-bi-cam"/>'>
                                    <i class="metismenu-icon pe-7s-attention"></i> BDS bị cấm bởi Admin
                                </a>
                            </li>
                             <li>
                                <a href='<c:url value="/trang-ca-nhan/bat-dong-san-da-xoa"/>'>
                                    <i class="metismenu-icon pe-7s-trash"></i> BDS đã xóa
                                </a>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </div>
        
        
    <%--     
        
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href='<c:url value="/"/>'>
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Web Bất Động sản</span></a>
            </li>
            <hr class="sidebar-divider">
             <div class="sidebar-heading">Thông tin cá nhân</div>
             <li class="nav-item">
                <a class="nav-link " href='<c:url value="/trang-ca-nhan/cap-nhat-thong-tin"/>'>
                    <i class="fas fa-fw fa-table"></i>
                    <span>Cập nhật thông tin cá nhân</span><!-- quản lý bài đăng, duyệt -->
                </a>
            </li>
            <!-- Divider -->
            <hr class="sidebar-divider">
            <!-- Heading -->
            <div class="sidebar-heading">Quản lý Tin Rao</div>
            <li class="nav-item">
                <a class="nav-link " href='<c:url value="/trang-ca-nhan/tao-bat-dong-san"/>'>
                    <i class="fas fa-fw fa-table"></i>
                    <span>Tạo bất động sản</span><!-- quản lý bài đăng, duyệt -->
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href='<c:url value="/trang-ca-nhan/bat-dong-san-cho-giao-dich"/>'>
                    <i class="fas fa-fw fa-table"></i>
                    <span>Bất động sản chờ giao dịch</span><!-- quản lý bài đăng, duyệt -->
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href='<c:url value="/trang-ca-nhan/bat-dong-san-cho-xac-nhan"/>'>
                    <i class="fas fa-fw fa-table"></i>
                    <span>Bất động sản đợi xác nhận</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href='<c:url value="/trang-ca-nhan/bat-dong-san-da-mua-hoac-da-thue"/>'>
                    <i class="fas fa-fw fa-table"></i>
                    <span>Bất động sản đã mua/đã thuê</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href='<c:url value="/trang-ca-nhan/bat-dong-san-da-ban-hoac-da-cho-thue"/>'>
                    <i class="fas fa-fw fa-table"></i>
                    <span>Bất động sản đã bán/ đã cho thuê</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href='<c:url value="/trang-ca-nhan/bat-dong-san-bi-cam"/>'>
                    <i class="fas fa-fw fa-table"></i>
                    <span>Bất động sản bị cấm bởi admin</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href='<c:url value="/trang-ca-nhan/bat-dong-san-da-xoa"/>'>
                    <i class="fas fa-fw fa-table"></i>
                    <span>Bất động sản đã xoá.</span>
                </a>
            </li>
             <li class="nav-item">
                <a class="nav-link " href='<c:url value="/trang-ca-nhan/bat-dong-san-day-tin"/>'>
                    <i class="fas fa-fw fa-table"></i>
                    <span>Bất động sản đẩy tin.</span>
                </a>
            </li>
        </ul>
 --%>