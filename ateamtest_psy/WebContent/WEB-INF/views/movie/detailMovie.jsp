<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Content���� -->
<div class="container mt-5">


	<!-- ��ȭ ���� -->
	<fieldset>
		<!-- ��ȭ ���� -->
		<!-- <legend>${vo.mname}</legend> -->



		<!-- ���̺� ���� -->
		<table class="table" border="1">

			<!--  ��Ʈ��Ʈ�� Ŭ���� table-->
			<tbody>

				<tr>
					<th rowspan="3" width="300px" style="text-align: center">
						<!-- ��ȭ ������ - �������� �����־��.�����ʿ� --> <span> <img
							src="${pageContext.request.contextPath}/resources/img/semi_movie/${vo.mimg}"
							style="width: 200px; height: 300px; margin-bottom: 20px;">
							<!-- ��ũ���� ���� -->
					</span>


					</th>
					<td>
						<!--  ��Ʈ��Ʈ�� ������� �ڽ�ó�� --> <strong>${vo.mname}</strong> <span
						class="badge text-bg-success">�������</span>
						<button id="likebtn" class="badge text-bg-success">���ƿ�</button>
						<a id="heart" style="font-size: 20px;"></a><a id="totalcnt"></a>

					</td>
				</tr>
				<tr>
					<td>
						<!-- ��ȭ ������ , ��Ʈ���� plz--> <!-- �����Ͷ� �����ؽ�Ʈ�� �ʹ� �پ�� ���� ��Ź�����~~ -->
						<dl>
							<dt>���� :&nbsp;${vo.mdirec }</dt>
							<dt>
								��� :&nbsp;${vo.mactor }
								<!-- ���� ������ ������ $mactor�� �������ּ��� 
                                    <c:forEach var="e" items="">$mactor &nbsp;</c:forEach>
                                    -->
							</dt>
							<dt>
								�帣 :&nbsp;${vo.mtype }
								<!-- ���� ������ ������ $genre�� �������ּ��� 
                                    <c:forEach var="e" items="">$genre &nbsp; </c:forEach>
                                    -->
							</dt>
							<dt>�󿵽ð� :&nbsp;${vo.mtime}</dt>
							<dt>������ :&nbsp; ${vo.mstartday}</dt>
						</dl> <!-- ��ȭ ������ -->
					</td>
				</tr>
				<tr>
					<td><p>


							<a href="pro.movie?cmd=demo&scmd=oneMovieBooking"><input
								type="button" value="�����ϱ�" id="resBtn" class="button-l" /></a></td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td>
						<p>���� ���� ������</p>
						<p id="genDonut"></p>
					</td>
					<td>
						<p>���ɺ� ���� ������</p>
						<p id="agelist"></p>
					</td>
				</tr>
				<tr>
					<td colspan='2'>
						<!-- ��ȭ �ٰŸ�  --> <strong>${vo.mstory}</strong> <!--�ٰŸ� ��-->
					</td>
				</tr>
			</tfoot>
		</table>
		<!-- ���̺� �� -->
		<!-- ��ȭ ���� ��-->
	</fieldset>


	<!-- �ش� ��ȭ ��۴ޱ�   -->
	<!-- fk mgrno -->
	<div class="row mb-3">
		<form action="moviecomminsert" method="post">
			<input type="hidden" name="mno" value=${vo.mno } /> <input
				type="hidden" name="lid" value="${sessionScope.sessionID}" />
			<div class="col-sm-10">
				<!-- �ۼ��� �̸��� ���� ����������, �ƴϸ� id�� �����ؼ� �ڵ����� ������ ������ ����  
                  -->
				<!-- �ۼ���, ����, �ڸ�Ʈĭ ��Ϲ�ư ��Ÿ�� ���� �ʼ� -->

				<table>
					<tr>
						<td>�ۼ���: ${sessionScope.sessionID}</td>

					</tr>
					<tr>
						<td>���� : <span id="mgoodAvg"></span></td>
				</table>
				<div class="mb-3" id="myform1">

					<input type="radio" name="mgood" value=1 id="mgood"> <label
						for="rate1">��</label> <input type="radio" name="mgood" value=2
						id="mgood"> <label for="rate2">�ڡ�</label> <input
						type="radio" name="mgood" value=3 id="mgood"> <label
						for="rate3">�ڡڡ�</label> <input type="radio" name="mgood" value=4
						id="mgood"> <label for="rate4">�ڡڡڡ�</label> <input
						type="radio" name="mgood" value=5 id="mgood"> <label
						for="rate5">�ڡڡڡڡ�</label>
				</div>
				<textarea name="comm" class="form-control" id="comm" rows="3"></textarea>
				<input type="submit" value="���" id="wbtn" class="button-l" />
			</div>
		</form>
	</div>

	<!-- �ش� ��ȭ ��۴ޱ� ��  -->
	<!-- �ش� ��ȭ ��� ����Ʈ -->
	<div class="col-sm-10">
		<!--  ��Ʈ��Ʈ��  table-->
		<table class="table">
			<thead>
				<tr>
					<td>��ȣ</td>
					<td>���̵�</td>
					<td>��ȭ����</td>
					<td>�ı�</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="e" items="${listmoviecomm}">
					<tr>
						<td>${e.commno}</td>
						<td>${e.lid}</td>
						<td>${e.mgood}</td>
						<td>${e.comm}</td>
						<td>${e.commdate}</td>
						<td><c:if test="${sessionScope.sessionID == e.lid}">
								<button onclick="update(this)">����</button>
								<div>
									<form method="post" action="upmoviecomm">
										<input type="hidden" name="commno" value=${e.commno }>
										<input type="hidden" name="mno" value=${vo.mno }>
										<textarea name=mgood>${e.mgood }</textarea>
										<textarea name="comm">${e.comm }</textarea>
										<input type="submit" value="����" id="eBtn1" />
									</form>
								</div>
								<a href="delmoviecomm?no=${e.commno }"> <input id="delbtn1"
									name="delbtn" type="button" value="����"></a>
							</c:if></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<!-- �ش� ��ȭ ����Ʈ �� -->
