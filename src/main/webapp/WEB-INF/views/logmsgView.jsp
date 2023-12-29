<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %> 
    <p>${msg1 }</p>
    <p>${msg2 }</p>
    
    <c:if test="${not empty msg2 and msg2 ne 1}">
	    <script>
	        window.location.href = '/member/login.do';
	    </script>
	</c:if>
	<c:if test="${empty msg2 or msg2 eq 1}">
	    <script>
	        window.location.href = '/main';
	    </script>
	</c:if>
    
<%@ include file="footer.jsp" %>