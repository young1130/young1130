<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Content���� -->
<div class="container mt-5">
	<div class="row">
		<div id="sub1">
			<fieldset>
				<legend>my QnA</legend>
				

					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">��ȣ : ${vo.no }</label>

					</div>
					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">���� : ${vo.subject }</label>
					</div>

					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">�ۼ��� : ${vo.writer }</label>
					</div>

					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">���� : ${vo.content }</label>
					</div>

					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">��¥ : ${vo.mdate }</label>
					</div>


					<div class="row mb-3 ">
						<div class="col-sm-10">
							<a href="qalist"> <input
								type="button" value="����Ʈ" id="listBtn" class="button-l" /></a>
							<c:choose>
								<c:when test="${sessionScope.sessionID == vo.writer }">
									<a href="qaupform?no=${vo.no }">
										<input type="button" value="����" id="wbtn" class="button-l" />
									</a>
									<a href="qadelete?no=${vo.no }"> <input type="button" value="����"
										id="delBtn" class="button-l" /></a>
								</c:when>
							</c:choose>
						</div>
					</div>


					
				       <form method="post" action="qcomminsert">
               <div class="row mb-3">
                  <div class="col-sm-10">
                     <input type="hidden" name="mcode" value=${vo.no }> 
                     <label class="col-sm-2 col-form-label">writer</label> ${sessionScope.sessionID}
                     <input type="hidden" name="mwriter" id="mwriter" value="${sessionScope.sessionID}"/>
                     <textarea name="mcontent" class="form-control" id="mcontent"
                        rows="3"></textarea>
                     <input type="submit" value="���" id="btn2" class="button-l" />
                  </div>
               </div>
            </form>
            <div class="col-sm-10">
               <table class="table">
                  <thead>
                     <tr>
                        <td>no</td>
                        <td>writer</td>
                        <td>content</td>
                        <td>date</td>
                           <td></td>
                     </tr>
                  </thead>
                 <tbody>
                     <c:forEach var="e" items="${listcomm }">
                        <tr>
                           <td>${e.no }</td>
                           <td>${e.mwriter }</td>
                           <td>${e.mcontent }</td>
                           <td>${e.mregdate }</td>
                           <td>
                           <c:if test="${sessionScope.sessionID == e.mwriter}">
                                 <button onclick="update(this)">����</button>
                                 <div>
                                    <form method="post" action="upcomm">
                                       <input type="hidden" name="no" value=${e.no }> <input
                                          type="hidden" name="mcode" value=${vo.no }>
                                       <textarea name="mcontent">${e.mcontent }</textarea>
                                       <input type="submit" value="����" id="eBtn" />
                                    </form>
                                 </div>
                                 <a href="delcomm?no=${e.no }"> <input id="delbtn"
                                    name="delbtn" type="button" value="����"></a>
                           </c:if>
                              </td>
                        </tr>
                     </c:forEach>
                  </tbody>
               </table>
            </div>
			</fieldset>
		</div>
	</div>
</div>
<script>
   $('td>div').hide();
   
   function update(obj) {
      $(obj).next('div').show();
      $(obj).hide();
      $('#delbtn').hide();
   }
   $('#eBtn').click(function() {
      //$('#upbtn').show();
      $('#delbtn').show();
   });
</script>
