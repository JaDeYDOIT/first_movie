<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %> 
    
    <c:if test="${msg2 eq 0}">
    	<p>${msg1}</p>
	    <script>
	        window.location.href = '/customer/notice.do?notice_kind=0';
	    </script>
	</c:if>
	 
	<c:if test="${msg2 eq 1}">
	<p>${msg1}</p>
	    <script>
	        window.location.href = '/customer/notice.do?notice_kind=1';
	    </script>
	</c:if>
	
	<c:if test="${msg2 eq 2}">
	<p>${msg1}</p>
	    <script>
	        window.location.href = '/customer/inquire.do?inquire_kind=0';
	    </script>
	</c:if>
	
	<c:if test="${msg2 eq 3}">
	<p>${msg1}</p>
	    <script>
	        window.location.href = '/customer/inquire.do?inquire_kind=1';
	    </script>
	</c:if>
	
	<c:if test="${msg2 eq 4}">
	<p>${msg1}</p>
	    <script>
	        window.location.href = '/customer/notice.do?notice_kind=0';
	    </script>
	</c:if>
	 
<%@ include file="footer.jsp" %>