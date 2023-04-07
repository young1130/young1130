<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    <article >
        <header>
            <h1>upBoard Demo</h1>
        </header>
        <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
        <div class="container">
        <%-- boardDetail 들어 갈 자리. --%>

<div class="form-group">
      <label for="title">제목</label>
<!-- placeholder 속성 입력한 데이터가 없는 경우 배경으로 나타난다.실제적으로 입력을 100자까지로 지정 -->
<!-- required 속성을 설정하면 필수입력 사항이된다. -->
<!-- pattern 속성을 이용한 정규표현식으로 데이터의 유효성 검사를 할 수 있다. -->
      <input type="text" class="form-control" id="title" value="${vo.sub }" readonly="readonly">
    </div>
    <div class="form-group">
   <label for="content">작성자</label>
<!--  여러줄의 데이터를 입력하고 하고자 할때 textarea 태그를 사용한다. -->
<!--  textarea 안에 있는 모든 글자는 그대로 나타난다. 공백문자, tag, enter -->
   <textarea class="form-control" rows="5" id="content"
    name="content" readonly="readonly">${vo.writer }</textarea>
   </div>
    <div class="form-group">
      <label for="writer">내용</label>
      <input type="text" class="form-control" id="writer" name="writer" value="${vo.cont }" readonly="readonly">
    </div>
    <div class="form-group">
      <label for="writer">이미지</label>
      <input type="text" class="form-control" id="imgn" name="imgn" value="${vo.imgn }" readonly="readonly"><img
							src="${pageContext.request.contextPath}/resources/imgfile/${vo.imgn }">
    </div> 
     <div class="form-group" style="text-align: right; margin-top: 10px;">
      <button type="submit" class="btn btn-primary">등록</button>
      <a href="boardDelete?num=${vo.num }"><button type="button" class="btn btn-primary">삭제</button></a>
      <a href="boardUpForm?num=${vo.num }"><button type="button" class="btn btn-primary">수정</button></a>
    </div>
</div>
 
    </article>