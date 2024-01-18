<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="/css/store.css">
<script>
	//장바구니 : 로그인과 결제 페이지 유효성 검사
  	function product_cart() {
  	   //세션 아이디 넘기기
  	   var checkLogin = "${s_id}";
	
  	   //로그인 및 상품 수량 관련 유효성 검사
  	   if (checkLogin == 'guest') {
  	        //로그인하지 않은 경우
  	        alert("로그인 해주세요.");
  	    } else if ($("#product_count").val() == "0") {
  	        //상품 수량을 선택하지 않은 경우
  	        alert("상품수량을 선택해주세요.");
  	    } else {
  	        //로그인 상태이고, 상품 수량도 선택한 경우
  	        document.detailfrm.action = "/cart/insert.do";
  	        document.detailfrm.submit();
  	    }
  	}//product_cart() end
  	
  	//결제하기 : 로그인과 결제 페이지 유효성 검사
  	function product_order(){
  		//세션 아이디 넘기기
  		var checkLogin = "${s_id}";
  		
  		//로그인하지 않은 경우
  		if(checkLogin == 'guest'){
  			alert("로그인 해주세요.");
  		} else if($("#product_count").val() == "0") {
  	        //상품 수량을 선택하지 않은 경우
  	        alert("상품수량을 선택해주세요.");
  		} else{
  		//로그인 상태이고, 상품 수량도 선택한 경우
  	        document.detailfrm.action = "/cart/insert.do";
  	        document.detailfrm.submit();
  		}
  	}//product_order() end
  	
	//페이지 로드 시 호출하여 특정 아이디의 버튼을 활성화 여부를 설정
	window.onload = function () {
	  enableDeleteButton();
	};
  	
  	//특정 아이디를 가진 버튼만 활성화하는 함수
	function enableDeleteButton() {
	  var checkLogin = "${s_id}";
	  var deleteButton = document.getElementById("deleteButton");
	
	  // 관리자 아이디인 "fmos"인 경우에만 버튼을 보이고 활성화
	  if (checkLogin === 'fmos' && deleteButton) {
	    deleteButton.style.display = "block"; // 보이도록 설정
	    deleteButton.disabled = false; // 활성화
	  } else if (deleteButton) {
	    deleteButton.style.display = "none"; // 안 보이도록 설정
	  }
	}//enableDeleteButton() end

    function product_delete() {
  	  var checkLogin = "${s_id}";
  	  if (checkLogin === 'fmos' && confirm("첨부된 파일은 영구히 삭제됩니다.\n진행할까요?")) {
  	    document.detailfrm.action = "/product/delete.do";
  	    document.detailfrm.submit();
  	  }
  	}//product_delete() end
</script>

<!-- contents 시작 -->
  <div id="contents">
   	<div id="divAction"></div> <!-- header와 body사이에 있는 빨간 라인 -->
   	<div class="tit-evt">
   		<h3>스토어</h3>
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
   				</li>
   			</ul>
   			<ul class="cart_content">
   				<li>
   					<a href="/cart/list.do" style="cursor:pointer;" onclick="return cart_list()">장바구니<span id="cartviewcnt">${cartcnt}</span></a>
   				</li>
   			</ul>
   		</div> 	
   	</div>
   	<!-- category_wrap 끝 -->
	<!-- category_product_detail_wrap 시작 -->
	<div class="category_product_detail_wrap">
		<div class="category_product_detail_package">
		<form name="detailfrm" id="detailfrm" method="post">
		<input type="hidden" name="product_id" value="${product_id.product_id}">
		<c:forEach items="${detail}" var="row" varStatus="vs">
			<li class="active">
				<a href="/product/detail.do?product_id=${row.product_id}" class="btn_category_product"></a>
					<table>
					    <tr>
					        <th class="category_product_detail_img" rowspan="6"><img src="${row.product_image}" alt="상품 이미지"></th>
					    </tr>
					    <tr>
					        <th class="category_product_detail_naeyong">상품명</th>
					        <td class="category_product_detail_txt" colspan="3">${row.product_name}</td>
					    </tr>
					    <tr>
					        <th class="category_product_detail_naeyong">상품구성</th>
					        <td class="category_product_detail_txt" colspan="3">${row.product_content}</td>
					    </tr>
					    <tr>
					        <th class="category_product_detail_naeyong">금액</th>
					        <td class="category_product_detail_txt" colspan="2">
					            <fmt:formatNumber value="${row.product_cost}" pattern="#,###"/>
					        </td>
					    </tr>
					    <tr>
							<td  class="category_product_detail_naeyong">상품수량</td>
							<td>
								<select id="product_count" name="product_count">
									<option value="0">★선택★</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
								</select>
							</td>
				    	</tr>
					</table>
			</li>
		</c:forEach>
			<div class="category_product_button">
				 <tr>
					<td colpsan="2" align="center" class="category_product_button">
						<input type="button" id="deleteButton" value="삭제하기" onclick="return product_delete()">
						<input type="button" value="장바구니" onclick="return product_cart()">
						<input type="button" value="구매하기" onclick="return product_order()">
					</td>
				</tr> 
			</div>
		</form>	
		</div>
	</div>
		<!-- category_product_detail_wrap 끝 -->
	</div>
	<!-- contents 끝 -->
<%@ include file="../footer.jsp" %>