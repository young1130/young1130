<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
   rel="stylesheet">
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<title>Insert title here</title>
<style></style>

</head>

<body>
   <!--  -->
   <section style="background-color: white;">
      <div class="container py-5">

         <div class="row d-flex justify-content-center">
            <div class="col-md-8 col-lg-6 col-xl-4">

               <div class="card" id="chat1" style="border-radius: 15px;">
                  <div
                     class="card-header d-flex justify-content-between align-items-center p-3 border-bottom-0"
                     style="border-top-left-radius: 15px; border-top-right-radius: 15px; background-color: #C60B05; color: #c9b459; font-weight: bold;">
                     <i class="fas fa-angle-left"></i>
                     <p class="mb-0 fw-bold">Live chat</p>
                     <i class="fas fa-times"></i>
                  </div>
                  <div class="card-body">
                     <!-- 안내메세지-->
                     <div class="d-flex flex-row justify-content-start mb-4">
                        <label class="col-sm-2 col-form-label">상담사</label>
                        <div class="p-3 ms-3"
                           style="border-radius: 15px; background-color: #C60B05; color: #c9b459; font-weight: bold;">
                           <p class="small mb-0">1.예매, 2.영화시간표, 3.Q&A게시판</p>
                        </div>
                     </div>
                     <!-- 채팅문 시작 -->
                     
                        <div class="d-flex flex-row justify-content-end mb-4" id="div1">
                           <div class="p-3 me-3 border" id="div2"
                              style="border-radius: 15px; background-color: #fbfbfb; font-weight: bold;">
                                 
                              <p class="small mb-0" id="keyp"></p>
                                 
                           </div>
                           <label class="col-sm-2 col-form-label">고객</label>
                        </div>

                        <div class="d-flex flex-row justify-content-start mb-4">
                           <label class="col-sm-2 col-form-label">상담사</label>
                           <div class="p-3 ms-3"
                              style="border-radius: 15px; background-color: #C60B05; color: #c9b459; font-weight: bold;">
                              
                              <p class="small mb-0" id="valuep"></p>
                              
                           </div>
                        </div>
                        
               
                     <div class="d-flex flex-row justify-content-start mb-4">
                        <div class="p-3 ms-3"
                           style="border-radius: 15px; background-color: #C60B05; color: #c9b459; font-weight: bold;">
                           <p class="small mb-0">...</p>
                        </div>
                     </div>
                  
                     <!-- 채팅문 끝 -->
                     <!-- 문의사항 입력 -->
                     <div class="form-outline" id="wbtn">
                              문의사항 <input type="text" name="key" id="keyinput" autofocus>
                     </div>
                     
                     <div id="text123"></div>
                   
                     
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!--  -->
</body>

<script>



$(function () {
	
     $("#keyinput").keydown(function(key) {
         if (key.keyCode == 13) {
        	 let number = $('#keyinput').val();       	 
        	 console.log(number);
              //경고창을 출력한다.
              $.ajax({
            	 url: '../chat/chatbot?key='+number ,
            	 dataType : 'text',
            	 type: "post",
            	 error: function (xhr, status, error) {
            		 console.log("실패");
            	},
            	 success : function(data) {
            		 console.log(data);
            		$('#keyp').append("<p>"+number+"</p>");
            		$('#valuep').append("<p>"+data+"</p>");
            		$('#keyinput').val("");
				}
              });
          }
         /*
         setTimeout(function () {
            location.href="timeOutPage.jsp";
      }, 2000); 
         */
      });
    
    
});





</script>

</html>