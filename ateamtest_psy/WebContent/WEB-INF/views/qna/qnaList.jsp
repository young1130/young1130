<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Content���� -->
<div class="container mt-5">
	<div class="row">
		<header>
			<h1>Q&A List</h1>
		</header>
		
			<table class="table table-bordered table-hover text-center">
				<thead>
					<tr>
						<th>��ȣ</th>
						<th>����</th>
						<th>�ۼ���</th>
						<th>��¥</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="e" items="${list }">
						<tr>
							<td class="align-middle text-center">
								${e.no }</td>
							<td class="align-middle text-center">
							<a href="qadetail?no=${e.no}">${e.subject }</a>[${e.cnt}]</td>
							<td class="align-middle text-center">${e.writer }</td>
							<td class="align-middle text-center">${e.mdate }</td>
						</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<td colspan=4">
								<form class="d-flex" method="post" action="qalist">
						<input type="hidden" name="cPage" value="1">
							<div
								class="row g-3 align-middle text-center; justify-content-md-center">
								<div class="col-auto">
									<select class="form-select" name="searchType" id="searchType"
										aria-label="Default select example">
										<option selected value="3">�˻�</option>
										<option value="1">�ۼ���</option>
										<option value="2">����</option>
									</select>
								</div>
								<div class="col-auto">
									<label for="searchValue" class="visually-hidden">Password</label>
									<input type="text" class="form-control" id="searchValue"
										name="searchValue" placeholder="�˻��� ������ �ۼ��ϼ���"
										style="font-size: 15px; width: 250px;">
								</div>
								<div class="col-auto">
								
									<button type="submit" class="btn btn-primary mb-3">Search</button>
								</div>
							</div>
									</form>
						</td>
					</tr>
					<tr>
						<td colspan="6">
						<%@include file="../page/pageModule.jsp" %>
						</td>
					</tr>


					<tr>
						<c:choose>
							<c:when test="${sessionScope.sessionID != null }">
								<td colspan=4 " style="text-align: center"><a
									href="${pageContext.request.contextPath}/qaboard/qaform"><input
										type="button" value="���ۼ�" id="wbtn" class="button-l"></a>
								</td>
							</c:when>
						</c:choose>
					</tr>

				</tfoot>
			</table>
		
	</div>
</div>

