<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@include file="../taglib.jsp"%>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href='<c:url value="/admin/trang-chu"/>'>
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Web Đất Động sản</span></a>
            </li>
            <!-- Divider -->
            <hr class="sidebar-divider">
            <!-- Heading -->
            <div class="sidebar-heading">Quản lý Tin Rao</div>
            <li class="nav-item">
                <a class="nav-link ">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Nhà đất bán</span>
                </a>
            </li>



            <!-- Divider -->
            <hr class="sidebar-divider">
            <!-- Heading -->
            <div class="sidebar-heading">Quản lý User</div>

            <%-- 
<!-- Heading -->
<div class="sidebar-heading">Quản lý tin rao</div>
<li class="nav-item">
  <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
    <i class="fas fa-fw fa-table"></i>
    <span>Nhà đất bán</span>
  </a>
  <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
      <a class="collapse-item" href='<c:url value="/admin/thanh-vien?action=thanhvien"/>'>Thành viên</a>
      <a class="collapse-item" href='<c:url value="/admin/thanh-vien-cho-duyet?action=choduyet"/>'>Thành viên chờ duyệt</a>
    </div>
  </div>
</li>
<li class="nav-item">
  <a class="nav-link" href="<c:url value="/admin/tien-do?action=tiendo"/>">
    <i class="fas fa-fw fa-table"></i>
    <span>Nhà đất cho Thuê</span></a>
</li>
<li class="nav-item">
  <a class="nav-link" href="<c:url value="/admin/tien-do?action=tiendo"/>">
    <i class="fas fa-fw fa-table"></i>
    <span>Dự án</span></a>
</li>
<li class="nav-item">
  <a class="nav-link" href="<c:url value="/admin/tien-do?action=tiendo"/>">
    <i class="fas fa-fw fa-table"></i>
    <span>Tin tức</span></a>
</li>
<li class="nav-item">
  <a class="nav-link" href="<c:url value="/admin/tien-do?action=tiendo"/>">
    <i class="fas fa-fw fa-table"></i>
    <span>Danh bạ</span></a>
</li>


<!--  -->



<!-- Divider -->
<hr class="sidebar-divider">

<!-- Heading -->
<!-- <div class="sidebar-heading">Quản lý nhân sự</div> -->

<!-- Nav Item - Pages Collapse Menu -->
<li class="nav-item">
  <a class="nav-link" href="#" ><!-- data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo" -->
    <i class="fas fa-fw fa-cog"></i>
    <span>Thành viên</span>
  </a>
  <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
      <a class="collapse-item" href='<c:url value="/admin/thanh-vien?action=thanhvien"/>'>Thành viên</a>
    </div>
  </div>
</li>

<li class="nav-item">
  <a class="nav-link" href="<c:url value="/admin/khoa-hoc"/>">
    <i class="fas fa-fw fa-table"></i>
    <span>Khoá học</span></a>
</li>

<li class="nav-item">
  <a class="nav-link" href="<c:url value="/admin/thong-bao-deadline?action=thong_bao_va_deadline"/>">
    <i class="fas fa-fw fa-table"></i>
    <span>Thông báo & Deadline</span></a>
</li>


<!-- Divider -->
<hr class="sidebar-divider">

<!-- Heading -->
<div class="sidebar-heading">Quản lý Lịch & Thời khoá biểu</div>
<li class="nav-item">
  <a class="nav-link" href="<c:url value="/admin/thong-tin-dang-ky-lich?action=thongtindangkylich"/>">
    <i class="fas fa-fw fa-table"></i>
    <span>Thông tin đăng kí lịch</span></a>
</li>
<li class="nav-item">
  <a class="nav-link" href="<c:url value="/admin/soan-thoi-khoa-bieu?action=soanthoikhoabieu"/>">
    <i class="fas fa-fw fa-table"></i>
    <span>Soạn Thời khoá biểu</span></a>
</li>
<li class="nav-item">
  <a class="nav-link" href="<c:url value="/admin/thong-tin-xin-nghi?action=thongtinxinnghi"/>">
    <i class="fas fa-fw fa-table"></i>
    <span>Thông tin xin nghỉ</span></a>
</li>


<!-- Divider -->
<hr class="sidebar-divider">

<!-- Heading -->
<div class="sidebar-heading">Quản lý Lớp</div>
<li class="nav-item">
  <a class="nav-link" href="<c:url value="/admin/danh-sach-lop?action=danhsachlop"/>">
    <i class="fas fa-fw fa-table"></i>
    <span>Danh sách Lớp</span></a>
</li>
<li class="nav-item">
  <a class="nav-link" href="<c:url value="/admin/xep-lop?action=xeplop"/>">
    <i class="fas fa-fw fa-table"></i>
    <span>Xếp lớp</span></a>
</li>




<!-- Divider -->
<hr class="sidebar-divider d-none d-md-block">

<!-- Sidebar Toggler (Sidebar) -->
  <div class="text-center d-none d-md-inline">
    <button class="rounded-circle border-0" id="sidebarToggle"></button>
  </div> --%>

        </ul>
        <!-- End of Sidebar -->