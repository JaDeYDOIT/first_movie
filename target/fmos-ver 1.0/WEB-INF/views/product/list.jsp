<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="/css/store.css">
<script>
  	function product_order(){
  		// 세션 아이디 넘기기
  		var checkLogin = "${s_id}";
  		
  		// 로그인하지 않은 경우
  		if(checkLogin == 'guest'){
  			alert("로그인 해주세요.");
  		}else{
  		// 로그인한 경우 구매페이지로 이동
  			location.href='/cart/list.do';
  		}
  	}//product_order()() end
  	
	//페이지 로드 시 호출하여 특정 아이디의 버튼을 활성화 여부를 설정
 	window.onload = function () {
		enableInsertButton();
	};
  	
	// 특정 아이디를 가진 버튼만 활성화하는 함수
	function enableInsertButton() {
	   var checkLogin = "${s_id}";
	   var insertButton = document.getElementById("insertButton");
	   // 특정 아이디가 "fmos"인 경우에만 버튼을 보이고 활성화
	   if (checkLogin === 'fmos' && insertButton) {
		    insertButton.style.visibility = "visible"; // 보이도록 설정
		    insertButton.disabled = false; // 활성화
		  } else if (insertButton) {
		    insertButton.style.visibility = "hidden"; // 감추도록 설정
		    insertButton.disabled = true; // 비활성화
		  }
	 }//enableInsertButton() end
	
	// 페이지 이동을 처리하는 함수
	function navigateToWritePage() {
	   var checkLogin = "${s_id}";
	   if (checkLogin === 'fmos') {
	      window.location.href = '/product/write.do';
	   }
	}//navigateToWritePage() end
</script>

   <!-- contents 시작 -->
   <div id="contents">
   	<div id="divAction"></div> <!-- header와 body사이에 있는 빨간 라인 -->
   	<div class="tit-evt">
   		<h3>스토어</h3>
   		<button type="button" id="insertButton" onclick="navigateToWritePage()">상품등록</button>
   	</div>
   	
   	<!-- category_wrap 시작 -->
   	<div class="category_wrap" style="left:0px;">
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
   					<a style="cursor:pointer;" onclick="return product_order()">장바구니<span id="cartviewcnt">${cartcnt}</span></a>
   				</li>
   			</ul>
   		</div>
   	</div>
   	
   	<!-- category_wrap 끝 -->
	<!-- category_product_wrap 시작 -->
	<div>
		<ul class="category_product_list">
			<li>
				<strong class="category_product_title">패키지
					<a href="/product/category.do?product_category_id=1" class="btn_category_product">  더보기</a>
				</strong>
				<ul class="category_product_inner_list">
				<c:forEach items="${list}" var="row" varStatus="vs">
					<c:if test="${row.product_category_id == 1}">
						<li class="active">
							<a href="/product/detail.do?product_id=${row.product_id}" class="btn_category_product">
								<span class="best_product_img_wrap">
									<img src="${row.product_image}" alt="상품 이미지">
								</span>
								<span class="best_product_text_wrap">
									<span class="best_product_text_name">${row.product_name}</span>
									<span class="best_product_text_price"><fmt:formatNumber value="${row.product_cost}" pattern="#,###"/></span>
								</span>
							</a>
						</li>
					</c:if>
				</c:forEach>
				</ul>
			</li>
		</ul>
		<ul class="category_product_list">
			<li>
				<strong class="category_product_title">영화관람권
					<a href="/product/category.do?product_category_id=2" class="btn_category_product">더보기</a>
				</strong>
				<ul class="category_product_inner_list">
				<c:forEach items="${list}" var="row" varStatus="vs">
				<c:if test="${row.product_category_id == 2}">
					<li class="active">
						<a href="/product/detail.do?product_id=${row.product_id}" class="btn_category_product">
							<span class="best_product_img_wrap">
								<img src="${row.product_image}" alt="상품 이미지">
							</span>
							<span class="best_product_text_wrap">
								<span class="best_product_text_name">${row.product_name}</span>
								<span class="best_product_text_price"><fmt:formatNumber value="${row.product_cost}" pattern="#,###"/></span>
							</span>
						</a>
					</li>
				</c:if>
				</c:forEach>
				</ul>
			</li>
		</ul>
		<ul class="category_product_list">
			<li>
				<strong class="category_product_title">콤보
					<a href="/product/category.do?product_category_id=3" class="btn_category_product">더보기</a>
				</strong>
				<ul class="category_product_inner_list">
				<c:forEach items="${list}" var="row" varStatus="vs">
					<c:if test="${row.product_category_id == 3}">
						<li class="active">
							<a href="/product/detail.do?product_id=${row.product_id}" class="btn_category_product">
								<span class="best_product_img_wrap">
									<img src="${row.product_image}" alt="상품 이미지">
								</span>
								<span class="best_product_text_wrap">
									<span class="best_product_text_name">${row.product_name}</span>
									<span class="best_product_text_price"><fmt:formatNumber value="${row.product_cost}" pattern="#,###"/></span>
								</span>
							</a>
						</li>
					</c:if>
				</c:forEach>
				</ul>
			</li>
		</ul>
	</div>
   	<!-- category_product_wrap 끝 -->
   </div>
   <!-- contents 끝 -->
<%@ include file="../footer.jsp" %>