<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<link rel="stylesheet" href="/css/mypage.css">
<%@ include file="../header.jsp" %>
<div id="mypage_wrap">
    <div class="member_wrap">
        <div class="memberbox">
            <div class="member">회원</div>
            <div class="list_box">
                <div class="list">
                    <article class="list1"><a>이름</a></article>
                    <article class="list2"><a>쿠폰</a></article>
                    <article class="list3"><a>회원정보</a></article>
                </div>
            </div>
        </div>
    </div>

    <div class="mypage_content">
        <aside class="menu_wrap">
            <h2>마이페이지</h2>
            <div class="menubox">
                <ul>
                    <li><a href="">결제내역</a></li>
                    <li><a href="">주문내역</a></li>
                    <li><a href="">쿠폰</a></li>
                    <li><a href="/member/memberModify.do">개인 정보 수정</a></li>
                    <li><a href="">리스트5</a></li>
                    <li><a href="">리스트6</a></li>
                    <li><a href="">리스트7</a></li>
                </ul>
            </div>
        </aside>

        <div class="content_wrap">
            <div class="content_top">아무거나</div>            
            <div class="content_bottom">콘텐츠으으으으으으</div>            
        </div>
    </div>
</div>

<%@ include file="../footer.jsp" %>