<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="/css/customer/notice.css" />

 <table>
 	<tr>
 		<th>문의유형</th>
 		<td>
 		<select class="inquirysel">
 			<option>1:1문의</option>
 			<option>분실물문의</option>
 		</select>
 		</td>
 	</tr>
 	<tr>
 		<th>이름</th>
 		<td><input type="text" class="nameinp"></td>
 	</tr>
 	<tr>
 		<th>이메일</th>
 		<td><input type="text" class="emailinp"></td>
 	</tr>
 	<tr>
 		<th>휴대전화</th>
 		<td class="phoneinp">
	 		<input type="number"><span>-</span>
	 		<input type="number"><span>-</span>
 			<input type="number">
 		</td>
 	</tr>
 	<tr>
 		<th>제목</th>
 		<td><input type="text" class="titleinp"></td>
 	</tr>
 	<tr>
 		<th>내용</th>
 		<td><input type="text" class="contentinp"></td>
 	</tr>
 	<tr>
 		<th>사진첨부</th>
 		<td><input type="file" class="photoinp"></td>
 	</tr>
 </table>
 	<div class="button_wrap">
		<input type="button" value="등록하기"> 	
		<input type="button" value="취소하기">
	</div>
<%@ include file="../footer.jsp" %>