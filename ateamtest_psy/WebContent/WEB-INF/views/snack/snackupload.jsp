<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <article >
        <header>
            <h1>FileUpload Demo</h1>
        </header>
        <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
     <div class="container">
        <%-- boardForm ��� �� �ڸ�. --%>
        
<fieldset>
<legend>�̹��� ���ε� ��</legend>
<form method="post" action="${pageContext.request.contextPath}/snack/snackUpload" enctype="multipart/form-data">
  <input type="hidden" name="mgrno" value=1>
<div class="row mb-3">
   <label class="col-sm-2 col-form-label">��ǰ �̸�</label>
   <div class="col-sm-10"><input type="text" name="popname" id="popname" placeholder="���� �̸��� �Է��ϼ���."></div>
   
</div> 
<div class="row mb-3">
   <label class="col-sm-2 col-form-label">����</label>
   <div class="col-sm-10"><input type="text" name="poppay" id="poppay"></div>
</div>

<div class="row mb-3">
   <label class="col-sm-2 col-form-label">������</label>
   <div class="col-sm-10"><input type="text" name="country" id="country"></div>
</div>
<div class="row mb-3">
    <label class="col-sm-2 col-form-label">��ȿ�Ⱓ</label>
    <div class="col-sm-10"><input type="text" name="usedate" id="usedate"></div>
</div>
<div class="row mb-3">
    <label class="col-sm-2 col-form-label">���� ������</label>
    <textarea name="snackdetail" id="snackdetail" rows="10" cols="13"></textarea>
</div>
<div class="row mb-3">
    <label class="col-sm-2 col-form-label">*�̹������ε�</label>
    <div class="col-sm-10"><input type="file" name="mfile" id="mfile"></div>
    <div class="col-sm-10"><img src="${pageContext.request.contextPath}/resources/popimg/noimage.jpg"
    id="imgx"></div>
</div>                        
<div class="row mb-3 ">
 <div class="col-sm-10"><input type="submit" value="���" id="btn1" class="btn btn-danger"/>
<a href="${pageContext.request.contextPath}/snack/snackUplist">
                  <input type="button" value="����Ʈ" id="btn1" class="btn btn-danger"></a>
 </div>
</div>
</form>
</fieldset>

     </div>
 
    </article>
    
    <%--11�� 25�� --%>

<script>

function readURL(input) {
	   // input type= "file"�� �ּҸ� �����´�.
	   if(input.files && input.files[0]){
	      // �ڹٽ�ũ��Ʈ I/O
	      var reader = new FileReader();
	      // ������
	      reader.onload = function(e){
	         $('#imgx').attr('src', e.target.result); // setter �ְڴ�.
	      }
	      reader.readAsDataURL(input.files[0]);
	   }
	}
//jQuery����
   $(function() {
      //jQuery ������
      //������ڿ��� ��ȭ�� �����ϴ� �̺�Ʈ: change()
      $('#mfile').change(function() {
         if ($(this).val().length > 0) {
            readURL(this);
         } else {
            console.log("�̹��� ����.");
         }
      });
   });
  
</script>