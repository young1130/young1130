<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    <article >
        <header>
            <h1>Board Demo</h1>
        </header>
        <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
        <div class="container">
        <%-- boardForm ��� �� �ڸ�. --%>
 <form action="boardUp" method="post">
 <%-- ������� �����Ǹ� �޾ƿͼ� ������ �ʴ� �Ӽ����� reip �� �Ķ���ͷ� �����Ѵ�. --%>
 
 <input type="hidden" name="num" value="${vo.num }">
    <div class="form-group">
      <label for="title">����</label>
<!-- placeholder �Ӽ� �Է��� �����Ͱ� ���� ��� ������� ��Ÿ����.���������� �Է��� 100�ڱ����� ���� -->
<!-- required �Ӽ��� �����ϸ� �ʼ��Է� �����̵ȴ�. -->
<!-- pattern �Ӽ��� �̿��� ����ǥ�������� �������� ��ȿ�� �˻縦 �� �� �ִ�. -->
      <input type="text" class="form-control" id="subject"
       placeholder="${vo.subject }=>���� �Է�(4-100)" name="subject"
       maxlength="100" required="required"
       pattern=".{4,100}" >
    </div>
   
     <div class="form-group" style="text-align: right; margin-top: 10px;">
      <button type="submit" class="btn btn-primary">���</button>
    </div>
  </form>

</div>
 
    </article>