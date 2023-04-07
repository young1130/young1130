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
         <h1>���� ��ȭ ����Ʈ</h1>
      </header>



      <table style="border: 1px solid;">
         <thead>
         
            <tr>
               <th width="5%" class="text-center">��ȭ��ȣ</th>
               <th width="5%" class="text-center">������</th>
               <th width="5%" class="text-center">��ȭ����</th>
               <th width="5%" class="text-center">������</th>
               <th width="5%" class="text-center">��ȭ�帣</th>
               <th width="5%" class="text-center">�󿵽ð�</th>
               <th width="5%" class="text-center">����</th>
               <th width="5%" class="text-center">������</th>
               <th width="5%" class="text-center">����</th>
               <th width="5%" class="text-center">�ٰŸ�</th>
               <th width="5%" class="text-center">�⿬��</th>
               </tr>
               </thead>
               <tbody>
         <c:forEach var="e" items="${list}">
            <tr>   
               <td width="5%" class="text-center">${e.mno }</td>
               <td width="5%" class="text-center"><img
                  src="${pageContext.request.contextPath}/resources/img/semi_movie/${e.mimg}"
                  style="width: 100px"></td>      
               <td width="5%" class="text-center"><a href="moviedetail?no=${e.mno }">${e.mname}</a></td>
               <td width="5%" class="text-center">${e.msaram}</td>
               <td width="5%" class="text-center">${e.mtype}</td>
               <td width="5%" class="text-center">${e.mtime}</td>
               <td width="5%" class="text-center">${e.mage}</td>
               <td width="5%" class="text-center">${e.mstartday}</td>
               <td width="5%" class="text-center">${e.mdirec}</td>
               <td width="30%" class="text-center">${e.mstory}</td>
            <td width="5%" class="text-center">${e.mactor}</td>
            </tr>
         </c:forEach>
      </tbody>

      <tfoot>
       <tr>
                  <td colspan="10">
                  <%@include file="../page/pageModule.jsp" %>
                  </td>
               </tr>
               <tr><td colspan="5" style="text-align: center"> </td>
</tr>
      
         <tr>
         <td>
          <button type="button" class="btn btn-outline-danger" id="inbtn">���ۼ�</button>
          <button type="button" class="btn btn-outline-danger" id="upbtn">����</button>
         <button type="button" class="btn btn-outline-danger" id="delbtn">����</button>
      </td>
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