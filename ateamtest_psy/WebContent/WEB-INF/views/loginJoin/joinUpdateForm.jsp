<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!-- Content���� -->

<div class="container mt-5">
	<div class="row">
		<div id="sub1">
		<form action="${pageContext.request.contextPath}/member/update" method="post">
				
					<!-- 
					�׼ǿ��� ���� request.setAttribute("v", v).  
					�������� ������ �ޱ� ���ؼ� hidden���� ����(where lid=?)���� ����
					--> 
					<input type="hidden" name="lid" value="${v.lid }"> 
					
				<fieldset>
					<legend>ȸ����������</legend>
					<br> <br>


					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">�̸�</label>
						<div class="col-sm-10">${v.lname}</div>
					</div>

					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">��й�ȣ</label>
						<div class="col-sm-10">
							<input type="password" name="lpwd" id="lpwd"
								placeholder="�н����带 �Է��ϼ���." onchange="test()" />
						</div>
					</div>

					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">��й�ȣ Ȯ��</label>
						<div class="col-sm-10">
							<input type="password" name="repwd" id="repwd"
								placeholder="�н����带 �Է��ϼ���." /> 
							<%--	&nbsp&nbsp <font id="check" size="2"></font> --%>
						</div>
						
					</div>


					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">��ȭ��ȣ</label>
						<div class="col-sm-10">
							<input type="tel" name="lphone" id="tel"
								placeholder="${v.lphone }" />
						</div>
						
					</div>
						<div class="row mb-3">
						<label class="col-sm-2 col-form-label">�ּ�</label>
						<div class="col-sm-10">
							<input type="text" name="laddr" id="laddr"
								placeholder="${v.laddr }" />
						</div>
					</div>	<div class="row mb-3">
						<label class="col-sm-2 col-form-label">email</label>
						<div class="col-sm-10">
							<input type="email" name="lemail" id="lemail"
								placeholder="${v.lemail }" />
						</div>
					</div>	<div class="row mb-3">
                  <label class="col-sm-2 col-form-label">������</label>
                  <div class="col-sm-10">
                     <img src="${pageContext.request.contextPath}/resources/imgpwd/${v.limg }"
         style="width: 150px; height: 150px;">
                  </div>
               </div>

					<div class="row mb-3 ">
						<div class="col-sm-10">
							<input type="submit" value="���" id="btn1" class="button-l" />

						</div>
						<br> <br> <br>
					</div>

				</fieldset>
			</form>
		</div>
	</div>
</div>


