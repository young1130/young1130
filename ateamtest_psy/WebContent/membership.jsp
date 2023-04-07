<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%--2023. 1. 25. / Kosmo --%>

<!--file_name -->
<!DOCTYPE html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<html>
<head>
<meta charset="EUC-KR">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<style></style>
<script>

//ex10_Server의 데이터를 순서대로 불러오시오
$(function () {
	function myAjax(num){
		$.ajaxSetup({
			cache:false
		});
		$.ajax({
			url:"member_server.jsp?menu="+num,
					success:function(data){
						if(num === 1){
							$('#silver').html(data);
						}else if(num === 2){
							$('#gold').html(data);
						}else if(num === 3){
							$('#platinum').html(data);
						}
						else if(num === 4){
							$('#diamond').html(data);
						}
					}
		});
	}
	//처음 로딩할 때
	myAjax(1);
	$('#silver-tab').click(function() {
	myAjax(1);
	});
	$('#gold-tab').click(function() {
		myAjax(2);
		});
	$('#platinum-tab').click(function() {
		myAjax(3);
		});
	$('#diamond-tab').click(function() {
		myAjax(4);
		});
});
</script>
</head>
<body>
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <button class="nav-link active" id="silver-tab"
     data-bs-toggle="tab" data-bs-target="#silver" 
     type="button" role="tab" aria-controls="silver" aria-selected="true">silver</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="gold-tab" 
    data-bs-toggle="tab" data-bs-target="#gold" 
    type="button" role="tab" aria-controls="gold" aria-selected="false">gold</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="platinum-tab" 
    data-bs-toggle="tab" data-bs-target="#platinum" 
    type="button" role="tab" aria-controls="platinum" aria-selected="false">platinum</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="diamond-tab" 
    data-bs-toggle="tab" data-bs-target="#diamond" 
    type="button" role="tab" aria-controls="diamond" aria-selected="false">diamond</button>
  </li>
</ul>

<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="silver" 
  role="tabpanel" aria-labelledby="silver-tab">
  </div>
  
  <div class="tab-pane fade" id="gold" 
  role="tabpanel" aria-labelledby="gold-tab">
  </div>
  
  <div class="tab-pane fade" id="platinum" 
  role="tabpanel" aria-labelledby="platinum-tab">
  </div>
  
    <div class="tab-pane fade" id="diamond" 
  role="tabpanel" aria-labelledby="diamond-tab">
  </div>
  
</div>
</body>
</html>