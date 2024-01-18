<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="/css/customer/notice.css" />

<form name="inquiryfm" method="post" action="/customer/inquireins.do">
 <table>
 <input type="hidden" name="inquire_kind" value="0">
 	<tr>
 		<th>제목</th>
 		<td><input type="text" class="titleinp" name="inquire_title"></td>
 	</tr>
 	<tr>
 		<th>내용</th>
 		<td><textarea class="contentinp" name="inquire_content"></textarea></td>
 	</tr>
 	<tr>
 		<th>비밀번호</th>
 		<td><input type="password" name="inquire_pw"></td>
 	</tr>
 	<tr>
 		<th>파일첨부</th>
 		<td><input type="file" name="inquire_file"></td>
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


