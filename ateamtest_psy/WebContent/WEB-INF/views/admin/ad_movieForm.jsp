<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Content���� -->
<div class="container mt-5">
   <div class="row">
      <div id="sub1">
         <fieldset>
            <legend>�̹��� ���ε� ��</legend>

            <form method="post" action="${pageContext.request.contextPath}/movies/moviein" 
               enctype="multipart/form-data">
                 <input type="hidden" name="mgrno" value=1>

               <div class="row mb-3">
                  <label class="col-sm-2 col-form-label">*�̹������ε�</label>
                  <div class="col-sm-10">
                     <input type="file" name="mfile" id="mfile">
                  </div>
                     <div class="col-sm-10">
                     <img src="${pageContext.request.contextPath}/resources/image/noimage.jpg" id="imgx">
                  </div>
                  
                  </div>

                  <div class="row mb-3">
                     <label class="col-sm-2 col-form-label">��ȭ�̸�</label>
                     <div class="col-sm-10">
                        <input type="text" name="mname" id="mname"
                           placeholder="������ �Է��ϼ���." />
                     </div>
                     </div>
                     
                  
                  <div class="row mb-3">
                     <label class="col-sm-2 col-form-label">������</label>
                     <div class="col-sm-10">
                        <input type="text" name="msaram" id="msaram" />
                        
                     </div>
                  </div>
                  
                  <div class="row mb-3">
                     <label class="col-sm-2 col-form-label">��ȭ �帣</label>
                     <div class="col-sm-10">
                        <input type="checkbox" name="mtype" id="mtype" value="���" />
                        <label for="select0" class="input-label checkbox">���</label>
                        <input type="checkbox" name="mtype" id="mtype"value="���/�θǽ�"/>
                        <label for="select1" class="input-label checkbox">���/�θǽ�</label>
                        <input type="checkbox" name="mtype" id="mtype" value="�̽��͸�" />
                        <label for="select2" class="input-label checkbox">�̽��͸�</label>
                        <input type="checkbox" name="mtype" id="mtype" value="��Ÿ��" />
                        <label for="select3" class="input-label checkbox">��Ÿ��</label>
                        <input type="checkbox" name="mtype" id="mtype" value="��ť���͸�"/>
                        <label for="select4" class="input-label checkbox">��ť���͸�</label>
                        <input type="checkbox" name="mtype" id="mtype" value="������"/>
                        <label for="select5" class="input-label checkbox">������</label>
                        <input type="checkbox" name="mtype" id="mtype" value="SF" />
                        <label for="select6" class="input-label checkbox">SF</label>
                        <input type="checkbox" name="mtype" id="mtype" value="�ڹ̵�" />
                        <label for="select7" class="input-label checkbox">�ڹ̵�</label>
                        <br>
                        <input type="checkbox" name="mtype" id="mtype" value="�ִϸ��̼�" />
                        <label for="select8" class="input-label checkbox">�ִϸ��̼�</label>
                        <input type="checkbox" name="mtype" id="mtype" value="�׼�" />
                        <label for="select9" class="input-label checkbox">�׼�</label>
                        <input type="checkbox" name="mtype" id="mtype"value="����" />
                        <label for="select10" class="input-label checkbox">����</label>
                        <input type="checkbox" name="mtype" id="mtype" value="����" />
                        <label for="select11" class="input-label checkbox">����</label>
                        <input type="checkbox" name="mtype" id="mtype" value="���͸�" />
                        <label for="select12" class="input-label checkbox">���͸�</label>
                        <input type="checkbox" name="mtype" id="mtype" value="����" />
                        <label for="select13" class="input-label checkbox">����</label>
                        <input type="checkbox" name="mtype" id="mtype" value="����" />
                        <label for="select14" class="input-label checkbox">����</label>
                        <input type="checkbox" name="mtype" id="mtype" value="�����潺" />
                        <label for="select15" class="input-label checkbox">�����潺</label>
                        <input type="checkbox" name="mtype" id="mtype" value="����" />
                        <label for="select16" class="input-label checkbox">����</label>
                        <input type="checkbox" name="mtype" id="mtype" value="����" />
                        <label for="select17" class="input-label checkbox">����</label>
                        
                     </div>
                  </div>
                  <div class="row mb-3">
                     <label class="col-sm-2 col-form-label">�󿵽ð�</label>
                     <div class="col-sm-10">
                        <input type="text" name="mtime" id="mtime" />
                     </div>
                  </div>
                  <div class="row mb-3">
                     <label class="col-sm-2 col-form-label">����</label>
                     <div class="col-sm-10">
                         <select name = "mage" id="mage">
                          <option value="">���� �����ϼ���</option> 
            <option value="0">��ü ������</option>
            <option value="7">7�� �̻� ������</option>
            <option value="12">12�� �̻� ������</option>
            <option value="15">15�� �̻� ������</option>
            <option value="18">18�� �̻� ������</option>
                         </select>
                     </div>
                  </div>
           
    
                  <div class="row mb-3">
                     <label class="col-sm-2 col-form-label">������</label>
                     <div class="col-sm-10">
                        <input type="date" name="mstartday" id="mstartday" />
                        
                     </div>
                  </div>
                  <div class="row mb-3">
                     <label class="col-sm-2 col-form-label">����</label>
                     <div class="col-sm-10">
                        <input type="text" name="mdirec" id="mdirec" />
                     </div>
                  </div>
                  
                  <div class="row mb-3">
                     <label class="col-sm-2 col-form-label">�ٰŸ�</label>
                     <textarea name="mstory" id="mstory" rows="10" cols="13"></textarea>
                  </div>

                  
                  
                  <div class="row mb-3">
                     <label class="col-sm-2 col-form-label">�⿬��</label>
                     <div class="col-sm-10">
                        <input type="text" name="mactor" id="mactor" />
                     </div>
                  </div>
                  
               <!--    <div class="row mb-3">
                     <label class="col-sm-2 col-form-label">������</label>
                     <div class="col-sm-10">
                        <input type="text" name="mgrno" id="mgrno" />
                     </div>
                  </div>
                   -->
                  
               <div class="row mb-3 ">
                  <div class="col-sm-10">
                     <input type="submit" value="���" id="wbtn" class="btn btn-info" />
                     <a href="${pageContext.request.contextPath}/movies/movielist"><input type="button" value="����Ʈ" id="listBtn"
                        class="btn btn-danger" /></a>
                  </div>
               </div>
            </form>
         </fieldset>
      </div>
   </div>
