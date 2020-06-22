<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@include file="../taglib.jsp"%>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
