<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-expand-sm mybgColor">
	<div class="container-fluid">
		<ul class="navbar-nav">
			<li class="nav-item"><a
				href="${pageContext.request.contextPath}/web/main"
				class="nav-link active">Home</a></li>
			<li class="nav-item"><a
				href="${pageContext.request.contextPath}/web/board/boardList"
				class="nav-link">Board</a></li>
			<li class="nav-item"><a
				href="${pageContext.request.contextPath}/web/board/boardSearchList"
				class="nav-link">SearchBoard</a></li>
			<li class="nav-item"><a
				href="${pageContext.request.contextPath}/web/upload/upboardList?&searchType=&searchValue=?cPage=1"
				class="nav-link">UpLoad</a></li>
			<li class="nav-item"><a href="#" class="nav-link">Profile</a></li>
			<li class="nav-item"><a href="#" class="nav-link">Contact</a></li>
		</ul>
		<form class="d-flex">
			<input class="form-control me-2" type="text" placeholder="Search"
				name="searchv" id="searchv">
			<button class="btn btn-primary" type="button">Search</button>
		</form>
	</div>
</nav>