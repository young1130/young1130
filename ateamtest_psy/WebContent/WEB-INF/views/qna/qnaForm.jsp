<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!-- Content���� -->
<div class="container mt-5">
	<div class="row">
		<div id="sub1">
		<form action="qainsert" method="post">
		<input
               type="hidden" name="mgrno" value="1"> <input type="hidden"
               name="writer" value="${sessionID }">
				<fieldset>
					<legend>QnA</legend>

					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">Writer</label>
						<!--  <input type="text" name="writer" id="writer" placeholder="�ۼ���" />-->
						<div class="col-sm-10">${sessionID }</div>
					</div>

					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">Subject</label>
						<div class="col-sm-10">
							<input type="text" name="subject" id="subject"
								placeholder="������ �Է��ϼ���." />
						</div>
					</div>

					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">Content</label>
						<div class="col-sm-10">
							<textarea name="content" id="content" rows="10" cols="70"></textarea>
							<!--  <input type="textArea" name="content" id="content" placeholder="������ �Է��ϼ���."/>-->
						</div>
					</div>

					<div class="row mb-3 ">
						<div class="col-sm-10">
							<input type="submit" value="���" id="wbtn" class="button-l" /> </a> <a
								href="qalist"><input
								type="button" value="����Ʈ" id="listBtn" class="button-l" /></a>
						</div>
					</div>

				</fieldset>
			</form>
		</div>
	</div>
</div>

