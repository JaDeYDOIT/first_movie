<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="/css/customer/notice.css" />

<form name="noticefm" method="post" action="/customer/noticeinsert.do">
 <table>
 	<tr>
 		<th>문의유형</th>
 		<td>
 		<input type="hidden" name="notice_kind" value="1">
 		<select name="notice_type">
 			<option value="시스템점검">시스템점검</option>
 			<option value="극장">극장</option>
 			<option value="이벤트/행사">이벤트/행사</option>
 			<option value="기타">기타</option>
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
 		<td><textarea class="contentinp" name="notice_content"></textarea></td>
 	</tr>
 </table>
 	<div class="button_wrap">
		<input type="submit" value="등록하기"> 	
		<input type="button" value="취소하기" onclick="goBack()">
	</div>
</form>
	<script>
        function goBack() {
        	window.location.href = "/customer/notice.do?notice_kind=1";
        }
    </script>
<%@ include file="../footer.jsp" %>


