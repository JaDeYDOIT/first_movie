<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %> 

	<c:if test="${msg2 eq 1}">
	 <%
        // HttpSession 객체 가져오기
        HttpSession session2 = request.getSession();

        // 세션 시간을 30분으로 설정 (단위: 초)
        //int sessionTimeout = 30 * 60; // 30분
        int sessionTimeout = 30 * 60; // 30분
        session2.setMaxInactiveInterval(sessionTimeout);
    %>
	    <script>
	        window.location.href = '/main';
	    </script>
	</c:if>
	 
	<c:if test="${msg2 eq 2}">
	<p>${msg1}</p>
	 	<%
		    // HttpSession 객체 가져오기
		    HttpSession session2 = request.getSession();
		
		    // 세션 시간을 30분으로 설정 (단위: 초)
		    int sessionTimeout = -1; // 음수는 무제한을 나타냄
		    session2.setMaxInactiveInterval(sessionTimeout);
		%>
	    <script>
	        window.location.href = '/main';
	    </script>
	</c:if>
	 
	<c:if test="${msg2 eq 3}">
	<p>${msg1}</p>
	 	<%
		    // HttpSession 객체 가져오기
		    HttpSession session2 = request.getSession();
		
		    // 세션 시간을 30분으로 설정 (단위: 초)
		    int sessionTimeout = -1; // 음수는 무제한을 나타냄
		    session2.setMaxInactiveInterval(sessionTimeout);
		%>
	    <script>
	        window.location.href = '/main';
	    </script>
	</c:if> 
    
<%@ include file="footer.jsp" %>