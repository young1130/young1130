<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>

 <h2>��¥/�ð� ����</h2>
<form action="">
<p>���õ� ��ȭ :</p>
<img src="resources/img/movie.jpg" style="width: 180px" class="rounded">
</form>
<br>
<br>
  <label>��¥ ����</label>
             <select class="form-select" aria-label="Default select example" >
                <option selected>��¥�� �������ּ���.</option>
                <option>12�� 25��</option>
                <option>12�� 26��</option>
                <option>12�� 27��</option>
                <option>12�� 28��</option>
                <option>12�� 29��</option>
                <option>12�� 30��</option>
                <option>12�� 31��</option>
              </select>
              <br>
              <br>
               <label>�� �ð� ����</label>
             <select class="form-select" aria-label="Default select example" >
                <option selected>�� �ð��� �������ּ���.</option>
                <option>10:30</option>
                <option>13:20</option>
                <option>15:40</option>
                <option>19:00</option>
                <option>21:20</option>
                <option>23:50</option>
              </select>
               <br>
              <br>
               <label>�ܿ� �¼�</label>
              <select class="form-control">
                <option selected>�¼��� �������ּ���.</option>
                <option>3�� (110/200)</option>
                <option>5��(172/200)</option>
                <option>8��(189/200)</option>
                <option>10��(153/200)</option>
              </select>
<div class="row mb-3 ">
 <div class="d-grid gap-2 d-md-flex justify-content-md-end">
  <a href="pro.movie?cmd=demo&scmd=selectSeat"><button class="button-l" type="button">�ο�/�¼� ����</button></a>
 </div>
 </div>
</body>
</html>