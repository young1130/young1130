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
					type="button" class="btn btn-dark">회원정보 수정</button></a></span>
		<div>
			<button id="btn" type="button"
				style="position: relative; margin-right: 450px; border: hidden;">
				<img id="imgx"
					src="${pageContext.request.contextPath}/resources/imgpwd/${v.limg }"
					style="width: 150px; height: 150px;">
			</button>
			<!-- 사진 수정 영역 -->
			<form style="width: 300px;" method="post"
				action="${pageContext.request.contextPath}/member/photoup"
				enctype="multipart/form-data">

				<input type="submit" value="저장" id="btn1"> <input
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
		<!-- 사진 수정 영역 끝-->

		<div
			style="width: 300px; position: relative; left: 400px; bottom: 100px;">
			<p style="font-size: 25px; font-weight: bold; padding-top: 15px;">${v.lid}님은
				현재 ${v.lclass } 등급입니다.</p>
			<p style="font-weight: bold;">보유 포인트 : ${v.lmileage } Point</p>
			<p style="font-weight: bold;">회원 아이디 : ${v.lid }</p>
			<p style="font-weight: bold;">회원 이름 : ${v.lname }</p>
			<p style="font-weight: bold;">회원 연락처 : ${v.lphone }</p>
			<p style="font-weight: bold;">회원 성별 : ${v.lgender }</p>
			<p style="font-weight: bold;">회원 주소 : ${v.laddr }</p>
			<p style="font-weight: bold;">회원 메일 : ${v.lemail }</p>
		</div>
	</div>



	<table class="table table-hover"
		style="margin-top: 50px; width: 800px; text-align: center; table-layout: fixed;">
		
		<thead>
		<tr>
			<th colspan="6" style="text-align: center;">영화 예매 내역</th>
		</tr>
	
		<tr>
			<td>번호</td>
			<td>이미지</td>
			<td>영화 제목</td>
			<td>예매 날짜</td>
			<td>영화 일자</td>
			<td>영화 시간</td>
		</tr>
	</thead>
	<tbody id="moviebuylist">
	
		</tbody>
				
	</table>
	<div class="pagination"></div>
	<%-- 페이징 시작 --%>
	<div class="paging">	
	<nav aria-label="Page navigation example">
	<ul class="pagination justify-content-center">
				

		<%-- 페이징 끝 --%>
		
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
			<th colspan="6" style="text-align: center;">스낵 예매 내역</th>
		</tr>

		<tr>
			<td>번호</td>
			<td>이미지</td>
			<td>상품 이름</td>
			<td>구매 날짜</td>
			<td>구매 수량</td>
			<td>구매 금액</td>
		</tr>
		<!-- 스낵 예매내역 foreach문 시작 -->
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
		<!-- 스낵 예매내역 foreach문 끝 -->
	</table>
	<table class="table table-hover"
		style="margin-top: 30px; width: 800px; text-align: center; table-layout: fixed">
		<tr>
			<th colspan="4" style="text-align: center;">Q&A 문의 내역</th>
		</tr>

		<tr>
			<td>번호</td>
			<td>문의 제목</td>
			<td>문의 내용</td>
			<td>문의 날짜</td>
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
$('#mfile').hide();

$('#btn').click(function() {
	$('#mfile').click();
})
function readURL(input) {
	// input type= "file"의 주소를 가져온다.
	if (input.files && input.files[0]) {
		// 자바스크립트 I/O
		var reader = new FileReader();
		// 감지자
		reader.onload = function(e) {
			$('#imgx').attr('src', e.target.result); // setter 넣겠다.
		}
		reader.readAsDataURL(input.files[0]);
	}
}

