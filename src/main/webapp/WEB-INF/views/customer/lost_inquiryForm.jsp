<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="/css/customer/notice.css" />

<!-- include libraries(jQuery, bootstrap) -->

<form name="noticefm" method="post" action="/customer/noticeinsert.do">
<div id="mtebox">
 	<div class="text">
    <div class="form-section">
        <label for="notice_type">문의유형</label>
        <select name="notice_type" id="notice_type">
            <option value="영화관이용관련">영화관이용관련</option>
            <option value="대관문의관련">대관문의관련</option>
            <option value="결제관련">결제관련</option>
        </select>
    </div>
    <div class="form-section">
        <label for="notice_title">제목</label><br>
        <input type="text" class="titleinp" name="notice_title" id="notice_title">
    </div>

    <div class="form-section">
        <label for="editordata">문의내용</label>
        <div class="container">
            <textarea class="summernote" name="editordata" id="editordata"></textarea>
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
    </script>
<%@ include file="../footer.jsp" %>


