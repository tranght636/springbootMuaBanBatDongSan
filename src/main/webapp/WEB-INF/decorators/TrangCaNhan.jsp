<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Admin</title>
<!-- Custom fonts for this templates-->
<link rel="stylesheet" href="<c:url value='/templates/admin/vendor/fontawesome-free/css/all.min.css' />" />
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<!-- Custom styles for this templates-->
<link rel="stylesheet" href="/templates/admin/css/sb-admin-2.min.css" />
<link rel="stylesheet"
	href="/templates/vendor/font-awesome/css/font-awesome.min.css" />
<link rel="stylesheet" href="/templates/admin/css/styles.css" />
<!-- webix -->
<link rel="stylesheet" href="//cdn.webix.com/edge/webix.css"
	type="text/css">
<script src="//cdn.webix.com/edge/webix.js" type="text/javascript"></script>
<link rel="stylesheet" href="/templates/admin/main.css" />
<!-- editor -->
 <script src="/templates/ckeditor/ckeditor.js"></script>
<script src="//cdn.webix.com/edge/webix.js" type="text/javascript"></script>
</head>

<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">
		<!-- Sidebar -->
		<%@ include file="../common/trangcanhan/menu.jsp"%>
		<!-- End of Sidebar -->
		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<!-- Topbar -->
				<%@ include file="../common/trangcanhan/header.jsp"%>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">
					<sitemesh:write property="body" />
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- End of Main Content -->
			<!-- Footer -->
			<%@ include file="../common/trangcanhan/footer.jsp"%>
			<!-- End of Footer -->
		</div>
		<!-- End of Content Wrapper -->
	</div>
	<!-- End of Page Wrapper -->
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>


	<!-- Bootstrap core JavaScript-->
	<script src="/templates/admin/vendor/jquery/jquery.min.js"></script>
	<script
		src="/templates/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Core plugin JavaScript-->
	<script
		src="/templates/admin/vendor/jquery-easing/jquery.easing.min.js"></script>
	<!-- Custom scripts for all pages-->
	<script src="/templates/admin/js/sb-admin-2.min.js"></script>
	<!-- Page level plugins -->
	<script src="/templates/admin/vendor/chart.js/Chart.min.js"></script>
	<!-- Page level custom scripts -->
	<script src="/templates/admin/js/demo/chart-area-demo.js"></script>
	<script src="/templates/admin/js/demo/chart-pie-demo.js"></script>
	<!-- js -->
	
	<script src="/js/admin/home.js"></script>
	<script src="/js/admin/home.api.js"></script>
	<script src="/js/admin/home.view.js"></script>
	<script src="/templates/admin/main.js"></script>
</body>

</html>