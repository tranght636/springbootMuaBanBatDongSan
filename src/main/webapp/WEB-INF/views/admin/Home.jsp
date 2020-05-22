<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">

<head>
<meta charset="UTF-8" />
<title>Welcome</title>
</head>

<body onload="getListUser()">
	<c:forEach var="i" begin="1" end="5">
         Item <c:out value="${i}" />
		<p>
	</c:forEach>
	<%-- <c:forEach var="user" items="${tblUser}">
		<li
			class="list-group-item d-flex justify-content-between align-items-center">
			<div style="margin-right: 25px;">
				<a class="a-notification-admin" href="#"> ${user.username} </a> <span
					style="color: #2b2b2b; font-size: 13px;"> ${user.password} </span>
				<span style="color: #f00; font-size: 16px"> *new</span>
			</div>
		</li>
	</c:forEach> --%>
	<!-- <script type="text/javascript">
		async function getListUser() {
			var res = await
			axios.get('/api/return-list-object');
			var data = res.data;
			$$("tblUser").parse(data);
		}
	</script> -->
</body>
</html>