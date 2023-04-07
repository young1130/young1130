<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
	<!-- 1page start -->
	<div data-role="page">

		<div data-role="header">
			<h1>Mobile page</h1>
			<a href="#" class="ui-btn ui-btn-inline">Ȩ</a>
			<button class="ui-btn ui-btn-inline">����</button>
		</div>
		<!-- /header -->

		<div role="main" class="ui-content">
			<p>Mobile Page List</p>
			<div data-role="collapsible" data-mini="true">
				<h3>List</h3>
				<ul data-role="listview">
					<c:forEach var="listv" items="${list}">
						<li><a href="">
						<img
							src="${pageContext.request.contextPath}/resources/imgfile/${listv.imgn}">
						</a>
						<h3>${listv.sub}</h3>
						</li>
					</c:forEach>

				</ul>
			</div>
		</div>
		<!-- /content -->

		<div data-role="footer">
			<h4>Footer content</h4>
		</div>
		<!-- /footer -->

	</div>
	<!-- 1page end -->
</body>
</html>