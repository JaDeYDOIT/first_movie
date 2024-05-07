<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="/css/customer/notice.css">

<!-- include libraries(jQuery, bootstrap) -->

<form name="inquiryfm" method="post" action="/customer/one_inquireins.do">

<input type="hidden" name="inquire_kind" value="0">
	<div id="mtebox">
	 	<div class="text">
		    <div class="form-section">
		    	<span class="inquire_title_test">제목</span><br>
		        <input type="text" class="detailinp" name="detail_title" id="detail_title" disabled="disabled" value="${notice.notice_title}">
		    </div>
		    
		    <div class="form-section">
		    	<span class="inquire_title_test">작성자</span><br>
		        <input type="text" class="detailinp" name="detail_writer" id="detail_writer" disabled="disabled" value="관리자">
		    </div>
		
		    <div class="form-section">
		        <span class="inquire_title_test">내용</span>
		        <div class="container">
		          <textarea class="detailinp" name="detail_content" id="detail_content" disabled="disabled">${notice.notice_content}</textarea>
		    	</div>
		    </div>
	    </div>
	</div>
	
	<c:if test="${sessionScope.s_id eq 'fmos'}">
 	<div class="button_wrap">
		<input type="submit" value="등록하기"> 	
		<input type="button" value="취소하기" onclick="goBack()">
	</div>
	</c:if>
	</form>

	<script>
        function goBack() {
        	window.location.href = "/customer/notice.do?notice_kind=0";
        }
    </script>
<%@ include file="../footer.jsp" %>


