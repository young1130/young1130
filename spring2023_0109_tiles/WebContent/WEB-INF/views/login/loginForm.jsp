<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<article>
	<header>
		<h1>LoginProcess Demo</h1>
	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div class="container">
		<form action="loginProcess" method="post" id="loginInfo">
			<input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
			<div class="form-group">
				<label for="id">ID</label> <input type="text" class="form-control"
					id="id" placeholder="���̵� �Է�" name="id" maxlength="10"
					required="required" pattern=".{2,10}">
			</div>
			<div class="form-group">
				<label for="pwd">PWD</label>
			<input type="password" class="form-control" id="pwd" placeholder="******"
			name="pwd" maxlength="10" required="required" pattern=".{2,10}">
			</div>
			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="submit" class="btn btn-primary">���</button>&nbsp;
				<button type="button" class="btn btn-primary">���̵�/���ã��</button>
			</div>
		</form>
	</div>

</article>