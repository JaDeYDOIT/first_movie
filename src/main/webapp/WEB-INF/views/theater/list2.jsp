<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<link rel="stylesheet" href="/css/theater.css">


<script>
	$(function () {
		let tabBtn = $(".sel-city");
		let tabCont = $(".theater-place ul li");

		$(".sel-city").click(function () {
			alert('11');
			let target = $(this);
			let index = target.index();
			tabBtn.removeClass('on');
			target.addClass('on');
			tabCont.hide();
			tabCont.eq(index).show();
			console.log(target);
		})//$(".sel-city").click end
	})
</script>

<div id="contents" class="no-padding location-fixed">
	<!--// theater-main -->
	<div class="inner-wrap">
		<h3 class="tit new">전체극장</h3>
	<!-- 극장 리스트 시작 -->
		<div class="theater-box" style="height:80px;">
			<div class="theater-place">
				<ul>
					<li class="on">
						<input type="button"class="sel-city">서울</button>

						<div class="theater-list">
							<ul>
								<li data-brch-no=""><a href="#" title="강남 상세보기">강남</a></li>
								<li data-brch-no=""><a href="#" title="강변 상세보기">강변</a></li>
								<li data-brch-no=""><a href="#" title="건대입구 상세보기">건대입구</a></li>
								<li data-brch-no=""><a href="#" title="구로 상세보기">구로</a></li>
								<li data-brch-no=""><a href="#" title="대학로 상세보기">대학로</a></li>
								<li data-brch-no=""><a href="#" title="동대문 상세보기">동대문</a></li>
								<li data-brch-no=""><a href="#" title="등촌 상세보기">등촌</a></li>
								<li data-brch-no=""><a href="#" title="명동 상세보기">명동</a></li>
							</ul>
						</div>
					</li>
					<li>
						<button type="button" class="sel-city">경기</button>
						<div class="theater-list">
							<ul>
								<li data-brch-no=""><a href="#" title="경기광주 상세보기">경기광주</a></li>
								<li data-brch-no=""><a href="#" title="광교 상세보기">광주</a></li>
								<li data-brch-no=""><a href="#" title="다산 상세보기">다산</a></li>
								<li data-brch-no=""><a href="#" title="범계 상세보기">범계</a></li>
								<li data-brch-no=""><a href="#" title="부천역 상세보기">부천역</a></li>
								<li data-brch-no=""><a href="#" title="안산 상세보기">안산</a></li>
								<li data-brch-no=""><a href="#" title="이천 상세보기">이천</a></li>
								<li data-brch-no=""><a href="#" title="화정 상세보기">화정</a></li>
							</ul>
						</div>
					</li>
					<li>
						<button type="button" class="sel-city">인천</button>
						<div class="theater-list">
							<ul>
								<li data-brch-no=""><a href="#" title="계양 상세보기">계양</a></li>
								<li data-brch-no=""><a href="#" title="남주안 상세보기">남주안</a></li>
								<li data-brch-no=""><a href="#" title="부평 상세보기">부평</a></li>
								<li data-brch-no=""><a href="#" title="연수역 상세보기">연수역</a></li>
								<li data-brch-no=""><a href="#" title="인천논현 상세보기">인천논현</a></li>
								<li data-brch-no=""><a href="#" title="인천연수 상세보기">인천연수</a></li>
								<li data-brch-no=""><a href="#" title="주안역 상세보기">주안</a></li>
								<li data-brch-no=""><a href="#" title="청라 상세보기">청라</a></li>
							</ul>
						</div>
					</li>
					<li>
						<button type="button" class="sel-city">대전/충청/세종</button>
						<div class="theater-list">
							<ul>
								<li data-brch-no=""><a href="#" title="논산 상세보기">논산</a></li>
								<li data-brch-no=""><a href="#" title="당진 상세보기">당진</a></li>
								<li data-brch-no=""><a href="#" title="대전 상세보기">대전</a></li>
								<li data-brch-no=""><a href="#" title="천안시청 상세보기">천안시청</a></li>
								<li data-brch-no=""><a href="#" title="청주(서문) 상세보기">청주(서문)</a></li>
								<li data-brch-no=""><a href="#" title="청주율량 상세보기">청주율량</a></li>
								<li data-brch-no=""><a href="#" title="충북혁신 상세보기">충북혁신</a></li>
								<li data-brch-no=""><a href="#" title="홍성 상세보기">홍성</a></li>
							</ul>
						</div>
					</li>
					<li>
						<button type="button" class="sel-city">부산/대구/경상</button>
						<div class="theater-list">
							<ul>
								<li data-brch-no=""><a href="#" title="동래 상세보기">동래</a></li>
								<li data-brch-no=""><a href="#" title="서면 상세보기">서면</a></li>
								<li data-brch-no=""><a href="#" title="해운대 상세보기">해운대</a></li>
								<li data-brch-no=""><a href="#" title="울산동구 상세보기">울산동구</a></li>
								<li data-brch-no=""><a href="#" title="대구 상세보기">대구</a></li>
								<li data-brch-no=""><a href="#" title="대구죽전 상세보기">대구죽전</a></li>
								<li data-brch-no=""><a href="#" title="마산 상세보기">마산</a></li>
								<li data-brch-no=""><a href="#" title="창원 상세보기">창원</a>
							</ul>
						</div>
					</li>
					<li>
						<button type="button" class="sel-city">광주/전라</button>
						<div class="theater-list">
							<ul>
								<li data-brch-no=""><a href="#" title="광양 상세보기">광양</a></li>
								<li data-brch-no=""><a href="#" title="광주첨단 상세보기">광주첨단</a></li>
								<li data-brch-no=""><a href="#" title="광주터미널 상세보기">광주터미널</a></li>
								<li data-brch-no=""><a href="#" title="나주 상세보기">나주</a></li>
								<li data-brch-no=""><a href="#" title="목포 상세보기">목포</a></li>
								<li data-brch-no=""><a href="#" title="순천 상세보기">순천</a></li>
								<li data-brch-no=""><a href="#" title="여수응천 상세보기">여수응천</a></li>
								<li data-brch-no=""><a href="#" title="정읍 상세보기">정읍</a>
							</ul>
						</div>
					</li>
					<li>
						<button type="button" class="sel-city">강원</button>
						<div class="theater-list">
							<ul>
								<li data-brch-no=""><a href="#" title="남춘천 상세보기">남춘천</a></li>
								<li data-brch-no=""><a href="#" title="속초 상세보기">속초</a></li>
								<li data-brch-no=""><a href="#" title="원주 상세보기">원주</a></li>
								<li data-brch-no=""><a href="#" title="원주혁신 상세보기">원주혁신</a></li>
								<li data-brch-no=""><a href="#" title="춘천석사 상세보기">춘천석사</a></li>
							</ul>
						</div>
					</li>
					<li>
						<button type="button" class="sel-city">제주</button>
						<div class="theater-list">
							<ul>
								<li data-brch-no=""><a href="#" title="제주 상세보기">제주</a></li>
								<li data-brch-no=""><a href="#" title="제주노형 상세보기">제주노형</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>
	<!-- 극장 리스트 끝 -->


	<!-- 극장상영시간표 시작 -->
		<ul class="tab_wrap outer actionmovingbar">
			<li class="active">
			<button type="button" class="tab_tit" style="width: 50%; left: 0%;">
					<span>상영시간표</span>
			</button>
				<div class="tab_con ty5" id="timeTable" style="zoom: 1;">
					<h4 class="hidden">상영시간표</h4>
					<div class="date_select_wrap datetheaterWrap">
						<div class="slide_wrap slide_reserve_date_wide">
							<ul class="owl-carousel owl-loaded owl-drag">
								<div class="owl-stage-outer">
								<div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 941px;">
									<div class="owl-item active" style="width: 67.143px;">
										<li class="item">
										<strong class="month">12월</strong><a href="#none" class="date" title="화면이동">
										<label for="radioDate0">
										<input type="radio" id="radioDate0" name="radioDate1" checked="">
										<strong>19</strong><em>오늘</em></label></a></li>
									</div>
									<div class="owl-item active" style="width: 67.143px;">
										<li class="item">
										<a href="#none" class="date" title="화면이동">
										<label for="radioDate1">
										<input type="radio" id="radioDate1" name="radioDate1">
										<strong>20</strong><em>목</em></label></a></li>
									</div>
									<div class="owl-item active" style="width: 67.143px;">
										<li class="item">
										<a href="#none" class="date" title="화면이동">
										<label for="radioDate2">
										<input type="radio" id="radioDate2" name="radioDate1">
										<strong>21</strong><em>금</em></label></a></li>
									</div>
									<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><a href="#none" class="date"
												title="화면이동"><label for="radioDate3"><input
														type="radio" id="radioDate3" name="radioDate1"><strong>22</strong><em>금</em></label></a></li>
									</div>
									<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><a href="#none" class="date sat"
												title="화면이동"><label for="radioDate4"><input
														type="radio" id="radioDate4" name="radioDate1"><strong>23</strong><em>토</em></label></a></li>
									</div>
										<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><a href="#none" class="date sun"
												title="화면이동"><label for="radioDate5"><input
														type="radio" id="radioDate5" name="radioDate1"><strong>24</strong><em>일</em></label></a></li>
										</div>
										<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><a href="#none" class="date sun"
												title="화면이동"><label for="radioDate6"><input
														type="radio" id="radioDate6" name="radioDate1"><strong>25</strong><em>월</em></label></a></li>
										</div>
										<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><a href="#none" class="date disabled"
												title="화면이동"><label for="radioDate7"><input
														type="radio" id="radioDate7" name="radioDate1"><strong>26</strong><em>화</em></label></a></li>
										</div>
										<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><a href="#none" class="date disabled"
												title="화면이동"><label for="radioDate8"><input
														type="radio" id="radioDate8" name="radioDate1"><strong>27</strong><em>수</em></label></a></li>
										</div>
										<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><a href="#none" class="date disabled"
												title="화면이동"><label for="radioDate9"><input
														type="radio" id="radioDate9" name="radioDate1"><strong>28</strong><em>목</em></label></a></li>
										</div>
										<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><a href="#none" class="date disabled"
												title="화면이동"><label for="radioDate10"><input
														type="radio" id="radioDate10" name="radioDate1"><strong>29</strong><em>금</em></label></a></li>
										</div>
										<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><a href="#none"
												class="date sat disabled" title="화면이동"><label
													for="radioDate11"><input type="radio"
														id="radioDate11" name="radioDate1"><strong>30</strong><em>토</em></label></a></li>
										</div>
										<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><a href="#none"
												class="date sun disabled" title="화면이동"><label
													for="radioDate12"><input type="radio"
														id="radioDate12" name="radioDate1"><strong>31</strong><em>일</em></label></a></li>
										</div>
										<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><strong class="month">1월</strong><a
												href="#none" class="date sun disabled" title="화면이동"><label
													for="radioDate13"><input type="radio"
														id="radioDate13" name="radioDate1"><strong>1</strong><em>월</em></label></a></li>
										</div>
									</div>
								</div>
								<div class="owl-nav disabled">
									<button type="button" role="presentation"
										class="owl-prev disabled">
										<span aria-label="Previous"></span>
									</button>
									<button type="button" role="presentation"
										class="owl-next disabled">
										<span aria-label="Next"></span>
									</button>
								</div>
								<div class="owl-dots disabled"></div>
							</ul>
						</div>
					</div>
					<div
						class="timeScroll mCustomScrollbar _mCS_2 mCS-autoHide mCS_no_scrollbar"
						data-mcs-theme="minimal-dark"
						style="position: relative; overflow: visible;">
						<div id="mCSB_2"
							class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
							style="max-height: none;" tabindex="0">
							<div id="mCSB_2_container"
								class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
								style="position: relative; top: 0; left: 0;" dir="ltr">
								<div class="time_select_wrap ty2 timeSelect">
									<div class="list_tit">
										<p>노량: 죽음의 바다</p>
										<a
											href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=20492"
											class="btn_bdr_more ty2" title="화면이동">더보기</a>
									</div>
									<ul class="list_hall mt20" style="margin-bottom: 5px;">
										<li>4D2D</li>
										<li>수퍼 4D</li>
									</ul>
									<ul class="list_time">
										<li class=""><a role="button" href="#none" title="화면이동"><dl>
													<dt>상영시간</dt>
													<dd class="time">
														<strong>12:30</strong>
														<div class="tooltip">종료 15:12</div>
													</dd>
													<dt>잔여석</dt>
													<dd class="seat">
														<strong>89</strong> / 100
													</dd>
													<dt>상영관</dt>
													<dd class="hall">3관</dd>
												</dl></a></li>
										<li class=""><a role="button" href="#none" title="화면이동"><dl>
													<dt>상영시간</dt>
													<dd class="time">
														<strong>15:30</strong>
														<div class="tooltip">종료 18:12</div>
													</dd>
													<dt>잔여석</dt>
													<dd class="seat">
														<strong>92</strong> / 100
													</dd>
													<dt>상영관</dt>
													<dd class="hall">3관</dd>
												</dl></a></li>
										<li class=""><a role="button" href="#none" title="화면이동"><dl>
													<dt>상영시간</dt>
													<dd class="time">
														<strong>18:30</strong>
														<div class="tooltip">종료 21:12</div>
													</dd>
													<dt>잔여석</dt>
													<dd class="seat">
														<strong>92</strong> / 100
													</dd>
													<dt>상영관</dt>
													<dd class="hall">3관</dd>
												</dl></a></li>
									</ul>
									<ul class="list_hall mt20" style="margin-bottom: 5px;">
										<li>2D</li>
									</ul>
									<ul class="list_time">
										<li class="morning"><a role="button" href="#none"
											title="화면이동"><span class="txt_ntc ic">조조</span>
											<dl>
													<dt>상영시간</dt>
													<dd class="time">
														<strong>10:15</strong>
														<div class="tooltip">종료 12:57</div>
													</dd>
													<dt>잔여석</dt>
													<dd class="seat">
														<strong>132</strong> / 142
													</dd>
													<dt>상영관</dt>
													<dd class="hall">2관</dd>
												</dl></a></li>
										<li class="morning"><a role="button" href="#none"
											title="화면이동"><span class="txt_ntc ic">조조</span>
											<dl>
													<dt>상영시간</dt>
													<dd class="time">
														<strong>11:00</strong>
														<div class="tooltip">종료 13:42</div>
													</dd>
													<dt>잔여석</dt>
													<dd class="seat">
														<strong>323</strong> / 332
													</dd>
													<dt>상영관</dt>
													<dd class="hall">5관</dd>
												</dl></a></li>
										<li class=""><a role="button" href="#none" title="화면이동"><dl>
													<dt>상영시간</dt>
													<dd class="time">
														<strong>13:15</strong>
														<div class="tooltip">종료 15:57</div>
													</dd>
													<dt>잔여석</dt>
													<dd class="seat">
														<strong>141</strong> / 142
													</dd>
													<dt>상영관</dt>
													<dd class="hall">2관</dd>
												</dl></a></li>
										<li class=""><a role="button" href="#none" title="화면이동"><dl>
													<dt>상영시간</dt>
													<dd class="time">
														<strong>14:00</strong>
														<div class="tooltip">종료 16:42</div>
													</dd>
													<dt>잔여석</dt>
													<dd class="seat">
														<strong>259</strong> / 332
													</dd>
													<dt>상영관</dt>
													<dd class="hall">5관</dd>
												</dl></a></li>
										<li class=""><a role="button" href="#none" title="화면이동"><dl>
													<dt>상영시간</dt>
													<dd class="time">
														<strong>16:15</strong>
														<div class="tooltip">종료 18:57</div>
													</dd>
													<dt>잔여석</dt>
													<dd class="seat">
														<strong>140</strong> / 142
													</dd>
													<dt>상영관</dt>
													<dd class="hall">2관</dd>
												</dl></a></li>
										<li class=""><a role="button" href="#none" title="화면이동"><dl>
													<dt>상영시간</dt>
													<dd class="time">
														<strong>17:00</strong>
														<div class="tooltip">종료 19:42</div>
													</dd>
													<dt>잔여석</dt>
													<dd class="seat">
														<strong>322</strong> / 332
													</dd>
													<dt>상영관</dt>
													<dd class="hall">5관</dd>
												</dl></a></li>
										<li class=""><a role="button" href="#none" title="화면이동"><dl>
													<dt>상영시간</dt>
													<dd class="time">
														<strong>17:45</strong>
														<div class="tooltip">종료 20:27</div>
													</dd>
													<dt>잔여석</dt>
													<dd class="seat">
														<strong>182</strong> / 184
													</dd>
													<dt>상영관</dt>
													<dd class="hall">6관</dd>
												</dl></a></li>
										<li class=""><a role="button" href="#none" title="화면이동"><dl>
													<dt>상영시간</dt>
													<dd class="time">
														<strong>19:15</strong>
														<div class="tooltip">종료 21:57</div>
													</dd>
													<dt>잔여석</dt>
													<dd class="seat">
														<strong>137</strong> / 142
													</dd>
													<dt>상영관</dt>
													<dd class="hall">2관</dd>
												</dl></a></li>
										<li class=""><a role="button" href="#none" title="화면이동"><dl>
													<dt>상영시간</dt>
													<dd class="time">
														<strong>20:00</strong>
														<div class="tooltip">종료 22:42</div>
													</dd>
													<dt>잔여석</dt>
													<dd class="seat">
														<strong>301</strong> / 332
													</dd>
													<dt>상영관</dt>
													<dd class="hall">5관</dd>
												</dl></a></li>
										<li class=""><a role="button" href="#none" title="화면이동"><dl>
													<dt>상영시간</dt>
													<dd class="time">
														<strong>21:00</strong>
														<div class="tooltip">종료 23:42</div>
													</dd>
													<dt>잔여석</dt>
													<dd class="seat">
														<strong>182</strong> / 184
													</dd>
													<dt>상영관</dt>
													<dd class="hall">6관</dd>
												</dl></a></li>
									</ul>
								</div>
								<div class="time_select_wrap ty2 timeSelect">
									<div class="list_tit">
										<p>서울의 봄</p>
										<a
											href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=20443"
											class="btn_bdr_more ty2" title="화면이동">더보기</a>
									</div>
									<ul class="list_hall mt20" style="margin-bottom: 5px;">
										<li>2D</li>
									</ul>
									<ul class="list_time">
										<li class="morning"><a role="button" href="#none"
											title="화면이동"><span class="txt_ntc ic">조조</span>
											<dl>
													<dt>상영시간</dt>
													<dd class="time">
														<strong>10:00</strong>
														<div class="tooltip">종료 12:31</div>
													</dd>
													<dt>잔여석</dt>
													<dd class="seat">
														<strong>150</strong> / 164
													</dd>
													<dt>상영관</dt>
													<dd class="hall">1관</dd>
												</dl></a></li>
										<li class=""><a role="button" href="#none" title="화면이동"><dl>
													<dt>상영시간</dt>
													<dd class="time">
														<strong>12:05</strong>
														<div class="tooltip">종료 14:36</div>
													</dd>
													<dt>잔여석</dt>
													<dd class="seat">
														<strong>130</strong> / 132
													</dd>
													<dt>상영관</dt>
													<dd class="hall">4관</dd>
												</dl></a></li>
										<li class=""><a role="button" href="#none" title="화면이동"><dl>
													<dt>상영시간</dt>
													<dd class="time">
														<strong>18:00</strong>
														<div class="tooltip">종료 20:31</div>
													</dd>
													<dt>잔여석</dt>
													<dd class="seat">
														<strong>156</strong> / 164
													</dd>
													<dt>상영관</dt>
													<dd class="hall">1관</dd>
												</dl></a></li>
										<li class=""><a role="button" href="#none" title="화면이동"><dl>
													<dt>상영시간</dt>
													<dd class="time">
														<strong>20:50</strong>
														<div class="tooltip">종료 23:21</div>
													</dd>
													<dt>잔여석</dt>
													<dd class="seat">
														<strong>154</strong> / 164
													</dd>
													<dt>상영관</dt>
													<dd class="hall">1관</dd>
												</dl></a></li>
									</ul>
								</div>
							</div>
						</div>
						<div id="mCSB_2_scrollbar_vertical"
							class="mCSB_scrollTools mCSB_2_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
							style="display: none;">
							<div class="mCSB_draggerContainer">
								<div id="mCSB_2_dragger_vertical" class="mCSB_dragger"
									style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
									<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
								</div>
								<div class="mCSB_draggerRail"></div>
							</div>
						</div>
					</div>
				</div></li>
			<li><button type="button" class="tab_tit"
					style="width: 50%; left: 50%;">
					<span>요금안내</span>
				</button>
				<div class="tab_con ty2">
					<ul class="tab_wrap outer lft sml">
						<li class="active"><button type="button" class="tab_tit"
								style="left: 0px; width: 48px;">
							</button>
							<div class="tab_con ty2">
								<div class="th_price_wrap">
									<div>
										<div class="th_price_tit">
											<p>단, 공휴일은 주말요금 반영</p>
										</div>
										<table class="th_price_table"
											summary="2D 일반석 영화관 요금에 대한 내용입니다.">
											<caption>2D 영화관 요금</caption>
											<colgroup>
												<col style="width: 5%;">
												<col style="width: 5%;">
												<col style="width: 5%;">
												<col style="width: 5%;">
												<col style="width: auto;">
												<col style="width: 5%;">
												<col style="width: 5%;">
												<col style="width: 5%;">
												<col style="width: 5%;">
												<col style="width: auto;">
											</colgroup>
											<thead>
												<tr>
													<th colspan="5">주중<span>(월~목)</span></th>
													<th colspan="5">주말<span>(금~일)</span></th>
												</tr>
											</thead>
											<tbody>
												<tr class="price_tabletoptitle">
													<th class="txtleft">구분</th>
													<th>성인</th>
													<th>청소년</th>
													<th>경로</th>
													<th>&nbsp;</th>
													<th class="txtleft">구분</th>
													<th>성인</th>
													<th>청소년</th>
													<th>경로</th>
													<th>&nbsp;</th>
												</tr>
												<tr>
													<th>일반</th>
													<td>14,000</td>
													<td>11,000</td>
													<td>7,000</td>
													<td>&nbsp;</td>
													<th>일반</th>
													<td>15,000</td>
													<td>11,000</td>
													<td>7,000</td>
													<td>&nbsp;</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div></li>
					</ul>
				</div></li>
			<li class="wrap_nav_underline"><span class="nav_underline"></span></li>
		</ul>
	</div>
	<!--// theater-main -->
</div>
<%@ include file="../footer.jsp"%>