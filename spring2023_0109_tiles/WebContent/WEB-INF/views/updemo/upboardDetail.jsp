<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    <article >
        <header>
            <h1>upBoard Demo</h1>
        </header>
        <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
        <div class="container">
        <%-- boardDetail ��� �� �ڸ�. --%>

<div class="form-group">
      <label for="title">����</label>
<!-- placeholder �Ӽ� �Է��� �����Ͱ� ���� ��� ������� ��Ÿ����.���������� �Է��� 100�ڱ����� ���� -->
<!-- required �Ӽ��� �����ϸ� �ʼ��Է� �����̵ȴ�. -->
<!-- pattern �Ӽ��� �̿��� ����ǥ�������� �������� ��ȿ�� �˻縦 �� �� �ִ�. -->
      <input type="text" class="form-control" id="title" value="${vo.sub }" readonly="readonly">
    </div>
    <div class="form-group">
   <label for="content">�ۼ���</label>
<!--  �������� �����͸� �Է��ϰ� �ϰ��� �Ҷ� textarea �±׸� ����Ѵ�. -->
<!--  textarea �ȿ� �ִ� ��� ���ڴ� �״�� ��Ÿ����. ���鹮��, tag, enter -->
   <textarea class="form-control" rows="5" id="content"
    name="content" readonly="readonly">${vo.writer }</textarea>
   </div>
    <div class="form-group">
      <label for="writer">����</label>
      <input type="text" class="form-control" id="writer" name="writer" value="${vo.cont }" readonly="readonly">
    </div>
    <div class="form-group">
      <label for="writer">�̹���</label>
      <input type="text" class="form-control" id="imgn" name="imgn" value="${vo.imgn }" readonly="readonly"><img
							src="${pageContext.request.contextPath}/resources/imgfile/${vo.imgn }">
    </div> 
     <div class="form-group" style="text-align: right; margin-top: 10px;">
      <button type="submit" class="btn btn-primary">���</button>
      <a href="boardDelete?num=${vo.num }"><button type="button" class="btn btn-primary">����</button></a>
      <a href="boardUpForm?num=${vo.num }"><button type="button" class="btn btn-primary">����</button></a>
    </div>
</div>
 
    </article>