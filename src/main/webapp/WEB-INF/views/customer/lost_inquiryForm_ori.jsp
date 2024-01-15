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
 <table>
 	<tr>
 		<th>문의유형</th>
 		<td>
 		<select name="notice_type">
 			<option value="영화관이용관련">영화관이용관련</option>
 			<option value="대관문의관련">대관문의관련</option>
 			<option value="결제관련">결제관련</option>
 		</select>
 		</td>
 	</tr>
 	<tr>
 		<th>제목</th>
 		<td><input type="text" class="titleinp" name="notice_title"></td>
 	</tr>
 	<tr>
 		<th>내용</th>
 		<!-- <td><input type="text" class="contentinp" name="inquire_content"></td> -->
 		<td><div class="container">
	 		<textarea class="summernote" name="editordata"></textarea>    
		</div>
		<script>
		$('.summernote').summernote({
			  height: 150,
			  lang: "ko-KR"
		});
		</script></td>
 	</tr>
 </table>
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


