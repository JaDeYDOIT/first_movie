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
	        <input type="text" class="titleinp" name="inquire_title" id="inquire_title" value="${notice.inquire_title}" disabled="disabled">
	    </div>
	    
	    <div class="form-section">
	    	<span class="inquire_name_test">작성자</span><br>
	        <input type="text" class="nameinp" name="inquire_name" id="inquire_name" value="${notice.member_id}" disabled="disabled">
	    </div>
	
	    <div class="form-section">
	        <span class="inquire_title_test">내용</span>
	        <div class="container">
	          <input type="text" name="inquire_content" id="inquire_content" disabled="disabled">
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
	
	<div id="inquire_content">${notice.inquire_content}</div>
	
	<script>
	// JavaScript로 HTML 태그를 텍스트로만 처리
	var contentElement = document.getElementById("inquire_content");
	var databaseContent = contentElement.innerHTML;
	
	// HTML 태그를 무시하고 텍스트만을 가져오기
	var parser = new DOMParser();
	var parsedContent = parser.parseFromString(databaseContent, 'text/html');
	var textContent = parsedContent.body.textContent || "";
	
	// 결과를 콘솔에 출력하거나 다른 용도로 사용할 수 있음
	$("#inquire_content").val() = textContent;
	
	// 이제 textContent를 다른 곳에 적용하거나 사용할 수 있습니다.
	</script>

<%@ include file="../footer.jsp" %>