$('#mfile').change(function() {
	if ($(this).val().length > 0) {
		readURL(this);
	} else {
		console.log("이미지 없다.");
	}
});


	$(function() {
		var pageNum = 1;
	    var lid = "test"; // 사용자 ID 값
	    
	    
	    function getList() {
	    	
	    	$.ajax({
	            url: "${pageContext.request.contextPath}/memberR/mbpage",
	            type: "GET",
	            data: { "cPage": pageNum, "lid": lid },
	            dataType: "json",
	            success: function(data) {
	                var list = data.muvo;
	                var totalPage = data.totalPage;
	                var nowPage = data.nowPage;
	                var startPage = data.startPage;
	                var endPage = data.endPage;
	                var pagePerBlock = data.pagePerBlock;
	                var str = "";
	                console.log(data.muvo[0]['mimg'])
	                // 리스트 출력
	                $.each(list, function(index, item) {
	                    str += "<tr>";
	                    str += "<td>" + item.rownum + "</td>";
	                    str += "<td><img src=${pageContext.request.contextPath}/resources/img/semi_movie/"+item.mimg+">"+"</td>"
	                    str += "<td>" + item.mname + "</td>";
	                    str += "<td>" + item.mstartday + "</td>";
	                $.each(item.moviebuy, function(k, v) {
	                	str += "<td>" + v.mbdate + "</td>";
	                    str += "<td>" + v.mstarttime + "</td>";
	                    str += "</tr>";
	                });   
	                });
	                
	                $("#moviebuylist").html(str);
	                console.log("str"+str)
	              
	              
	                
	                
	             // 페이징 출력
	                var pagination = "";
	                if (nowPage > 1) {
	                    pagination += "<li><a href='javascript:getMovieBuyList(" + (nowPage - 1) + ")'>이전</a></li>";
	                } else {
	                    pagination += "<li class='disabled'><a href='#'>이전</a></li>";
	                }
	                
	                var blockStart = parseInt((nowPage - 1) / pagePerBlock) * pagePerBlock + 1;
	                var blockEnd = blockStart + pagePerBlock - 1;
	                
	                if (blockEnd > totalPage) {
	                    blockEnd = totalPage;
	                }
	                
	                for (var i = blockStart; i <= blockEnd; i++) {
	                    if (i == nowPage) {
	                        pagination += "<li class='active'><a href=''>" + i + "</a></li>";
	                    } else {
	                        pagination += "<li><a href='javascript:getMovieBuyList(" + i + ")'>" + i + "</a></li>";
	                    }
	                }
	                
	                if (nowPage < totalPage) {
	                    pagination += "<li><a href='javascript:getMovieBuyList(" + (nowPage + 1) + ")'>다음.</a></li>";
	                } else {
	                    pagination += "<li class='disabled'><a href='#'>다음</a></li>";
	                }
	                
	                $(".pagination").eq(1).html(pagination);
	            },
	            error: function() {
	                alert("서버와의 통신에 실패하였습니다.");
	            }
	        });
	    }
	    
	    getList();
		            
		
		
		
		
		

		
		
		  // 이전 버튼 클릭 이벤트
	    $('ul.pagination li:first-child').on('click', function() {
	        if (!$(this).hasClass('disabled')) {
	            var prevPage = parseInt($('ul.pagination li.active a').text()) - 1;
	            $('ul.pagination li.active').removeClass('active');
	            $('ul.pagination li a').each(function() {
	                if ($(this).text() == prevPage) {
	                    $(this).parent().addClass('active');
	                }
	            });
	            // 페이지 이동
	            var pageurl = window.location.href.split('?')[0];
	            window.location.href = pageurl + '?page=' + prevPage;
	        }
	    });

	    // 페이지 버튼 클릭 이벤트
	    $('ul.pagination li:not(:first-child, :last-child)').on('click', function() {
	        $('ul.pagination li.active').removeClass('active');
	        $(this).addClass('active');
	        // 페이지 이동
	        var pageurl = window.location.href.split('?')[0];
	        var page = $(this).text();
	        window.location.href = pageurl + '?page=' + page;
	    });

	    // 다음 버튼 클릭 이벤트
	    $('ul.pagination li:last-child').on('click', function() {
	        if (!$(this).hasClass('disabled')) {
	            var nextPage = parseInt($('ul.pagination li.active a').text()) + 1;
	            $('ul.pagination li.active').removeClass('active');
	            $('ul.pagination li a').each(function() {
	                if ($(this).text() == nextPage) {
	                    $(this).parent().addClass('active');
	                }
	            });
	            // 페이지 이동
	            var pageurl = window.location.href.split('?')[0];
	            window.location.href = pageurl + '?page=' + nextPage;
	        }
	    });
	});
</script>
</html>