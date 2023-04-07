<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
   
</script>

<style>
</style>

<div class="container mt-5">
   <div class="row">
      <header>
         <h1>�˻� ���</h1>
      </header>

      <ol>
         <c:forEach var="e" items="${svlist}">
            <%--
               <td width="5%" class="text-center">${e.mno }</td> --%>
            <li><div style="float: left; width: 25%;">
                  <div style="width: 90%; height: 90%">
                     <img
                        src="${pageContext.request.contextPath}/resources/img/semi_movie/${e.mimg}">
                  </div>
                  <div>
                     <a href="moviedetail?no=${e.mno }"> ${e.mname}</a>
                  </div>
               </div></li>
         </c:forEach>
      </ol>
      <table style="border: 1px solid;">
         <tbody>
         </tbody>

         <tfoot>
            <tr>
               <td colspan="10"><%@include file="../page/pageModule.jsp"%></td>
               
            </tr>
         </tfoot>
      </table>
   </div>
</div>

<script>
   $(function() {
      //wbtnŬ�� �̺�Ʈ
      $('#inbtn').click(function() {

         //�����̵�
         location = "${pageContext.request.contextPath}/movies/movieForm"
      });
      $('#upbtn').click(function() {
         //�����̵�
         location = "${pageContext.request.contextPath}/movies/movieupdate"
      });
      $('#delbtn').click(function() {
         //�����̵�
         location = "${pageContext.request.contextPath}/movies/moviedelete"
      });
   });
</script>