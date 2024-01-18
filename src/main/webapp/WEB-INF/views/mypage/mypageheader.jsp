<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/mypage.css">
<%@ include file="../header.jsp"%>

<c:if test="${not empty message}">
	<script>
		alert('${message}');
		location.href = "/member/login.do";
	</script>
</c:if>

<div id="mypage_wrap">
	<h2>마이 페이지</h2>
	<div class="member_wrap">
		<div class="memberbox">
			<div class="member">${mypage.member_name} 님</div>
			<div class="list_box">
				<div class="list">
					<article class="list1">
						<a href="/cart/list.do">장바구니</a>
					</article>
					<article class="list2">
						<a href="/mypage/coupon.do">쿠폰
							 <span>${mycouponCount.having_coupon_id} </span>개</a>
					</article>
					<article class="list3">
						<a>회원정보</a>
					</article>
				</div>
			</div>
		</div>
	</div>
<!--  -->
	<div class="mypage_content">
		<aside class="menu_wrap">
			<h2>목록</h2>
			<div class="menubox">
				<ul>
					<li><a href="/mypage/payment_detail.do">결제내역</a></li>
					<li><a href="/mypage/coupon.do">쿠폰</a></li>
					<li><a href="/mypage/inquiry.do">내 문의</a></li>
					<li><a href="/mypage/memberModify.do">회원 수정</a></li>
					<li><a href="/mypage/withdrawal.do">회원 탈퇴</a></li>
				</ul>
			</div>
		</aside>
