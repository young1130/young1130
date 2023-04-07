<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="demo" class="carousel slide" data-bs-ride="carousel">
	<!-- Indicators/dots -->
	<div class="carousel-indicators">
		<button type="button" data-bs-target="#demo" data-bs-slide-to="0"
			class="active"></button>
		<button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
		<button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
	</div>

	<!-- The slideshow/carousel -->
	<div class="carousel-inner">
		<div class="carousel-item active">
			<img src="${pageContext.request.contextPath}/resources/image/d1.jpg"
				alt="Kosmo113" class="d-block" style="width: 100%">
			<div class="carousel-caption">
				<h3>UI �䱸���� Ȯ���ϱ�,UI �����ϱ�</h3>
				<p>
					<c:choose>
						<c:when test="${sessionScope.sessionName != null }">
        ${sessionScope.sessionName}�� �ݰ����ϴ�. ���� ���� �ʹ� ���ƿ�
        </c:when>
						<c:otherwise>
        Thank you CSS3!!
        </c:otherwise>
					</c:choose>
				</p>
			</div>
		</div>
		<div class="carousel-item">
			<img src="${pageContext.request.contextPath}/resources/image/d2.jpg"
				alt="Carousel" class="d-block" style="width: 100%">
			<div class="carousel-caption">
				<h3>UI �䱸���� Ȯ���ϱ�,UI �����ϱ�</h3>
				<p>
					<c:choose>
						<c:when test="${sessionScope.sessionName != null }">
        ${sessionScope.sessionName}�� �ݰ����ϴ�. ������ �ų��� �ݿ��� ���躻���� 
        </c:when>
						<c:otherwise>
        Thank you CSS3!!
        </c:otherwise>
					</c:choose>
				</p>
				<h3>Carousel ����� CSS3��!</h3>
			</div>
		</div>

		<div class="carousel-item">
			<%-- �̹�����  ���ǰ��� ���󺯰��غ��� ���� --%>
			<c:choose>
				<c:when test="${sessionScope.sessionName != null }">
					<c:set var="imgv3" value="myd1.jpg" />
				</c:when>
				<c:otherwise>
					<c:set var="imgv3" value="d3.jpg" />
				</c:otherwise>
			</c:choose>
			<img
				src="${pageContext.request.contextPath}/resources/image/${imgv3}"
				alt="JSP" class="d-block" style="width: 100%">
			<div class="carousel-caption">
				<h3>UI �䱸���� Ȯ���ϱ�,UI �����ϱ�</h3>
				<p>
					<%-- �̹�����  ���ǰ��� ���� �޼��� �����غ��� ���� --%>
					<c:choose>
						<c:when test="${sessionScope.sessionName != null }">
        ${sessionScope.sessionName}�� �ݰ����ϴ�. ����� �����ϴ� ������?
        </c:when>
						<c:otherwise>
        Thank you CSS3!!
        </c:otherwise>
					</c:choose>
				</p>
			</div>
		</div>
	</div>

	<!-- Left and right controls/icons -->
	<button class="carousel-control-prev" type="button"
		data-bs-target="#demo" data-bs-slide="prev">
		<span class="carousel-control-prev-icon"></span>
	</button>
	<button class="carousel-control-next" type="button"
		data-bs-target="#demo" data-bs-slide="next">
		<span class="carousel-control-next-icon"></span>
	</button>
</div>
l>
