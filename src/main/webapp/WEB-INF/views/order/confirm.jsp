<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="/css/store.css">
<link rel="stylesheet" href="/css/cart.css">
<link rel="stylesheet" href="/css/order.css">

<!-- 아임포트 결제시 필요한 js -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="https://cdn.iamport.kr/v1/iamport.js"></script> 

<!-- contents 시작 -->
<div id="contents">
  	<div id="divAction">
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
	<form method="post" action="/order/confirm.do" name="confirmfrm" id="confirmfrm" onsubmit="requestPay()">
		<div class="com_box_design_wrap">
		<strong class="com_box_design_title">결제 금액 확인</strong>
		<ul class="com_box_design">
			<li>
				<label for="totalmoney">전체 결제 금액</label>
				<input type="text" name="totalmoney" id="totalmoney" value="${totalmoney}" readonly style="width: 128px">
			</li>
		</ul>
	    </div>
	<div class="com_box_design_wrap">
		<strong class="com_box_design_title">주문자 정보 확인</strong>
		<ul class="com_box_design">
			<li>
			<%-- <c:forEach items="${confirm}" var="row"> List<MemberDTO>로 받으면 살리기 → 아래 value=${row.member_name}로 이름 바꾸기 --%> 
				<label for="user_name">이름</label>
				<input type="text" name="user_name" id="user_name" value="${confirm.member_name}" placeholder="이름" style="width: 128px">
				<label for="user_phonenum">휴대전화 번호</label>
				<input type="tel" name="user_phonenum" id="user_phonenum" value="${confirm.member_phone}" placeholder="휴대전화 번호" style="width: 228px">
			<%-- </c:forEach> --%>
			</li>
		</ul>
		<p class="com_box_design_olist">※ 입력된 휴대전화 번호가 맞는지 꼭 확인하세요.</p>
	</div>
		<button type="submit" class="cartButton" onclick="requestPay()">결제하기</button>
	</form>
	<!-- cart_wrap 끝 -->
	</div>
<script>
   function requestPay() {

      var IMP = window.IMP;
      IMP.init('imp82132377'); // 실제 가맹점 식별코드로 변경

      IMP.request_pay({
         pg: "html5_inicis",
         pay_method: "card",
         merchant_uid: "merchant_" + new Date().getTime(),
         name: "상품명",
         amount: 100,
         buyer_tel: "010-2789-4852",
      }, function (response) {
         if (response.success) {
            var msg = '결제가 완료되었습니다.';
            msg += '고유ID : ' + response.imp_uid;
            msg += '상점 거래ID : ' + response.merchant_uid;
            msg += '결제 금액 : ' + response.paid_amount;
            msg += '카드 승인번호 : ' + response.apply_num;
         } else {
            var msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + response.error_msg;
         }
         	alert(msg);
      	});
  	 }
	//버튼 클릭 시 이벤트 핸들러 추가
	document.getElementById("confirmfrm").addEventListener("submit", function (event) {
      event.preventDefault(); // 폼의 기본 동작 방지
      requestPay(); // 결제 함수 호출
   });
</script>
</div>
<!-- contents 끝 -->
<%@ include file="../footer.jsp" %>