</div>

<script>
   //javaScript�� Ŭ���̾�Ʈ �� ���
   //HTML, CSS�� �������� �����ϴ� �������� �ַ� ���
   //html5���� �������ִ� FileReader()�Լ��� ����ؼ� �̹��� �̸����⸦ ����
   //�Լ��� �޼���� ��� , ȣ���� �ؾ� �����Ѵ�.
   /*
    �޼���: public void readURL(String input){}
    ����: String reader => var reader
    */
   function readURL(input) {
      //input type="file"�� �ּҸ� �����´�.
      if (input.files && input.files[0]) {
         //�ڹٽ�ũ��Ʈ I/O
         var reader = new FileReader(); //***
         //������
         reader.onload = function(e) { //onload �̺�Ʈ ����/ �͸��Լ�(�Լ�ǥ���� function(e))
            //�̹����� �о� �� �� �����ų ����
            //console.log("Path: "+e.target.result); //console: sout~ log�� ����
            //�̹����� id�� �����غ���
            //$('#imgx') => <img src"�̹������" id=imgx>
            //src�� �Ӽ��� �����ϱ� ���ؼ� attr()�� �Լ��� �ҷ��� �Ӽ��� ������
            //console.log($('#imgx').attr('src')); => getter
            $('#imgx').attr('src', e.target.result); //setter�ִ´�
         }
         // input ������ ���� ���̳ʸ� �����ͷ� �о� �´�.
         reader.readAsDataURL(input.files[0]);
      }
   }
   //jQuery����
   $(function() {
      //jQuery ������
      //������ڿ��� ��ȭ�� �����ϴ� �̺�Ʈ: change()
      $('#mfile').change(function() {
         //���â-
         // alert("���â");
         // alert($(this).val()); //this->#upfile
         //������ �ܼ�â�� ���
         console.log($(this).val());
         console.log($(this).val().length);
         if ($(this).val().length > 0) {
            console.log("�̹��� �ִ�.");
            //�Լ�ȣ��
            readURL(this);
         } else {
            console.log("�̹��� ����.");
         }
      });
      //����Ʈ ��ư Ŭ��
      //wbtn��ư Ŭ�� �̺�Ʈ
      //$('#listBtn').click(function() {
         //�����̵�   
      //   location = "${pageContext.request.contextPath}/movies/movielist";
      //});
   });
</script>