</div>

<script>
   $(function() {   
	 
	   // ���ƿ� �� �� ���
	  $.ajax({
	       url : "../like/totalcnt3?mno=${vo.mno}",
	       error : function(e) {
	           console.log("��Ż ���� :" + e);
	        },
	        success : function(jsondata){
	       	console.log("��Ż �����轺 "+jsondata);
	         $('#totalcnt').html(jsondata);
	         
	       }	      	       
	  }); 
	   

	   
	   
	   $.ajax({
       url : "../like/likecnt2?mno=${vo.mno}&lid=${sessionScope.sessionID}",
       error : function(e) {
           console.log("���� �����轺 error:" + e);
        },
        success : function(jsondata){
       	console.log('���ؾ� �����轺�غ�');
       	console.log("jsondata=> "+jsondata);
       	if(jsondata===0){
       		$('#heart').html('��');
       	}else{
       		$('#heart').html('��');
       	}
       }
      
       
  });
	   
	   $('#likebtn').click(function() {
		   $.ajax({
	            url : "../like/addlike?mno=${vo.mno}&lid=${sessionScope.sessionID}",
	            success : function(jsondata){
	            	console.log('���ؾ� Ŭ��');
	            	console.log("Ŭ�� jsondata=> "+jsondata);
	            	if(jsondata===0){
	            		$('#heart').html('��');
	            	}else{
	            		$('#heart').html('��');
	            	}
	            }
	           
	            
		   });
	   })	    
	   
		   // ���ƿ� Ŭ�� �� ���� ����
    $('#likebtn').click(function() {
		   $.ajax({
	            url : "../like/totalCnt3?mno=${vo.mno}",
	            success : function(jsondata){
	            	console.log('���ƿ� Ŭ�� ���� ����');
	            	console.log('���ƿ� ���� �� : '+jsondata);
	            	$('#totalcnt').html(jsondata);
	                       
		   }
	   });
   	}); 
	   
      //wbtnŬ�� �̺�Ʈ
      
   
      
      
      //�ȿ� ���� �ڵ�
      $.ajax({
            url : "../genDonut?mno=${vo.mno}",
            success : function(jsondata) {
               console.log("����")
               console.log(jsondata);
               console.log(jsondata[0]);
               console.log("---------------------");
               console.log(jsondata[1]);
               console.log("---------------------");
               console.log((Object.keys(jsondata[1]))[0]);
               console.log("---------------------"); 
               var chart = c3.generate({
                  bindto : '#genDonut',
                  data : {
                     json : [jsondata[1]],
                     keys : {
                        value : Object.keys(jsondata[1]),
                     },
                     type : 'donut',
                     colors: {
                                '����' : '#C60B05',
                                '����' : '#c9b459'
                             }            

                  },
                  donut : {
                     title : jsondata[0].movieTitle,
                  },
               });
               //----------------------
            },
            error : function(e) {
               console.log("����")
            }
         });
      
      $.ajax({
            url : "../ageBar?mno=${vo.mno}",
            success : function(jdata) {
               console.log("jdata=>"+jdata);
               console.log("jdata[0]=>"+jdata[0]);
               console.log("---------------------");
               console.log("jdata[1]=>"+jdata[1]);
               console.log("---------------------");
               console.log("(Object.keys(jdata[1]))[0]=>"+(Object.keys(jdata[1]))[0]);
               console.log("---------------------");
               var chart = c3.generate({
                  bindto : '#agelist',
                  data : {
                     labels: Object.keys(jdata[1])[0],                
                     json : [jdata[1]],
                     keys : {
                        value : Object.keys(jdata[1])
                     },
                     type : 'bar',
                     colors:{ 
                                    '10���̻�':'#C60B05',
                                    '20��':'#c9b459',
                                    '30��':'#C60B05',
                                    '40��':'#c9b459',
                                    '50��':'#C60B05',
                                    '60���̻�':'#c9b459'
                     },
                     
                  },
                  bar : {
                     title : jdata[0].movieTitle,
                     width:{
                        ratio: 0.8
                     },
                     space: 0.2,
                  },
                  axis: {
                       x: {
                           type: 'categories',
                           categories:  ['']
                       },
                       y: {
                           show:false
                       }
                   },
               });
               //----------------------
            },
            error : function(e) {
               console.log("error:" + e);
            }
         });
      
      $('td>div').hide();
      

      
      $('#eBtn1').click(function() {
         //$('#upbtn').show();
         $('#delbtn1').show();
      });

         
         $.ajaxSetup({
            cashe : false
         });
        
         $.ajax({
          url:"../movier/getavg?mno="+${vo.mno},
          error: function (xhr, status, error) {
              console.log("���� �����轺 ����");
          },
         success: function(json){
                   console.log("����:"+json);
                   if(json !== null){
                      $('#mgoodAvg').html(json+"��");
                   }else if(json === null){
                      $('#mgoodAvg').html("������ ������ּ��� :)")
                   }
                }
         });
      
      
      
   });
   
   function update(obj) {
       $(obj).next('div').show();
       $(obj).hide();
       $('#delbtn1').hide();
    }  

</script>