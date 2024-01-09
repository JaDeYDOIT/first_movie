<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="/css/customer/notice.css" />

<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>


<form name="noticefm" method="post" action="/customer/noticeinsert.do">
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
                height: 150,
                lang: "ko-KR"
            });
        </script>
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


