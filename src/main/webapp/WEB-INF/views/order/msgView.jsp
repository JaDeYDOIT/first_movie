<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="/css/store.css">
<link rel="stylesheet" href="/css/cart.css">
<link rel="stylesheet" href="/css/order.css">


<!-- contents 시작 -->
<div id="contents">
	<div id="divAction"><!-- header와 body사이에 있는 빨간 라인 -->
	<div class="tit-evt">
		<h3>결제완료</h3>
	</div>

  	<!-- category_wrap 시작 -->
  	<div class="category_wrap">
  		<div class="category_contents_wrap">
  			<ul class="category_content">
  				<li id="cm1" name="categorymenu">
   					<a href="/product/category.do?product_category_id=1">패키지</a>
   				</li>
   				<li id="cm2" name="categorymenu">
   					<a href="/product/category.do?product_category_id=2">영화관람권</a>
   				</li>
   				<li id="cm3" name="categorymenu">
   					<a href="/product/category.do?product_category_id=3">콤보</a>
   				</li>
   				<li id="cm4" name="categorymenu">
   					<a href="#">팝콘</a>
   				</li>
   				<li id="cm5" name="categorymenu">
   					<a href="#">음료</a>
   				</li>
   				<li id="cm6" name="categorymenu">
   					<a href="#">스낵</a>
   				</li>
   				<li id="cm7" name="categorymenu">
   					<a href="#">플레이존</a>
   				</li>
  			</ul>
  			<ul class="cart_content">
  				<li>
  					<a href="/cart/list.do">장바구니<span id="cartviewcnt">0</span></a>
  				</li>
  			</ul>
  		</div>
  	</div>
  	<!-- category_wrap 끝 -->
  	
<!-- order msg view 시작 -->
	<div class="cart_step_wrap">
		<ul class="cart_step step_unit3">
			<li class="step1"><span>STEP 01</span><strong>장바구니</strong></li>
			<li class="step2"><span>STEP 02</span><strong>결제하기</strong></li>
			<li class="step3 active"><span>STEP 03</span><strong>결제완료</strong></li>
		</ul>
	</div>
 
	<div class="row">
		<img src="/images/store/shopping.png">
		<p>고객님의 주문이 정상적으로 완료되었습니다!</p>
	</div>
<!-- order msg view 끝 -->
	</div>
</div>
<!-- contents 끝 -->
<%@ include file="../footer.jsp" %>