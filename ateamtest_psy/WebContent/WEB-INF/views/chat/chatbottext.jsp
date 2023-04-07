<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<span id="chatp2">
<c:forEach var="e" items="${list }" varStatus="status">
	<div id="fortext">
		<div class="d-flex flex-row justify-content-end mb-4" id="div1">
			<div class="p-3 me-3 border" id="div2"
				style="border-radius: 15px; background-color: #fbfbfb; font-weight: bold;">

				<p class="small mb-0" id="keyp">${e.key }</p>

			</div>
			<label class="col-sm-2 col-form-label">°í°´</label>
		</div>

		<div class="d-flex flex-row justify-content-start mb-4">
			<label class="col-sm-2 col-form-label">»ó´ã»ç</label>
			<div class="p-3 ms-3"
				style="border-radius: 15px; background-color: #C60B05; color: #c9b459; font-weight: bold;">

				<p class="small mb-0" id="valuep">${e.value }</p>

			</div>
		</div>
	</div>
</c:forEach>
</span>
</html>