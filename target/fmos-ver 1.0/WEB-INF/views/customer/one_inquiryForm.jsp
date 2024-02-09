<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="/css/customer/notice.css" />

<!-- include libraries(jQuery, bootstrap) -->

<form name="inquiryfm" method="post" action="/customer/one_inquireins.do">

<input type="hidden" name="inquire_kind" value="0">
	<div id="mtebox">
	 	<div class="text">
	    <div class="form-section">
	    	<span class="inquire_title_test">제목</span><br>
	        <input type="text" class="titleinp" name="inquire_title" id="inquire_title">
	    </div>
	
	    <div class="form-section">
	        <span class="inquire_title_test">내용</span>
	        <div class="container">
	          <textarea class="summernote" name="inquire_content" id="inquire_content"></textarea>
	    </div>
	    </div>
	        <div class="form-section">
		        <span class="inquire_title_test">비밀번호</span>
		        <input type="password" name="inquire_password" id="inquire_password">
	        </div>
	    </div>
	</div>
	
 	<div class="button_wrap">
		<input type="submit" value="등록하기"> 	
		<input type="button" value="취소하기" onclick="goBack()">
	</div>
	
	</form>

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
        
	<script>
        function goBack() {
        	window.location.href = "/customer/notice.do?notice_kind=0";
        }
    </script>
<%@ include file="../footer.jsp" %>


