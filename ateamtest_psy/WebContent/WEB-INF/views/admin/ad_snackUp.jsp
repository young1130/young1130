<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- Content���� -->
<div  class="container mt-5">
  <div class="row">
	<div id="sub1">
<fieldset>
<legend>��ǰ ��� ��������</legend>
<form method="post" action="pro.kosmo?cmd=resv&scmd=rinsert" enctype="multipart/form-data" id="upform">
<div class="row mb-3">
   <label class="col-sm-2 col-form-label">��ǰ �̸�</label>
   <div class="col-sm-10"><input type="text" name="" id="" placeholder="��ǰ�̸��� �Է��ϼ���."/></div>
   
</div> 
<div class="row mb-3">
   <label class="col-sm-2 col-form-label">��ǰ ����</label>
   <div class="col-sm-10"><input type="text" name="" id=""/></div>
</div>
<div class="row mb-3">
    <label class="col-sm-2 col-form-label">��ǰ �Ұ�</label>
   <div class="col-sm-10"><input type="text" name="" id=""/></div>
</div>
<div class="row mb-3">
    <label class="col-sm-2 col-form-label">*�̹������ε�</label>
    <div class="col-sm-10"><input type="file" name="upfile" id="upfile"/></div>
    <div class="col-sm-10"><img src="/resources/image/noimage.jpg" id="imgx" ></div>
</div>                        
<div class="row mb-3 ">
 <div class="col-sm-10">
 	<input type="submit" value="���" id="insertBtn" class="btn btn-danger"/>
 	<input type="button" value="��������Ʈ" id="listBtn" class="btn btn-danger"/>
 </div>
</div>
</form>
</fieldset>
  </div>
  </div>
</div>

<script>
//javascript�� Ŭ���̾�Ʈ �� ���
//HTML, CSS �������� �����ϴ� �������� �ַ� ���
//html5���� �������ִ� FileReader() �Լ��� ����ؼ� �̹��� �̸����⸦ ����
//�Լ��� �޼���� ���
/*
 * �޼��� : public void readURL(String input){}
 * ����: String reader => var reader
 *
 */
function readURL(input){
	//input type="file"�� �ּҸ� �����´�.
	if(input.files && input.files[0]){
		var reader = new FileReader();
		//������
		reader.onload = function(e) {
			//�̹����� �о �� �����ų ����!
			//console.log("Path :"+e.target.result);
			//�̹����� id�� ������ ����
			//$('#imgx') => <img src="�̹��� ���" id="igmx">
			//src�� �Ӽ��� �����ϱ� ���ؼ� attr()�� �Լ��� �ҷ��� �Ӽ��� ������
			//console.log($('#imgx').attr('src'));
			$('#imgx').attr('src',e.target.result);
		}
		//input type ="file"�� ���� ���̳ʸ� �����ͷ� �о� �´�.
		reader.readAsDataURL(input.files[0]);
	}
}
//jQuery����
$(function(){
	//jQuery ������
	//������ڿ��� ��ȭ�� �����ϴ� �̺�Ʈ : change()
	$('#upfile').change(function(){
		//���â -
		//alert("���â");
		//alert($(this).val());
		//������ �ܼ�â�� ���
		console.log($(this).val());
		console.log($(this).val().length);
		if($(this).val().length > 0){
			console.log("�̹��� �ִ�.");
			//�Լ� ȣ��
			readURL(this);
		}else{
			console.log("�̹��� ����.");
		}
	});
	
	//����Ʈ ��ư Ŭ��
	//wbtn��ư Ŭ�� �̺�Ʈ
	$('#listBtn').click(function(){
		//�����̵�
		location="pro.kosmo?cmd=resv&scmd=rlist"
	});
	//��� ��ū Ŭ��
	$('#insertBtn').click(function(){
		//�����̵�
		location="pro.kosmo?cmd=resv&scmd=rinsert"
	});
});
</script>