<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
	<script>
	function kakaoLogout() {
		 Kakao.Auth.logout()
	      .then(function() {
	        alert('logout ok\naccess token -> ' + Kakao.Auth.getAccessToken());
	        deleteCookie();
	      })
	      .catch(function() {
	        alert('Not logged in');
	      });
	  }
	</script>
    	
    <!-- 웹 폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet">
    <link rel="stylesheet" href="/css/reset.css">
    <!-- JS -->
    <link rel="stylesheet" href="/css/style.css">
    <script src="/js/jquery-3.7.1.min.js"></script>
    <script src="https://kit.fontawesome.com/cbc1642524.js" crossorigin="anonymous"></script>
    <!-- 경고창 커스텀 관련 시작 -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <!-- 경고창 커스텀 관련 끝 -->
    
    <!-- 서머노트 관련 시작 -->
	    <script src="/js/summernote/summernote-lite.js"></script>
	  	<script src="/js/summernote/lang/summernote-ko-KR.js"></script>
	  	<link rel="stylesheet" href="/css/summernote/summernote-lite.css">
    <!-- 서머노트 관련 끝 -->
    <link rel="icon" type="image/ico" href="images/header/logo.png">
    <title>영화</title>
</head>

<body>
    <div id="wrap">
        <header>
            <nav>
                <div class="nav_top">
                    <a href="/main">
                        <h1 id="logo"><img src="/images/header/logo.png" alt=""></h1>
                    </a>
                    <ul class="login_wrap">
					  <c:choose>                   
					    <c:when test="${sessionScope.s_id eq 'guest'}">
					        <!-- 로그인하지 않은 경우 또는 세션의 s_id가 'guest'인 경우 -->
					        <li id="loginhid"><img src="/images/header_icon/login.png" alt="loginimage" onclick="location.href='/member/login.do'"><a href="/member/login.do">로그인</a></li>
					        <li id="hiddenNewMember"><img src="/images/header_icon/newmember.png" alt="" onclick="location.href='/member/member.do'"><a href="/member/member.do">회원가입</a></li>
					    </c:when>
					    <c:when test="${not empty sessionScope.s_id && sessionScope.s_id ne 'guest'}">
					        <style>
					            #hiddenNewMember {
					                display: none;
					            }
					        </style>
					        <li><img src="/images/header_icon/logout.png" alt="" onclick="location.href='/member/logout.do'"><a href="/member/logout.do">로그아웃</a></li>
					    </c:when>
					    <c:otherwise>
						    <%
						        // HttpSession 객체 가져오기
						        HttpSession session2 = request.getSession();
						
						        // 세션 시간을 30분으로 설정 (단위: 초)
						        int sessionTimeoutInMinutes = 30;
						        int sessionTimeoutInSeconds = sessionTimeoutInMinutes * 60;
						        session2.setMaxInactiveInterval(sessionTimeoutInSeconds);
						    %>
						    <script>
						        window.alert("세션 시간이 만료되었습니다.");
						        location.href="/member/sessionlogout.do";
						    </script>
						</c:otherwise>
					</c:choose>
                                 <li><img src="/images/header_icon/mypage.png" alt="" onclick="location.href='/mypage/payment_detail.do'"><a href="/mypage/payment_detail.do">my page</a></li>
                        <li><img src="/images/header_icon/csc.png" alt="" onclick="location.href='/customer/notice.do?notice_kind=0'"><a href="/customer/notice.do?notice_kind=0">고객센터</a></li>
                    </ul>
                </div>
                <div class="nav_bottom">
                    <ul class="nav_wrap">
                        <li><a href="/movie/list.do">영화</a></li>
                        <li><a href="/theater/branchlist.do?region_id=region_001&branch_id=1">극장</a></li>
                        <li><a href="/ticketing/schedule" style="color:rgb(0, 128, 255);">예매</a></li>
                        <li><a href="/product/list.do">스토어</a></li>
                        <li><a href="#">이벤트</a></li>
                        <li><a href="#">혜택</a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <div class="headerfill"></div>
        <div id="myModal" class="overlay">
	</div>
	       <!-- header end -->
        

    