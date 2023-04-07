<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<article>
	<header>
		<h1>Board Demo</h1>
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
					<th>��ȸ��</th>
					<th>�ۼ���¥</th>
				</tr>
			</thead>
			<tbody>
				<%-- for start --%>
				<c:forEach var="e" items="${list }">
					<tr>
						<td>${e.num }</td>
						<td><a href="boardDetail?num=${e.num }">${e.subject }</a></td>
						<td>${e.writer }</td>
						<td>1000</td>
						<td>${e.bdate}</td>
					</tr>
				</c:forEach>
				<%-- for end --%>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="5"><%@include file="../page/searchModule.jsp"%>
					</td>
				</tr>
				<tr>
					<td colspan="5" style="text-align: right;">
						<!-- 
      jQuery�� ���ۼ� ������ �̵���Ű�� id�� �ο��Ͽ� �����ڷ� selector�� ����ؼ� �̵���Ű��  footer.jsp���� �ۼ�.
       -->
						<button type="button" class="btn btn-outline-secondary" id="wbtn">���ۼ�</button>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>

</article>