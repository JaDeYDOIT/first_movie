<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="/css/store.css">
<link rel="stylesheet" href="/css/cart.css">
<link rel="stylesheet" href="/css/order.css">

<!-- 아임포트 결제시 필요한 js -->
<!-- 
<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="https://cdn.iamport.kr/v1/iamport.js"></script> 
-->


<script>
/* 
	 function orderCheck() {
	    var selectedPaymentMethod = document.querySelector('input[name="radio"]:checked');
	    var selectedCardType = document.getElementById('creditCardType');
	
	    // 최소 한 가지 결제 수단이 선택되었는지 확인
	    if (!selectedPaymentMethod) {
	        alert("하나의 결제 수단을 선택해주세요.");
	        return false;
	    }
	
	    // 카카오페이를 선택한 경우 카드 선택 비활성화
	    if (selectedPaymentMethod.value === "payment_kakao") {
	        selectedCardType.disabled = true; // 카드 선택 비활성화
	        return confirm("결제할까요?");
	    }
	
	    // 카드 결제 수단이 선택된 경우에는 카드 종류도 선택되었는지 확인
	    if (selectedCardType.value === "0") {
	        alert("카드 종류를 선택해주세요.");
	        return false;
	    }
	
	    // 활성화된 카드 선택 필드를 다시 활성화
	    selectedCardType.disabled = false;
	
	    // 확인 메시지 표시
	    return confirm("결제할까요?");
	}
	  */
</script>

<script>
/* 
 	var IMP = window.IMP;
	IMP.init("imp82132377");
	
	function requestPay() {
	    alert("payment_method");
	    IMP.request_pay({
	        pg: "html5_inicis",
	        pay_method: "card",
	        merchant_uid: "merchant_" + new Date().getTime(),
	        name: "상품명",
	        amount: 100,
	        buyer_tel: "010-2789-4852",
	    }, function (response) {
	    	alert(4565);
	        console.log(response);
	        if (response.success) {
	        	alert(5555);
	            var msg = '결제가 완료되었습니다.';
	            msg += '고유ID : ' + response.imp_uid;
	            msg += '상점 거래ID : ' + response.merchant_uid;
	            msg += '결제 금액 : ' + response.paid_amount;
	            msg += '카드 승인번호 : ' + response.apply_num;
	        } else {
	        	alert(111);
	            var msg = '결제에 실패하였습니다.';
	            msg += '에러내용 : ' + response.error_msg;
	        }
	        alert(msg);
	    });
	}
	// 버튼 클릭 시 이벤트 핸들러 추가
	document.getElementById("confirmfrm").addEventListener("submit", function (event) {
	    event.preventDefault(); // 폼의 기본 동작 방지
	    requestPay(); // 결제 함수 호출
	}); */
</script>
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
			<strong class="com_box_design_title">결제 수단</strong>
			<td>
    			<select name="payment_method" class="form-control">
    				<option value="0">★선택★</option>
    				<option value="1">카드결제</option>
    				<option value="2">카카오페이</option>
    			</select>
    		</td>
	</div>
		<!-- <input type="submit" value="결제하기" class="cartButton" onclick="requestPay()"> -->
		<button type="submit" class="cartButton">결제하기</button>
	</form>
	<!-- cart_wrap 끝 -->
	</div>
</div>
<!-- contents 끝 -->
<%@ include file="../footer.jsp" %>