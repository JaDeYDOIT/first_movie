<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="/css/customer/notice.css" />

<!-- include libraries(jQuery, bootstrap) -->

<form name="noticefm" method="post" action="/customer/lost_inquireins.do">
<input type="hidden" name="inquire_kind" value="1">
<div id="mtebox">
 	<div class="text">
    <div class="form-section">
        <div class="inquire_title_test">상영관</div>
 		<select id="inquire_region" class="inquire_inputbox" name="rental_inquiry_area">
	 			<option value="0">상영관 선택</option>
 			<c:forEach items="${region_customer}" var="list">
				<option value="${list.region_id}">${list.region}</option> 
			</c:forEach>
 		</select>
 		<select id="inquire_screen" class="inquire_inputbox" name="inquire_theater_name">
	 			<option value="0">지점선택</option>
 		</select>
    </div>
    	<div class="form-section">
	    	<span class="inquire_title_test">제목</span><br>
	        <input type="text" class="titleinp" name="inquire_title" id="inquire_title">
	    </div>

    	<div class="form-section">
	        <span class="inquire_title_test">내용</span>
	        <div class="container">
	          <textarea class="summernote" name="inquire_content" id="inquire_content"></textarea>
	    </div>
	    
        <div class="form-section">
		    <span class="inquire_title_test">비밀번호</span>
		    <input type="password" name="inquire_pw" id="inquire_pw">
	    </div>
	    
        <div class="form-section">
		     <span class="inquire_title_test">파일첨부</span>
		     <input type="file" name="inquire_file" id="inquire_file">
	    </div>
	        
        <script>
        $('.summernote').summernote({
      	  // 에디터 높이
      	  height: 300,
      	  width: 700,
      	  // 에디터 한글 설정
      	  lang: "ko-KR",
      	  // 에디터에 커서 이동 (input창의 autofocus라고 생각하시면 됩니다.)
      	  focus : true,
      	  toolbar: [
      		    // 글꼴 설정
      		    ['fontname', ['fontname']],
      		    // 글자 크기 설정
      		    ['fontsize', ['fontsize']],
      		    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
      		    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
      		    // 글자색
      		    ['color', ['forecolor','color']],
      		    // 표만들기
      		    ['table', ['table']],
      		    // 글머리 기호, 번호매기기, 문단정렬
      		    ['para', ['ul', 'ol', 'paragraph']],
      		    // 줄간격
      		    ['height', ['height']],
      		    // 그림첨부, 링크만들기, 동영상첨부
      		    ['insert',['picture','link','video']],
      		    // 코드보기, 확대해서보기, 도움말
      		    ['view', ['codeview','fullscreen', 'help']]
      		  ],
      		  // 추가한 글꼴
      		fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
      		 // 추가한 폰트사이즈
      		fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
      	});
        </script>
    </div>
</div>
</div>
 	<div class="button_wrap">
		<input type="submit" value="등록하기"> 	
		<input type="button" value="취소하기" onclick="goBack()">
	</div>
</form>

	<script>
        function goBack() {
        	window.location.href = "/customer/notice.do?notice_kind=0";
        }
        
        $("#inquire_region").change(
        		function() {
        			var region_id = $('#inquire_region').val();
        				$.ajax({
        					url : '/customer/branchselectbox.do',
        					type : 'post',
        					data : {
        						'region_id' : region_id
        					},
        					error : function(error) {
        						alert(error);
        					},
        					success : function(result) {
        						 $("#inquire_screen").empty();
        						 $("#inquire_screen").append($('<option>', {
        							 text: '지점선택'
        						 }));
        				            // 서버에서 전송한 객체의 'screenajaxlist' 프로퍼티에 접근합니다.
        				            $.each(result.regionselectbox, function(index, value) {
        				                // 각각의 값에 대한 옵션을 생성하고 추가합니다.
        				                $("#inquire_screen").append($('<option>', {
        				                    value: value.branch_id,
        				                    text: value.branch_name
        				                }));
        				            });
        			            // #screen_id의 옵션을 갱신합니다.
        			            $("#inquire_screen").html(options);
        			        }
        				}); // ajax() end
        		}// function() end 
        ); // change function end
    </script>
<%@ include file="../footer.jsp" %>


