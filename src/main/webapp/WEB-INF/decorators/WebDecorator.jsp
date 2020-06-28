<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Web</title>
<link rel="stylesheet" href="<c:url value='/templates/web/assets/css/bootstrap.min.css' />" />
<link rel="stylesheet" href="<c:url value='/templates/web/assets/css/owl.carousel.min.css' />" />
<link rel="stylesheet" href="<c:url value='/templates/web/assets/css/flaticon.css' />" />
<link rel="stylesheet" href="<c:url value='/templates/web/assets/css/slicknav.css' />" />
<link rel="stylesheet" href="<c:url value='/templates/web/assets/css/animate.min.css' />" />
<link rel="stylesheet" href="<c:url value='/templates/web/assets/css/magnific-popup.css' />" />
<link rel="stylesheet" href="<c:url value='/templates/web/assets/css/fontawesome-all.min.css' />" />
<link rel="stylesheet" href="<c:url value='/templates/web/assets/css/themify-icons.css' />" />
<link rel="stylesheet" href="<c:url value='/templates/web/assets/css/slick.css' />" />
<link rel="stylesheet" href="<c:url value='/templates/web/assets/css/nice-select.css' />" />
<link rel="stylesheet" href="<c:url value='/templates/web/assets/css/style.css' />" />
<link rel="stylesheet" href="<c:url value='/templates/web/assets/css/responsive.css' />" />
 <!-- webix -->
<link rel="stylesheet" href="//cdn.webix.com/edge/webix.css"
	type="text/css">
<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

<script src="/templates/web/assets/js/vendor/jquery-1.12.4.min.js"></script>
<!-- editor -->
 <script src="/templates/ckeditor/ckeditor.js"></script>
<script src="//cdn.webix.com/edge/webix.js" type="text/javascript"></script>


</head>

<body>
	<header>
		<!-- Header Start -->
		<div class="header-area">
			<div class="main-header ">
				<%@ include file="../common/web/header.jsp"%>
				<%@ include file="../common/web/menu.jsp"%>
			</div>
		</div>
	</header>
	<sitemesh:write property="body" />
	<%@ include file="../common/web/footer.jsp"%>
	<!-- js -->
	<script src="/js/web/web.js"></script>
	<script src="/js/web/web.api.js"></script>
	<script src="/js/web/web.view.js"></script>
	
	<!-- search -->
	
		<!-- All JS Custom Plugins Link Here here -->
        <script src="/templates/web/assets/js/vendor/modernizr-3.5.0.min.js"></script>
		
		<!-- Jquery, Popper, Bootstrap -->
		
        <script src="/templates/web/assets/js/popper.min.js"></script>
        <script src="/templates/web/assets/js/bootstrap.min.js"></script>
	    <!-- Jquery Mobile Menu -->
        <script src="/templates/web/assets/js/jquery.slicknav.min.js"></script>

		<!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="/templates/web/assets/js/owl.carousel.min.js"></script>
        <script src="/templates/web/assets/js/slick.min.js"></script>

		<!-- One Page, Animated-HeadLin -->
        <script src="/templates/web/assets/js/wow.min.js"></script>
		<script src="/templates/web/assets/js/animated.headline.js"></script>
		
		<!-- Scrollup, nice-select, sticky -->
        <script src="/templates/web/assets/js/jquery.scrollUp.min.js"></script>
        <script src="/templates/web/assets/js/jquery.nice-select.min.js"></script>
		<script src="/templates/web/assets/js/jquery.sticky.js"></script>
        <script src="/templates/web/assets/js/jquery.magnific-popup.js"></script>

        <!-- contact js -->
        <script src="/templates/web/assets/js/contact.js"></script>
        <script src="/templates/web/assets/js/jquery.form.js"></script>
        <script src="/templates/web/assets/js/jquery.validate.min.js"></script>
        <script src="/templates/web/assets/js/mail-script.js"></script>
        <script src="/templates/web/assets/js/jquery.ajaxchimp.min.js"></script>
        
		<!-- Jquery Plugins, main Jquery -->	
        <script src="/templates/web/assets/js/plugins.js"></script>
        <script src="/templates/web/assets/js/main.js"></script>
</body>

</html>