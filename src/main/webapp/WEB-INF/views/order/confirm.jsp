<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="/css/store.css">
<link rel="stylesheet" href="/css/cart.css">
<link rel="stylesheet" href="/css/order.css">
<script>
	function orderCheck(){
		//유효성 검사(받는사람, 받는주소, 배송메시지 등)
		if(confirm("결제할까요?")){
			return true;
		}else{
			return false;
		}//if end
	}//orderCheck() end
</script>

<!-- contents 시작 -->
<div id="contents">
  	<div id="divAction"><!-- header와 body사이에 있는 빨간 라인 -->
  	<div class="tit-evt">
  		<h3>장바구니 결제하기</h3>
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
  	
	<!-- cart_wrap 시작 -->
	<div class="cart_step_wrap">
		<ul class="cart_step step_unit3">
			<li class="step1"><span>STEP 01</span><strong>장바구니</strong></li>
			<li class="step2 active"><span>STEP 02</span><strong>결제하기</strong></li>
			<li class="step3"><span>STEP 03</span><strong>결제완료</strong></li>
		</ul>
	</div>
	<form method="post" action="insert" name="confirmfrm" id="confirmfrm" onsubmit="return orderCheck()">
		<table class="com_cart_list_wrap">
	      <tr class="thead_wrap">
	        <th><strong>총 결제 금액</strong></th>
	        <td><fmt:formatNumber value="${totalmoney}" pattern="#,###"/>원</td>
	      </tr>
	    </table>
	<div class="com_box_design_wrap">
		<strong class="com_box_design_title">주문자 정보 확인</strong>
		<ul class="com_box_design">
			<li>
			<%-- <c:forEach items="${confirm}" var="row"> List<MemberDTO>로 받으면 살리기 → 아래 value=${row.member_name}로 이름 바꾸기 --%> 
				<label for="user_info_name">이름</label>
				<input type="text" id="user_info_name" placeholder="이름" style="width: 128px" value="${confirm.member_name}">
				<label for="user_info_phonenum">휴대전화 번호</label>
				<input type="tel" id="user_info_phonenum" placeholder="휴대전화 번호" style="width: 228px" value="${confirm.member_phone}">
			<%-- </c:forEach> --%>
			</li>
		</ul>
		<p class="com_box_design_olist">※ 입력된 휴대전화 번호가 맞는지 꼭 확인하세요.</p>
			<strong class="com_box_design_title">결제 수단</strong>
			<ul class="radioCheck">
			<li id="liCard">
			<div class="cardlabel">
			    <label for="creditCardType">
			   		<input type="radio" name="radio" class="custom_card" id="payment_card">신용카드
			    </label>
			    <select id="creditCardType" name="creditCardType">
			      <option value="0">선택</option>
			      <option value="1">신한카드</option>
			      <option value="2">현대카드</option>
			      <option value="3">삼성카드</option>
			    </select>
			    <label>
			      <input type="radio" name="radio" value="kakaopay">카카오페이
			    </label>
		    </div>
		    </li>
		    </ul>
	</div>
		<input type="button" value="결제하기" class="cartButton" onclick="location.href='msgView.do'">
	</form>
	<!-- cart_wrap 끝 -->
	</div>
</div>
<!-- contents 끝 -->
<%@ include file="../footer.jsp" %>