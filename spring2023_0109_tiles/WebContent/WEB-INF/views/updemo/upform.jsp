<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<article>
	<header>
		<h1>FileUpload Demo</h1>
	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div class="container">
		<%-- boardForm ��� �� �ڸ�. --%>
		<fieldset>
			<legend>�̹��� ���ε� ��</legend>
			<form method="post" action="uploadpro" enctype="multipart/form-data"
				id="upform">
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label">�� ��</label>
					<div class="col-sm-10">
						<input type="text" name="sub" id="sub" />
					</div>

				</div>
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label">�ۼ���</label>
					<div class="col-sm-10">
						<input type="text" name="writer" id="writer" />
					</div>
				</div>
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label">��й�ȣ</label>
					<div class="col-sm-10">
						<input type="password" name="pwd" id="pwd" />
					</div>
				</div>
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label">�̹��� ����</label>
					<textarea rows="10" cols="13" name="cont" id="cont"></textarea>
				</div>
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label">*�̹������ε�</label>
					<div class="col-sm-10">
						<input type="file" name="mfile" id="mfile" />
					</div>
					<div class="col-sm-10">
						<img id="imgx"
							src="${pageContext.request.contextPath}/resources/image/noimage.jpg">
					</div>
				</div>
				<div class="row mb-3 ">
					<div class="col-sm-10">
						<input type="submit" value="���" id="btn1" class="btn btn-info" />
						<a href="upboardList?cPage=1">
                  <input type="button" value="����Ʈ" id="btn1" class="btn btn-danger"></a>

					</div>
				</div>
			</form>
		</fieldset>

	</div>

</article>
<%-- �̸����� --%>
<script>
	function readURL(input) {
		// input type="file" �� �ּҸ� �����´�.
		if (input.files && input.files[0]) {
			// �ڹٽ�ũ��Ʈ I/O 
			var reader = new FileReader();
			// ������
			reader.onload = function(e) {
				$('#imgx').attr('src', e.target.result); // setter �ְڴ�.

			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	//jQuery ���� 
	$(function() {
		//jQuery ������
		// ������ڿ��� ��ȭ�� �����ϴ� �̺�Ʈ : change()
		$('#mfile').change(function() {
			if ($(this).val().length > 0) {
				readURL(this);
			} else {
				console.log("�̹��� ����.");
			}
		});

	});
</script>
