<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../common/taglib.jsp"%>
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
<link rel="stylesheet" href="/templates/admin/main.css" />
<script src="/templates/web/assets/js/vendor/jquery-1.12.4.min.js"></script>
<style type="text/css">/* Chart.js */
@
-webkit-keyframes chartjs-render-animation {
	from {opacity: 0.99
}

to {
	opacity: 1
}

}
@
keyframes chartjs-render-animation {
	from {opacity: 0.99
}

to {
	opacity: 1
}

}
.chartjs-render-monitor {
	-webkit-animation: chartjs-render-animation 0.001s;
	animation: chartjs-render-animation 0.001s;
}
</style>
<script type="text/javascript" charset="UTF-8"
	src="http://maps.google.com/maps-api-v3/api/js/41/3a/intl/vi_ALL/common.js"></script>
<script type="text/javascript" charset="UTF-8"
	src="http://maps.google.com/maps-api-v3/api/js/41/3a/intl/vi_ALL/util.js"></script>
<script type="text/javascript" charset="UTF-8"
	src="http://maps.googleapis.com/maps/api/js/AuthenticationService.Authenticate?1sfile%3A%2F%2F%2FD%3A%2FHocTap%2FUIT%2FDoAnChuyenNganh%2Ftemplate%2Farchitectui-html-free%2Farchitectui-html-free%2Farchitectui-html-free%2Findex.html&amp;5sfile%3A%2F%2F%2FD%3A%2FHocTap%2FUIT%2FDoAnChuyenNganh%2Ftemplate%2Farchitectui-html-free%2Farchitectui-html-free%2Farchitectui-html-free%2Findex.html&amp;callback=_xdc_._aqqxm0&amp;token=35215"></script>
<!-- editor -->
 <script src="/templates/ckeditor/ckeditor.js"></script>
<script src="//cdn.webix.com/edge/webix.js" type="text/javascript"></script>
</head>

<body>
    <div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
    	<%@ include file="../common/admin/header.jsp"%>
	    <div class="app-main">
	    	<%@ include file="../common/admin/menu.jsp"%>
	    	<div class="app-main__outer">
	                <div class="app-main__inner">
	                    <div class="app-page-title">
	                        <div class="page-title-wrapper">
	                        <sitemesh:write property="body" />
	                        </div>
	                    </div>
	                 </div>
	        </div>
	    </div>
	    <%@ include file="../common/admin/footer.jsp"%>
    </div>
	<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
	<script type="text/javascript" src="/templates/admin/assets/scripts/main.js"></script>
	<script src="/js/admin/home.js"></script>
	<script src="/js/admin/home.api.js"></script>
	<script src="/js/admin/home.view.js"></script>
	<script src="/templates/admin/main.js"></script>
</body>

</html>

