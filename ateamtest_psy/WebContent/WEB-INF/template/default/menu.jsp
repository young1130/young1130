<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<main>
	<!-- �޴�����? -->
	<nav class="sticky-top">
		<ul>
			<li><a></a></li>
			<li><a href="${pageContext.request.contextPath}/main">Cinemu</a></li>
			<li><a href="#">����</a> <!-- First Tier Drop Down -->
				<ul>
					<li><a href="#target2" class="scroll">���ô� ��</a></li>
					<li><a href="#target1" class="scroll">�󿵰� �Ұ�</a></li>

				</ul></li>
			<li><a href="#">��ȭ</a> <!-- First Tier Drop Down -->
				<ul>
					<li><a
						href="${pageContext.request.contextPath}/movies/movielist">��ü��ȭ</a></li>
					<li><a href="#">�� ������</a></li>

				</ul></li>
			<li><a href="#">����</a> <!-- First Tier Drop Down -->
				<ul>
					<li><a href="#">�󿵽ð�ǥ</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ticket/movieName">����</a></li>

				</ul></li>
			<li><a href="#">�����</a> <!-- First Tier Drop Down -->
				<ul>
					<li><a
						href="${pageContext.request.contextPath}/snack/snackUpform">Ǫ��</a></li>
					<li><a href="#">��ٱ���</a></li>

				</ul></li>
			<li><a href="#">�̺�Ʈ</a> <!-- First Tier Drop Down -->
				<ul>
					<li><a href="${pageContext.request.contextPath}/vip">�����</a></li>
					<li><a href="#">���� / ����</a></li>
					<li><a href="#">�������̺�Ʈ</a></li>
				</ul>
			<li><a href="#">�ӽ� �޴�</a> <!-- First Tier Drop Down -->
				<ul>
					<li><a
						href="${pageContext.request.contextPath}/chatmove/chatForm">LiveChat</a></li>
					<li><a href="${pageContext.request.contextPath}/theater/mapk">Map</a></li>
					<li><a
						href="${pageContext.request.contextPath}/mail/emailForm">Email</a></li>
					

				</ul></li>

		</ul>
	</nav>

</main>
<script>
	$(".scroll").click(function(event) {

		event.preventDefault();
		$('html,body').animate({
			scrollTop : $(this.hash).offset().top
		}, 100);
	});
</script>
</html>