<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article>
	<header>
		<h1>ȸ������ Demo</h1>
	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div class="container">
		<%--memberForm ��� �� �ڸ�. --%>
		<form action="memberIn" method="post">
			<%-- ������� �����Ǹ� �޾ƿͼ� ������ �ʴ� �Ӽ����� reip �� �Ķ���ͷ� �����Ѵ�. --%>
			<input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
			<div class="form-group">
				<label for="id">���̵� </label>
				<!-- placeholder �Ӽ� �Է��� �����Ͱ� ���� ��� ������� ��Ÿ����.���������� �Է��� 100�ڱ����� ���� -->
				<!-- required �Ӽ��� �����ϸ� �ʼ��Է� �����̵ȴ�. -->
				<!-- pattern �Ӽ��� �̿��� ����ǥ�������� �������� ��ȿ�� �˻縦 �� �� �ִ�. -->
				<input type="text" class="form-control" id="id"
					placeholder="���̵� �Է�(2-10)" name="id" maxlength="10"
					required="required" pattern=".{2,10}">
				<button type="button" class="btn btn-primary" id="btn1">�ߺ�Ȯ��</button>
				<div id="target"></div>
			</div>
			<div class="form-group">
				<label for="pwd">��й�ȣ</label> <input type="password"
					class="form-control" id="pwd" name="pwd" required="required">
			</div>
			<div class="form-group">
				<label for="name">�̸�</label> <input type="text" class="form-control"
					id="name" placeholder="�̸��� �Է��ϼ���." name="name" required="required">
			</div>
			<div class="form-group">
				<button type="button" class="btn btn-primary dropdown-toggle"
					data-bs-toggle="dropdown">����</button>
				<input type="hidden" name="gender" id="gender">
				<ul class="dropdown-menu">
					<li><a class="dropdown-item"
						href="javascript:chooseGender('����')">����</a></li>
					<li><a class="dropdown-item"
						href="javascript:chooseGender('����')">����</a></li>
				</ul>
			</div>
			<div class="form-group">
				<label for="age">����</label> <input type="text" class="form-control"
					id="age" placeholder="���̸� �Է��ϼ���." name="age" required="required">
			</div>
			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="submit" class="btn btn-primary">���</button>
			</div>
		</form>

	</div>

</article>
<%@include file="../temp/footer.jsp"%>
<%--���� ���� �� --%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	function chooseGender(gen) {
		$('#gender').val(gen);
//		console.log("gender=>" + $('#gender').val(gen))
	console.log("gender=>" + gen)
	}
	$(function(){
		$('#btn1').click(function() {
			let param = $('#id').val();
			//alert("param"+param)
			$.ajax({
				url:"../idcheck?id="+param,
				success:function(data){
					console.log(data);
					if(data == 1){
						$('#target').css('background-color','red').css('color','white').html('������� ���̵� �Դϴ�.');
					}else {
						$('#target').css('background-color','blue').css('color','white').html('��밡���� ���̵� �Դϴ�.');
					}
				}
			});
		});
	});
</script>