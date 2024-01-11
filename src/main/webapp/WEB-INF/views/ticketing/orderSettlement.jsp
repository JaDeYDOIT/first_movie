<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매 - FirstMovie</title>
<link href="../css/ticketing/common.css" rel="stylesheet"
	type="text/css">
<link href="../css/ticketing/content.css" rel="stylesheet"
	type="text/css">
<link href="../css/ticketing/content_lc2.css" rel="stylesheet"
	type="text/css">
<link href="../css/ticketing/default.css" rel="stylesheet"
	type="text/css">
<link href="../css/ticketing/owl.css" rel="stylesheet" type="text/css">
<link href="../css/ticketing/dev.css" rel="stylesheet" type="text/css">
<link href="../css/ticketing/my_style.css" rel="stylesheet"
	type="text/css">
<link href="../css/ticketing/jquery.mCustomScrollbar.css"
	rel="stylesheet" type="text/css">
<script src="/js/jquery-3.7.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="/js/ticketing_orderSettlement.js"></script>
</head>

<body>
	<div class="wrap_reserve" style="margin: 1% auto;">
		<h2 class="hidden">예매하기</h2>
		<div class="section_step_tit">
			<ul>
				<li class="step01 prev"><a href="/ticketing/schedule"><strong
						class="tit"><span>01</span><br>상영시간</strong> </a></li>
				<li class="step02 prev"><a href="javascript:window.history.back();"><strong
						class="tit"><span>02</span><br>인원/좌석</strong> </a></li>
				<li class="step03 active"><a href="#"><strong class="tit"><span>03</span><br>결제</strong>
				</a></li>
				<li><a href="#" style="cursor: default;"><strong
						class="tit"><span>04</span><br>결제완료</strong></a></li>
			</ul>
		</div>
		<div id="reserveStep01" class="section_step_con step01 ">
			<h3 class="hidden">상영시간</h3>
		</div>
		<div id="reserveStep02" class="section_step_con step02 ">
			<h3 class="hidden">인원/좌석</h3>
		</div>
		<div id="reserveStep03" class="section_step_con step03 active">
			<h3 class="hidden">결제</h3>
			<div class="article article_sum_infor">
				<div class="group_top">
					<h4 class="tit">예매정보</h4>
				</div>
				<div class="inner">
					<div class="movie_infor new2020">
						<span class="thm"><img
							src="https://cf.lottecinema.co.kr//Media/MovieFile/MovieImg/202312/20492_104_1.jpg"></span><strong
							class="tit"><span class="ic_grade gr_18"></span>&nbsp;노량:
							죽음의 바다(Super 4D2D)</strong>
						<dl class="dlist_infor">
							<dt>일시</dt>
							<dd>
								<strong>2023-12-20 (수) 12:30 ~ 15:12</strong>
							</dd>
							<dt>영화관</dt>
							<dd>가산디지털 3관, 수퍼 4D - 2D</dd>
							<dt>인원</dt>
							<dd>성인1</dd>
						</dl>
					</div>
					<div class="seat_infor">
						<dl class="dlist_infor">
							<dt>좌석</dt>
							<dd>
								<strong>A4</strong>
							</dd>
						</dl>
					</div>
				</div>
			</div>
			<div class="article article_pay_method">
				<div class="group_top">
					<h4 class="tit">결제수단</h4>
				</div>
				<div class="inner">
					<div class="group_discount" style="display: block;">
						<h3 class="tit_payment">쿠폰</h3>
						<div class="wrap_coupon">
							<button class="btn_coupon">쿠폰 사용하기</button>
							<div class="wrap_selected_coupon" style="display: none;">
								<button type="button" class="btn_close" onclick="cancelCoupon()">팝업
									닫기</button>
								<div class="coupon_name">(쿠폰명)</div>
								<dl>
									<dd class="period">(사용기간)</dd>
								</dl>
							</div>
						</div>
						<h3 class="tit_payment">포인트</h3>
						<div class="remain_point">잔여 포인트 : 1000</div>
						<input class="point_amount" type="number" placeholder="사용할 포인트 입력">
					</div>
					<div class="group_payment">
						<h5 class="tit_payment">최종 결제수단</h5>
						<div class="bx_cate">
							<ul class="list_pay_item cate6">
								<li><button type="button" class="cate1 pay_card">신용카드</button></li>
								<li><button type="button" class="cate3 pay_simple">간편결제</button></li>
								<li><button type="button" class="cate5 ty2">내통장결제</button></li>
								<li><button type="button" class="cate4 ty2">휴대폰</button></li>
							</ul>
						</div>
						<div class="pay_method_list">
							<div class="article_pay_card">
								<ul class="list_pay_item cate5 itemcenter ">
									<li><button class="">
											<span class="thm"><img
												src="/images/ticketing/card_logo_lotte.png" alt="롯데카드"
												class="mCS_img_loaded"></span><span class="tit">롯데카드</span>
										</button></li>
									<li><button class="">
											<span class="thm"><img
												src="/images/ticketing/card_logo_kb.png" alt="국민카드"
												class="mCS_img_loaded"></span><span class="tit">국민카드</span>
										</button></li>
									<li><button class="">
											<span class="thm"><img
												src="/images/ticketing/card_logo_kakao.png" alt="카카오뱅크"
												class="mCS_img_loaded"></span><span class="tit">카카오뱅크</span>
										</button></li>
									<li><button class="">
											<span class="thm"><img
												src="/images/ticketing/card_logo_shinhan.png" alt="신한카드"
												class="mCS_img_loaded"></span><span class="tit">신한카드</span>
										</button></li>
									<li><button class="">
											<span class="thm"><img
												src="/images/ticketing/card_logo_samsung_20230112.png"
												alt="삼성카드" class="mCS_img_loaded"></span><span class="tit">삼성카드</span>
										</button></li>
									<li><button class="">
											<span class="thm"><img
												src="/images/ticketing/card_logo_hyundai.png" alt="현대카드"
												class="mCS_img_loaded"></span><span class="tit">현대카드</span>
										</button></li>
									<li><button class="">
											<span class="thm"><img
												src="/images/ticketing/card_logo_hana.png" alt="하나카드"
												class="mCS_img_loaded"></span><span class="tit">하나카드</span>
										</button></li>
									<li><button class="">
											<span class="thm"><img
												src="/images/ticketing/card_logo_keb.png" alt="외환카드"
												class="mCS_img_loaded"></span><span class="tit">외환카드</span>
										</button></li>
									<li><button class="">
											<span class="thm"><img
												src="/images/ticketing/card_logo_woori.png" alt="우리카드"
												class="mCS_img_loaded"></span><span class="tit">우리카드</span>
										</button></li>
									<li><button class="">
											<span class="thm"><img
												src="/images/ticketing/card_logo_bc.png" alt="BC카드"
												class="mCS_img_loaded"></span><span class="tit">BC카드</span>
										</button></li>
									<li><button class="">
											<span class="thm"><img
												src="/images/ticketing/card_logo_citi.png" alt="씨티카드"
												class="mCS_img_loaded"></span><span class="tit">씨티카드</span>
										</button></li>
									<li><button class="">
											<span class="thm"><img
												src="/images/ticketing/card_logo_nh.png" alt="NH카드"
												class="mCS_img_loaded"></span><span class="tit">NH카드</span>
										</button></li>
									<li><button class="">
											<span class="thm"><img
												src="/images/ticketing/card_logo_jb.png" alt="전북카드"
												class="mCS_img_loaded"></span><span class="tit">전북카드</span>
										</button></li>
									<li><button class="">
											<span class="thm"><img
												src="/images/ticketing/card_logo_kj.png" alt="광주카드"
												class="mCS_img_loaded"></span><span class="tit">광주카드</span>
										</button></li>
								</ul>
							</div>
							<div class="article_pay_simple">
								<ul class="list_pay_item cate3">
									<li><button type="button" class="pay_simple_btn_box">
											<span class="pay_simple_thm"><img
												src="/images/ticketing/payment_simple_kakao.png" alt="카카오페이"></span><span
												class="pay_simple_tit">카카오페이</span>
										</button></li>
									<li><button type="button" class="pay_simple_btn_box">
											<span class="pay_simple_thm"><img
												src="/images/ticketing/payment_simple_payco.png" alt="페이코"></span><span
												class="pay_simple_tit">페이코</span>
										</button></li>
									<li><button type="button" class="pay_simple_btn_box">
											<span class="pay_simple_thm"><img
												src="/images/ticketing/payment_simple_npay1.png" alt="네이버페이"></span><span
												class="pay_simple_tit">네이버페이</span>
										</button></li>
									<li><button type="button" class="pay_simple_btn_box">
											<span class="pay_simple_thm"><img
												src="/images/ticketing/payment_simple_toss_221012.png"
												alt="토스"></span><span class="pay_simple_tit">토스</span>
										</button></li>
									<li><button type="button" class="pay_simple_btn_box">
											<span class="pay_simple_thm"><img
												src="/images/ticketing/payment_simple_tbee.png"
												alt="모바일캐시비/티머니"></span><span class="pay_simple_tit">모바일캐시비/티머니</span>
										</button></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="article article_payment">
				<div class="group_top">
					<h4 class="tit">결제하기</h4>
				</div>
				<div class="inner">
					<div class="select_item_wrap">
						<div class="group_item provision active">
							<div class="bx_item">
								<input type="checkbox" id="chkSavingTerm"><label
									for="chkSavingTerm" class="ty2">결제대행서비스 약관 동의</label>
							</div>
							<div class="group_side">
								<div class="bx_provision">
									<ul class="provision_list">
										<li><input type="checkbox" id="chkProvisionTerm01"><label
											for="chkProvisionTerm01" class="ty2">전자금융거래 이용약관 동의</label>
											<button class="btn_txt_more ty2">약관보기</button></li>
										<li><input type="checkbox" id="chkProvisionTerm02"><label
											for="chkProvisionTerm02" class="ty2">고유식별정보 수집 및 이용안내</label>
											<button class="btn_txt_more ty2">약관보기</button></li>
										<li><input type="checkbox" id="chkProvisionTerm03"><label
											for="chkProvisionTerm03" class="ty2">개인정보 수집 및 이용동의</label>
											<button class="btn_txt_more ty2">약관보기</button></li>
										<li><input type="checkbox" id="chkProvisionTerm04"><label
											for="chkProvisionTerm04" class="ty2">개인정보 제3자 제공/위탁동의</label>
											<button class="btn_txt_more ty2">약관보기</button></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="payment_sum_wrap">
						<dl>
							<div class="payment_disabled">결제를 진행할 수 없습니다.</div>
						</dl>
						<dl>
							<dt>상품금액</dt>
							<dd class="price">
								<strong>18,000</strong>원
							</dd>
						</dl>
						<dl>
							<dt>할인금액</dt>
							<dd class="discount_amount">
								-<strong>0</strong>원
							</dd>
						</dl>
						<dl>
							<dt>결제금액</dt>
							<dd class="total_price">
								총<strong>18,000</strong>원
							</dd>
						</dl>
						<a href="/ticketing/paysuccess" class="btn_col1 btn_confirm pay_button disabled">결제하기</a>
					</div>
				</div>
			</div>
			<div id="layerDiscountCoupon"
				class="layer_wrap layer_discount_Coupon active">
				<strong class="hidden">레이어 팝업 시작</strong>
				<div class="layer_header">
					<h1 class="tit" id="popup_discount_title_A300">쿠폰</h1>
					<button type="button" class="btn_close">팝업 닫기</button>
				</div>
				<div class="layer_contents">
					<div class="fieldset_wrap" id="popup_discount_content_A300">
						<div class="fieldset_box">
							<div class="tit_area">
								<strong>사용 가능한 쿠폰<em id="counpon_rest_count">(${fn:length(userHavingCouponList)})
								</em></strong>
							</div>
							<c:choose>
								<c:when test="${empty userHavingCouponList}">
									<div class="nodata" style="display: block;">사용 가능한 할인권이
										없습니다.</div>
								</c:when>
								<c:otherwise>
									<div class="pay_coupon_list_wrap mCustomScrollbar">
										<ul class="list_pay_coupon">
											<c:forEach items="${userHavingCouponList}"
												var="userHavingCoupon" varStatus="loop">
												<li class="coupon"
													data-couponid="${userHavingCoupon.coupon_id}"><input
													type="checkbox" id="chkpay_coupon${loop.count}"><label
													for="chkpay_coupon${loop.count}" class="ty2">
														<div class="coupon_name">관람권</div>
														<dl>
															<dd class="period">
																<fmt:formatDate
																	value="${userHavingCoupon.coupon_create_date}"
																	pattern="yyyy-MM-dd" />
																~
																<fmt:formatDate
																	value="${userHavingCoupon.coupon_expiration_date}"
																	pattern="yyyy-MM-dd" />
															</dd>
														</dl>
												</label></li>
											</c:forEach>
										</ul>
									</div>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
					<div class="btn_btm_wrap ty2">
						<a href="#" role="button" class="cancle btn_col3 ty6">취소</a><a
							href="#" role="button" class="submit btn_col2 ty6">등록</a>
					</div>
				</div>
			</div>
		</div>
		<div class="dim ty2" style="position: fixed;"></div>
	</div>
	<div id="reserveStep04" class="section_step_con step04 ">
		<h3 class="hidden">결제완료</h3>
	</div>
</body>
</html>
<%@ include file="../footer.jsp"%>