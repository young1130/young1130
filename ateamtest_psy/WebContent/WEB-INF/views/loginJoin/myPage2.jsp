<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<style>
.mypage {
	background-color: #E6E6E6;
	position: relative;
	height: auto;
	padding: 30px;
	text-align: center;
	border-radius: 1em;
	width: 800px;
	margin: auto;
}

.mybook1 {
	border: solid;
	border-width: 1px;
	border-color: #3B3939;
	width: 450px;
	height: auto;
	width: 800px;
	margin-top: 50px;
	margin-left: auto;
	margin-right: auto;
	border-radius: 0.5em;
}

.mybook2 {
	border: solid;
	border-width: 1px;
	border-color: #3B3939;
	width: 450px;
	height: auto;
	margin-top: 40px;
	width: 800px;
	margin-left: auto;
	margin-right: auto;
	border-radius: 0.5em;
}

table {
	margin-left: auto;
	margin-right: auto;
}

#btn {
	margin: auto;
}
</style>
</head>

<body>
	<div class="mypage" style="margin-top: 50px;">

		<span style="padding-left: 550px;"> <a
			href="${pageContext.request.contextPath}/member/upform"><button
					type="button" class="btn btn-dark">ȸ������ ����</button></a></span>
		<div>
			<button id="btn" type="button"
				style="position: relative; margin-right: 450px; border: hidden;">
				<img id="imgx"
					src="${pageContext.request.contextPath}/resources/imgpwd/${v.limg }"
					style="width: 150px; height: 150px;">
			</button>
			<!-- ���� ���� ���� -->
			<form style="width: 300px;" method="post"
				action="${pageContext.request.contextPath}/member/photoup"
				enctype="multipart/form-data">

				<input type="submit" value="����" id="btn1"> <input
					type="hidden" name="mgrno" value=1> <input type="hidden"
					name="lid" value="${v.lid }"> <input type="hidden"
					name="lpwd" value="${v.lpwd }"> <input type="hidden"
					name="lphone" value="${v.lphone }"> <input type="hidden"
					name="laddr" value="${v.laddr }"> <input type="hidden"
					name="lemail" value="${v.lemail }">


				<div>
					<input type="file" name="mfile" id="mfile">
				</div>


			</form>
		</div>
		<!-- ���� ���� ���� ��-->

		<div
			style="width: 300px; position: relative; left: 400px; bottom: 100px;">
			<p style="font-size: 25px; font-weight: bold; padding-top: 15px;">${v.lid}����
				���� ${v.lclass } ����Դϴ�.</p>
			<p style="font-weight: bold;">���� ����Ʈ : ${v.lmileage } Point</p>
			<p style="font-weight: bold;">ȸ�� ���̵� : ${v.lid }</p>
			<p style="font-weight: bold;">ȸ�� �̸� : ${v.lname }</p>
			<p style="font-weight: bold;">ȸ�� ����ó : ${v.lphone }</p>
			<p style="font-weight: bold;">ȸ�� ���� : ${v.lgender }</p>
			<p style="font-weight: bold;">ȸ�� �ּ� : ${v.laddr }</p>
			<p style="font-weight: bold;">ȸ�� ���� : ${v.lemail }</p>
		</div>
	</div>



	<table class="table table-hover"
		style="margin-top: 50px; width: 800px; text-align: center; table-layout: fixed;">
		
		<thead>
		<tr>
			<th colspan="6" style="text-align: center;">��ȭ ���� ����</th>
		</tr>
	
		<tr>
			<td>��ȣ</td>
			<td>�̹���</td>
			<td>��ȭ ����</td>
			<td>���� ��¥</td>
			<td>��ȭ ����</td>
			<td>��ȭ �ð�</td>
		</tr>
	</thead>
	<tbody id="moviebuylist">
	
		</tbody>
				
	</table>
	<%-- ����¡ ���� --%>
	<div class="paging">	
	<nav aria-label="Page navigation example">
	<ul class="pagination justify-content-center">
		<c:choose>
			<c:when test="${startPage <= pagePerBlock }">
				<li class="page-item disabled"><a class="page-link" href="#"
					tabindex="-1" aria-disabled="true">Previous</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item active"><a class="page-link"
					href="${pageurl }=${startPage -1 }" tabindex="-1">Previous</a></li>
			</c:otherwise>
		</c:choose>
		<c:forEach varStatus="i" begin="${startPage }" end="${endPage }"
			step="1">
			<c:choose>
				<c:when test="${i.index == nowPage }">
					<li class="page-item active"><a class="page-link" href="#">${i.index}</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item "><a class="page-link"
						href="${pageurl }=${i.index }">${i.index}</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<%-- ����¡ �� --%>
		
		<%-- NextPage --%>
		<c:choose>
			<c:when test="${endPage >= totalPage }">
				<li class="page-item"><a href="" class="page-link"
					aria-disabled="true">Next</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item active"><a class="page-link"
					href="${pageurl }=${endPage + 1 }">Next</a></li>
			</c:otherwise>
		</c:choose>

	</ul>
