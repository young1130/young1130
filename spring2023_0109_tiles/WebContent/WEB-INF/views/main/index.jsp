<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<%-- ���� ����  --%>
<article >
<div class="container mt-5">
	<div class="row">

		<div class="col">
			<h3 class="text-white mybgColor" id="colTitle"> Kosmo Web Page</h3>
			<p>������ ��¥</p>
			<p><c:if test="${today != null }">${today }</c:if></p>
		</div>
		<div class="col">


<nav style="background-color: #ffffff">
  <div class="nav nav-tabs" id="nav-tab" role="tablist">
    <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">Home</button>
    <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">Profile</button>
    <button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact" type="button" role="tab" aria-controls="nav-contact" aria-selected="false">Notice</button>
  </div>
</nav>
<div class="tab-content" id="nav-tabContent">
  <div class="tab-pane fade show active" id="nav-home" 
  role="tabpanel" aria-labelledby="nav-home-tab">
  <table class="table mytable-condensed">
    <tbody>
      <tr>
        <td>kosmo ȭ�� ���� UI ���� �Դϴ�.</td>
        <td>������</td>
        <td>2022-06-21</td>
      </tr>
      <tr>
        <td>kosmo ȭ�� ���� UI ���� �Դϴ�.</td>
        <td>������</td>
        <td>2022-06-21</td>
      </tr>
      <tr>
        <td>kosmo ȭ�� ���� UI ���� �Դϴ�.</td>
        <td>������</td>
        <td>2022-06-21</td>
      </tr>
      <tr>
        <td>kosmo ȭ�� ���� UI ���� �Դϴ�.</td>
        <td>������</td>
        <td>2022-06-21</td>
      </tr> 
      <tr>
        <td>kosmo ȭ�� ���� UI ���� �Դϴ�.</td>
        <td>������</td>
        <td>2022-06-21</td>
      </tr>            
    </tbody>
  </table>
</div>
<div class="tab-pane fade" id="nav-profile" role="tabpanel" 
  aria-labelledby="nav-profile-tab">����ɽ� �����ڴ� �� ������� ���ÿ� ���� "�Ӵ��� 3���� ������ �� 2���� �� ���µ�, �̷� �ñ⿡�� ���� ������ ��Ȯ�Ǽ��� ������ �� �ִ�"�� "�Ӵ��� 3���� 2���� �Ǵ� �ñ�ϱ� �� ���� ¤��� ���ڴٴ� ����"�̶�� �ο��ߴ�.
  
</div>
<div class="tab-pane fade" id="nav-contact" role="tabpanel" 
  aria-labelledby="nav-contact-tab">
  <table class="table mytable-condensed">
    <tbody>
      <tr>
        <td>kosmo ȭ�� ���� UI ���� �Դϴ�.</td>
        <td>������</td>
        <td>2022-06-21</td>
      </tr>
      <tr>
        <td>kosmo ȭ�� ���� UI ���� �Դϴ�.</td>
        <td>������</td>
        <td>2022-06-21</td>
      </tr>
      <tr>
        <td>kosmo ȭ�� ���� UI ���� �Դϴ�.</td>
        <td>������</td>
        <td>2022-06-21</td>
      </tr>
      <tr>
        <td>kosmo ȭ�� ���� UI ���� �Դϴ�.</td>
        <td>������</td>
        <td>2022-06-21</td>
      </tr> 
      <tr>
        <td>kosmo ȭ�� ���� UI ���� �Դϴ�.</td>
        <td>������</td>
        <td>2022-06-21</td>
      </tr>            
    </tbody>
  </table>
</div>
</div>


		</div>
	</div>
</div>
 <!-- comment end -->
    </article>
<%-- ���� �� --%>