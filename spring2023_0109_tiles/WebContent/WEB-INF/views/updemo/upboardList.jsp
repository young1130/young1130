<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
a:link {
	text-decoration: none;
}

table img {
	width: 80px;
}
/* paging */
table tfoot ol.paging {
	margin-left: 30%;
	list-style: none;
}

table tfoot ol.paging li {
	float: left;
	margin-right: 8px;
}

table tfoot ol.paging li a {
	display: block;
	padding: 3px 7px;
	border: 1px solid #00B3DC;
	color: #2f313e;
	font-weight: bold;
}

table tfoot ol.paging li a:hover {
	background: #00B3DC;
	color: white;
	font-weight: bold;
}

.disable {
	padding: 3px 7px;
	border: 1px solid silver;
	color: silver;
}

.now {
	padding: 3px 7px;
	border: 1px solid #ff4aa5;
	background: #ff4aa5;
	color: white;
	font-weight: bold;
}
</style>
<article>
	<header>
		<h1>UpBoard Demo</h1>
	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>��ȣ</th>
					<th>����</th>
					<th>�ۼ���</th>
					<th>�̹���</th>
					<th>�ۼ���¥</th>
				</tr>
			</thead>
			<tbody>
				<%-- for start --%>
				<c:forEach var="e" items="${list }">
					<tr>
						<td class="align-middle">${e.num }</td>
						<td class="align-middle"><a href="upDetail?num=${e.num}">${e.sub }</a></td>
						<td class="align-middle">${e.writer }</td>
						<td class="align-middle"><img
							src="${pageContext.request.contextPath}/resources/imgfile/${e.imgn }"
							class="rounded mx-auto d-block"></td>
						<td class="align-middle">${e.udate }</td>
					</tr>
				</c:forEach>
				<%-- for end --%>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="5">
					<%@include file="../page/pageModule.jsp"%>
					</td>
				</tr>

				<tr>
					<th colspan="5">
						<form class="d-flex">
							<select class="form-control btn-mini" id="sel1"
								style="margin-left: 120px;">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
							</select> <input class="form-control me-2" type="text"
								placeholder="Search.." style="width: 300px">
							<button class="btn btn-outline-secondary" type="button">Search</button>
						</form>
					</th>
				</tr>
				<tr>
					<td colspan="5" style="text-align: right;">
						<!-- 
      jQuery�� ���ۼ� ������ �̵���Ű��
      id�� �ο��Ͽ� �����ڷ� selector�� ����ؼ� �̵���Ű��
      footer.jsp���� �ۼ�.
       -->
						<a href="upform"><button type="button" class="btn btn-outline-secondary" id="wbtn">���ۼ�</button></a>
					</td>
				</tr>

			</tfoot>
		</table>
	</div>

</article>