</nav>
</div>
	<table class="table table-hover"
		style="margin-top: 30px; width: 800px; text-align: center; table-layout: fixed">
		<tr>
			<th colspan="6" style="text-align: center;">���� ���� ����</th>
		</tr>

		<tr>
			<td>��ȣ</td>
			<td>�̹���</td>
			<td>��ǰ �̸�</td>
			<td>���� ��¥</td>
			<td>���� ����</td>
			<td>���� �ݾ�</td>
		</tr>
		<!-- ���� ���ų��� foreach�� ���� -->
		<c:forEach var="e" items="${snvo }" varStatus="status">
			<c:forEach var="f" items="${e.snackbuy }">
				<tr>
					<td>${e.rownum }</td>
					<td><img
						src="${pageContext.request.contextPath}/resources/img/${e.popimg}"
						style="width: 100px; height: 100px;"></td>
					<td>${f.popname }</td>
					<td>${f.sbdate}</td>
					<td>${f.snacksaram}</td>
					<td>${e.poppay}</td>
				</tr>
			</c:forEach>
		</c:forEach>
		<!-- ���� ���ų��� foreach�� �� -->
	</table>
	<%@include file="../page/pageModule.jsp"%>
	<table class="table table-hover"
		style="margin-top: 30px; width: 800px; text-align: center; table-layout: fixed">
		<tr>
			<th colspan="4" style="text-align: center;">Q&A ���� ����</th>
		</tr>

		<tr>
			<td>��ȣ</td>
			<td>���� ����</td>
			<td>���� ����</td>
			<td>���� ��¥</td>
		</tr>

		<c:forEach var="e" items="${lovo }" varStatus="status">
			<c:forEach var="f" items="${e.qnaboard }">
				<tr>
					<td>${status.count }</td>
					<td>${f.subject }</td>
					<td>${f.content }</td>
					<td>${f.mdate }</td>
				</tr>
			</c:forEach>
		</c:forEach>

	</table>
	
</body>
<script>
	$(function() {
		var pageNum = 1;
	    var lid = "test"; // ����� ID ��
	    
	    function getList() {
	        $.ajax({
	            url: "${pageContext.request.contextPath}/mypage/mppage",
	            type: "GET",
	            data: { "cPage": pageNum, "lid": lid },
	            dataType: "json",
	            success: function(data) {
	                var list = data.muvo;
	                var totalPage = data.totalPage;
	                var str = "";
	                
	                // ����Ʈ ���
	                $.each(list, function(index, item) {
	                    str += "<tr>";
	                    str += "<td>" + item.rownum + "</td>";
	                    str += "<td><img src=${pageContext.request.contextPath}/resources/img/semi_movie/"+item.mimg+">"+"</td>"
	                    str += "<td>" + item.mname + "</td>";
	                    str += "<td>" + item.mstartday + "</td>";
	                    str += "<td>" + item.mbdate + "</td>";
	                    str += "<td>" + item.mstarttime + "</td>";
	                    str += "</tr>";
	                });
	                
	                $("#moviebuylist").html(str);
	                console.log("str"+str)
	                
	                // ����¡ ó��
	                str = "";
	                for (var i = 1; i <= totalPage; i++) {
	                    str += "<li><a href='#' class='pageNum' data-page='" + i + "'>" + i + "</a></li>";
	                }
	                
	                $("#paging").html(str);
	                $("#paging .pageNum[data-page='" + pageNum + "']").addClass("active");
	            },
	            error: function() {
	                alert("�������� ��ſ� �����Ͽ����ϴ�.");
	            }
	        });
	    }
	    
	    getList();
		            
		
		
		
		
		
		$('#mfile').hide();

		$('#btn').click(function() {
			$('#mfile').click();
		})
	function readURL(input) {
			// input type= "file"�� �ּҸ� �����´�.
			if (input.files && input.files[0]) {
				// �ڹٽ�ũ��Ʈ I/O
				var reader = new FileReader();
				// ������
				reader.onload = function(e) {
					$('#imgx').attr('src', e.target.result); // setter �ְڴ�.
				}
				reader.readAsDataURL(input.files[0]);
			}
		}

		$('#mfile').change(function() {
			if ($(this).val().length > 0) {
				readURL(this);
			} else {
				console.log("�̹��� ����.");
			}
		});
		
		

	});
</script>
</html>