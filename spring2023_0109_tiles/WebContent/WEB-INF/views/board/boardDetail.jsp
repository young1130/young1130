<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    <article >
        <header>
            <h1>Board Demo</h1>
        </header>
        <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
        <div class="container">
        <%-- boardDetail ��� �� �ڸ�. --%>

<div class="form-group">
      <label for="title">����</label>
<!-- placeholder �Ӽ� �Է��� �����Ͱ� ���� ��� ������� ��Ÿ����.���������� �Է��� 100�ڱ����� ���� -->
<!-- required �Ӽ��� �����ϸ� �ʼ��Է� �����̵ȴ�. -->
<!-- pattern �Ӽ��� �̿��� ����ǥ�������� �������� ��ȿ�� �˻縦 �� �� �ִ�. -->
      <input type="text" class="form-control" id="title" value="${vo.subject }" readonly="readonly">
    </div>
    <div class="form-group">
   <label for="content">����</label>
<!--  �������� �����͸� �Է��ϰ� �ϰ��� �Ҷ� textarea �±׸� ����Ѵ�. -->
<!--  textarea �ȿ� �ִ� ��� ���ڴ� �״�� ��Ÿ����. ���鹮��, tag, enter -->
   <textarea class="form-control" rows="5" id="content"
    name="content" readonly="readonly">${vo.contents }</textarea>
   </div>
    <div class="form-group">
      <label for="writer">�ۼ���</label>
      <input type="text" class="form-control" id="writer" name="writer" value="${vo.writer }" readonly="readonly">
    </div>
    <div class="form-group">
      <label for="writer">�ۼ���¥</label>
      <input type="text" class="form-control" id="bdate" name="bdate" value="${vo.bdate }" readonly="readonly">
    </div> 
    <div class="form-group">
      <label for="writer">�ۼ�������</label>
      <input type="text" class="form-control" id="bdate" name="bdate" value="${vo.reip }" readonly="readonly">
    </div>  
     <div class="form-group" style="text-align: right; margin-top: 10px;">
      <button type="submit" class="btn btn-primary">���</button>
      <a href="boardDelete?num=${vo.num }"><button type="button" class="btn btn-primary">����</button></a>
      <a href="boardUpForm?num=${vo.num }"><button type="button" class="btn btn-primary">����</button></a>
    </div>
</div>
 
    </article>