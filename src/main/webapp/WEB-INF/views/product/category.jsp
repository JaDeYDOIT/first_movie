<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="/css/store.css">

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
   			</ul>
   			<ul class="cart_content">
   				<li>
   					<a href="/cart/list.do">장바구니<span id="cartviewcnt">${cartcnt}</span></a>
   				</li>
   			</ul>
   		</div>
   	</div>
   	<!-- category_wrap 끝 -->
	<!-- category_product_wrap 시작 -->
	<div>
	<form name="productfrm" id="productfrm" method="post" enctype="multipart/form-data">
	<input type="hidden" name="product_category_id" value="${product_category_id}">
		<ul class="category_product_list">
			<li>
				<strong class="category_product_title">
				 <c:choose >
			        <c:when test="${product_category_id == 1}">
			            <p>패키지</p>
			        </c:when>
			        <c:when test="${product_category_id == 2}">
			            <p>영화관람권</p>
			        </c:when>
			        <c:otherwise>
			            <p>콤보</p>
			        </c:otherwise>
			    </c:choose>
				</strong>
				<ul class="category_product_inner_list">
				<c:forEach items="${category}" var="row" varStatus="vs">
						<li class="active">
							<a href="/product/detail.do?product_id=${row.product_id}" class="btn_category_product">
								<span class="best_product_img_wrap">
									<img src="${row.product_image}" alt="상품 이미지">
								</span>
								<span class="best_product_text_wrap">
									<span class="best_product_text_name">${row.product_name}</span>
									<span class="best_product_text_price"><fmt:formatNumber value="${row.product_cost}" pattern="#,###"/>원</span>
								</span>
							</a>
						</li>
				</c:forEach>
				</ul>
			</li>
		</ul>
	</form>	
	</div>
   	<!-- category_product_wrap 끝 -->
   </div>
   <!-- contents 끝 -->
<%@ include file="../footer.jsp" %>