<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<link rel="stylesheet" href="/css/default.css">
<link rel="stylesheet" href="/css/owl.css">
<link rel="stylesheet" href="/css/jquery.mCustomScrollbar.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/content.css">
<link rel="stylesheet" href="/css/content_lc21new.css">
<link rel="stylesheet" href="/css/dev.css">
<script src="/js/ticketing_personseat.js"></script>

<script>
	// 행과 열의 개수 설정
	var numRows = "${screenMovieInfo.screen_line}"; // 예시로 5개의 행 사용
	var numCols = "${screenMovieInfo.screen_row}";
</script>
<br>
<div class="wrap_reserve">
	<h2 class="hidden">예매하기</h2>
	<div id="PersonSeatHeader" class="section_step_tit">
		<ul>
			<li class="step01 prev"><a href="/ticketing/schedule"> <strong
					class="tit"> <span>01</span> <br>상영시간
				</strong>
			</a></li>
			<li class="step02 active"><a href="#reserveStep02"> <strong
					class="tit"> <span>02</span> <br>인원/좌석
				</strong>
			</a></li>
			<li class="step03"><a style="cursor: default;"> <strong
					class="tit"> <span>03</span> <br>결제
				</strong>
			</a></li>
			<li><a style="cursor: default;"> <strong class="tit">
						<span>04</span> <br>결제완료
				</strong>
			</a></li>
		</ul>
	</div>

	<div id="reserveStep01" class="section_step_con step01">
		<h3 class="hidden">상영시간</h3>
	</div>

	<div id="reserveStep02" class="section_step_con step02 active">
		<h3 class="hidden">인원/좌석</h3>

		<div class="article article_seat">
			<div class="group_top">
				<h4 class="tit">인원/좌석 선택</h4>
				<p class="txt" id="txtPeopleMaxcount">인원은 최대 8명까지 선택 가능합니다.</p>
			</div>
			<div class="inner">

				<div id="PersonSeatCount">
					<div class="select_num_people_wrap">
						<h5 class="hidden">인원선택</h5>
						<div class="movie_infor">
							<h6 class="hidden">예매 정보</h6>

							<span class="thm"> <!-- 영화이미지 --> <img
								src="${screenMovieInfo.movie_image}">
							</span>
							<div class="group_infor">
								<div class="bx_tit">
									<c:choose>
										<c:when
											test="${screenMovieInfo.movie_audience_rating eq '전체'}">
											<span class="ic_grade gr_all">전체 관람가</span>
										</c:when>
										<c:when
											test="${screenMovieInfo.movie_audience_rating eq '12세'}">
											<span class="ic_grade gr_12">12세 관람가</span>
										</c:when>
										<c:when
											test="${screenMovieInfo.movie_audience_rating eq '15세'}">
											<span class="ic_grade gr_15">15세 관람가</span>
										</c:when>
										<c:when
											test="${screenMovieInfo.movie_audience_rating eq '18세'}">
											<span class="ic_grade gr_18">18세 관람가</span>
										</c:when>
									</c:choose>
									<strong>${screenMovieInfo.movie_name}</strong>
								</div>
								<dl>
									<dt>일시</dt>
									<dd class="sub_info1">${screenMovieInfo.formatted_date} (${screenMovieInfo.korean_day})
										<span class="time">${screenMovieInfo.formatted_time} ~
											${screenMovieInfo.result_time}</span>
									</dd>
									<dt>영화관</dt>
									<dd class="sub_info1">${screenMovieInfo.branch_name}·
										${screenMovieInfo.screen_location}</dd>
								</dl>
							</div>
						</div>

						<div class="count_people">
							<h6 class="hidden">인원선택</h6>
							<ul>
								<li id="person_10" data-code="10" data-peple="성인" data-count="0"
									><strong class="tit">성인</strong> <span
									class="bx_num">
										<button class="btn_mins" id="Minus|10">감소</button>
										<div class="txt_num">0</div>
										<button class="btn_plus" id="Plus|10">증가</button>
								</span></li>
								<li id="person_20" data-code="20" data-peple="청소년"
									data-count="0"><strong class="tit">청소년</strong>
									<span class="bx_num">
										<button class="btn_mins" id="Minus|20">감소</button>
										<div class="txt_num">0</div>
										<button class="btn_plus" id="Plus|20">증가</button>
								</span></li>
								<li id="person_12" data-code="12" data-peple="경로" data-count="0"
									><strong class="tit">경로</strong> <span
									class="bx_num">
										<button class="btn_mins" id="Minus|12">감소</button>
										<div class="txt_num">0</div>
										<button class="btn_plus" id="Plus|12">증가</button>
								</span></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="select_seat_wrap">
					<h5 class="hidden">좌석선택</h5>
					<div class="top_txt_info">
						<p id="ticketMessageInfo">인원을 선택하세요.</p>
					</div>
					<div id="PersonSeatSelect"></div>

					<div id="container" class="seat_wrap">
						<article class="mseat_wrap">
							<div class="mseat_inner">

								<div class="mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar"
									data-mcs-theme="minimal-dark"
									style="position: relative; overflow: visible; height: 470px;">
									<div id="mCSB_1"
										class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
										style="max-height: none;" tabindex="0">
										<div id="mCSB_1_container"
											class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
											style="position: relative; top: 0; left: 0;" dir="ltr">
											<div class="meat_door_pos" id="scrollWrap">

												<span class="title_screen1">SCREEN</span>

												<div class="showMap">
													<div class="floor_bx seatSet1">
														<span class="floor_tit" style="display: none;">10F</span>
														<div class="seat_area">
															<!-- HTML -->
															<div class="seat-container">
																  <div id="myContainer">
															        <!-- 여기에 좌석이 생성됩니다. -->
															      </div>
															</div>
															<div class="seat_btm_box">
																<div class="seat_type_box">
																	<div class="top_info">
																		<span class="seat_type1">선택좌석</span> <span
																			class="seat_type2">선택가능</span> <span
																			class="seat_type3">예매완료</span> <span
																			class="seat_type4">선택불가</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div id="mCSB_1_scrollbar_vertical"
													class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
													style="display: none;">
													<div class="mCSB_draggerContainer">
														<div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
															style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
															<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
														</div>
														<div class="mCSB_draggerRail"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</article>
					</div>
				</div>
				<div id="PersonSeatSummery">
					<div class="select_seat_result">
						<div class="group_lft">
							<dl class="total_price">
								<dt>총 합계</dt>
								<dd>
									<strong class="PersonSeatSummeryTotalPrice">0</strong>&nbsp;원
								</dd>
							</dl>
						</div>
						<form id="paymentForm">
							<div class="group_rgt">
								<a class="btn_col1" id="link_rpay" onclick="link_check()">결제하기</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="reserveStep03" class="section_step_con step03 ">
		<h3 class="hidden">결제</h3>
	</div>

	<div id="reserveStep04" class="section_step_con step04 ">
		<h3 class="hidden">결제완료</h3>
	</div>
</div>
<br>


<%@ include file="../footer.jsp"%>