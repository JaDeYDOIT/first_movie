<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<link rel="stylesheet" href="/css/theater3.css">

<div id="contents" class="no-padding location-fixed">
	<!--// theater-main -->
	<div class="inner-wrap">
		<h3 class="tit new">전체극장</h3>
	<!-- 극장 리스트 시작 -->
		<div class="theater-box" style="height:80px;">
			<div class="theater-place">
				<ul>
					<li class="on">
						<button type="button" class="sel-city">서울</button>
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
	<!-- 극장상영 리스트 시작 -->
		<div class="tab-cont-wrap">
			<div id="tab02" class="tab-cont on">
				<a href="" class="ir">상영시간표 탭 화면 입니다.</a>
				<div class="movie-greeting" style="display: none;"></div>
				<div class="time-schedule mb30">
					<div class="wrap">
						<button type="button" title="이전 날짜 보기" class="btn-pre"
							disabled="true">
							<i class="iconset ico-cld-pre"></i> <em>이전</em>
						</button>
						<div class="date-list">
							<div class="year-area">
								<div class="year" style="left: 30px; z-index: 1; opacity: 1;">2023.12</div>
								<div class="year" style="left: 940px; z-index: 1; opacity: 1;">2024.01</div>
							</div>
							<div class="date-area">
								<div class="wrap"
									style="position: relative; width: 2100px; border: none; left: -70px;">
									<button class="disabled" type="button" date-data="2023.12.18"
										month="11" tabindex="-1">
										<span class="ir">2023년 12월</span><em
											style="pointer-events: none;">18<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">월</span><span
											class="day-en" style="pointer-events: none; display: none">Mon</span>
									</button>
									<button class="on" type="button" date-data="2023.12.19"
										month="11">
										<span class="ir">2023년 12월</span><em
											style="pointer-events: none;">19<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">오늘</span><span
											class="day-en" style="pointer-events: none; display: none">Tue</span>
									</button>
									<button class="" type="button" date-data="2023.12.20"
										month="11">
										<span class="ir">2023년 12월</span><em
											style="pointer-events: none;">20<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">내일</span><span
											class="day-en" style="pointer-events: none; display: none">Wed</span>
									</button>
									<button class="" type="button" date-data="2023.12.21"
										month="11">
										<span class="ir">2023년 12월</span><em
											style="pointer-events: none;">21<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">목</span><span
											class="day-en" style="pointer-events: none; display: none">Thu</span>
									</button>
									<button class="" type="button" date-data="2023.12.22"
										month="11">
										<span class="ir">2023년 12월</span><em
											style="pointer-events: none;">22<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">금</span><span
											class="day-en" style="pointer-events: none; display: none">Fri</span>
									</button>
									<button class="sat" type="button" date-data="2023.12.23"
										month="11">
										<span class="ir">2023년 12월</span><em
											style="pointer-events: none;">23<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">토</span><span
											class="day-en" style="pointer-events: none; display: none">Sat</span>
									</button>
									<button class="disabled holi" type="button"
										date-data="2023.12.24" month="11">
										<span class="ir">2023년 12월</span><em
											style="pointer-events: none;">24<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">일</span><span
											class="day-en" style="pointer-events: none; display: none">Sun</span>
									</button>
									<button class="disabled" type="button" date-data="2023.12.25"
										month="11">
										<span class="ir">2023년 12월</span><em
											style="pointer-events: none;">25<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">월</span><span
											class="day-en" style="pointer-events: none; display: none">Mon</span>
									</button>
									<button class="disabled" type="button" date-data="2023.12.26"
										month="11">
										<span class="ir">2023년 12월</span><em
											style="pointer-events: none;">26<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">화</span><span
											class="day-en" style="pointer-events: none; display: none">Tue</span>
									</button>
									<button class="disabled" type="button" date-data="2023.12.27"
										month="11">
										<span class="ir">2023년 12월</span><em
											style="pointer-events: none;">27<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">수</span><span
											class="day-en" style="pointer-events: none; display: none">Wed</span>
									</button>
									<button class="disabled" type="button" date-data="2023.12.28"
										month="11">
										<span class="ir">2023년 12월</span><em
											style="pointer-events: none;">28<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">목</span><span
											class="day-en" style="pointer-events: none; display: none">Thu</span>
									</button>
									<button class="disabled" type="button" date-data="2023.12.29"
										month="11">
										<span class="ir">2023년 12월</span><em
											style="pointer-events: none;">29<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">금</span><span
											class="day-en" style="pointer-events: none; display: none">Fri</span>
									</button>
									<button class="disabled sat" type="button"
										date-data="2023.12.30" month="11">
										<span class="ir">2023년 12월</span><em
											style="pointer-events: none;">30<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">토</span><span
											class="day-en" style="pointer-events: none; display: none">Sat</span>
									</button>
									<button class="disabled holi" type="button"
										date-data="2023.12.31" month="11">
										<span class="ir">2023년 12월</span><em
											style="pointer-events: none;">31<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">일</span><span
											class="day-en" style="pointer-events: none; display: none">Sun</span>
									</button>
									<button class="" type="button" date-data="2024.01.01" month="0">
										<span class="ir">2024년 1월</span><em
											style="pointer-events: none;">1<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">월</span><span
											class="day-en" style="pointer-events: none; display: none">Mon</span>
									</button>
									<button class="disabled" type="button" date-data="2024.01.02"
										month="0" tabindex="-1">
										<span class="ir">2024년 1월</span><em
											style="pointer-events: none;">2<span
											style="pointer-events: none;" class="ir">일</span></em><span
											class="day-kr"
											style="pointer-events: none; display: inline-block">화</span><span
											class="day-en" style="pointer-events: none; display: none">Tue</span>
									</button>
								</div>
							</div>
						</div>
						<button type="button" title="다음 날짜 보기" class="btn-next"
							disabled="true">
							<i class="iconset ico-cld-next"></i> <em>다음</em>
						</button>
						<div class="bg-line">
							<input type="hidden" name="datePicker" id="dp1702970758799"
								class="hasDatepicker" value="2023.12.19">
							<button type="button" class="btn-calendar-large" title="달력보기">
								달력보기</button>
						</div>
					</div>
				</div>
				<div class="movie-option mb20">
					<div class="option">
						<ul>
							<li><i class="iconset ico-stage" title="무대인사"></i>무대인사</li>
							<li><i class="iconset ico-user" title="회원시사"></i>회원시사</li>
							<li><i class="iconset ico-open" title="오픈시사"></i>오픈시사</li>
							<li><i class="iconset ico-goods" title="굿즈패키지"></i>굿즈패키지</li>
							<li><i class="iconset ico-singalong" title="싱어롱"></i>싱어롱</li>
							<li><i class="iconset ico-gv" title="GV"></i>GV</li>
							<li><i class="iconset ico-sun" title="조조"></i>조조</li>
							<li><i class="iconset ico-brunch" title="브런치"></i>브런치</li>
							<li><i class="iconset ico-moon" title="심야"></i>심야</li>
						</ul>
					</div>
					<div class="rateing-lavel">
						<a href="" class="" title="관람등급안내">관람등급안내</a>
					</div>
				</div>
				<div class="reserve theater-list-box">
					<div class="tab-block tab-layer mb30" style="display: none;">
						<ul></ul>
					</div>
					<div class="theater-list">
						<div class="theater-tit">
							<p class="movie-grade age-12"></p>
							<p>
								<a href="/movie-detail?rpstMovieNo=23081200"
									title="[씹뜯맛] 서울의 봄 상세보기">[씹뜯맛] 서울의 봄</a>
							</p>
							<p class="infomation">
								<span>상영중</span>/상영시간 141분
							</p>
						</div>
						<div class="theater-type-box">
							<div class="theater-type">
								<p class="theater-name">4관</p>
								<p class="chair">총 103석</p>
							</div>
							<div class="theater-time">
								<div class="theater-type-area">2D</div>
								<div class="theater-time-box">
									<table class="time-list-table">
										<caption>상영시간을 보여주는 표 입니다.</caption>
										<colgroup>
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
										</colgroup>
										<tbody>
											<tr>
												<td class="" brch-no="1372" play-schdl-no="2312191372107"
													rpst-movie-no="23081200" theab-no="04" play-de="20231219"
													play-seq="3" netfnl-adopt-at="N">
													<div class="td-ab">
														<div class="txt-center">
															<a href="" title="영화예매하기">
																<div class="ico-box">
																	<i class="iconset ico-off"></i>
																</div>
																<p class="time">16:50</p>
																<p class="chair">87석</p>
																<div class="play-time">
																	<p>16:50~19:21</p>
																	<p>3회차</p>
																</div>
															</a>
														</div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="theater-list">
						<div class="theater-tit">
							<p class="movie-grade age-12"></p>
							<p>
								<a href="/movie-detail?rpstMovieNo=23081200" title="서울의 봄 상세보기">서울의
									봄</a>
							</p>
							<p class="infomation">
								<span>상영중</span>/상영시간 141분
							</p>
						</div>
						<div class="theater-type-box">
							<div class="theater-type">
								<p class="theater-name">1관</p>
								<p class="chair">총 232석</p>
							</div>
							<div class="theater-time">
								<div class="theater-type-area">2D</div>
								<div class="theater-time-box">
									<table class="time-list-table">
										<caption>상영시간을 보여주는 표 입니다.</caption>
										<colgroup>
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
										</colgroup>
										<tbody>
											<tr>
												<td class="" brch-no="1372" play-schdl-no="2312191372091"
													rpst-movie-no="23081200" theab-no="01" play-de="20231219"
													play-seq="4" netfnl-adopt-at="N">
													<div class="td-ab">
														<div class="txt-center">
															<a href="" title="영화예매하기">
																<div class="ico-box">
																	<i class="iconset ico-off"></i>
																</div>
																<p class="time">18:20</p>
																<p class="chair">224석</p>
																<div class="play-time">
																	<p>18:20~20:51</p>
																	<p>4회차</p>
																</div>
															</a>
														</div>
													</div>
												</td>
												<td class="" brch-no="1372" play-schdl-no="2312191372092"
													rpst-movie-no="23081200" theab-no="01" play-de="20231219"
													play-seq="5" netfnl-adopt-at="N">
													<div class="td-ab">
														<div class="txt-center">
															<a href="" title="영화예매하기">
																<div class="ico-box">
																	<i class="iconset ico-off"></i>
																</div>
																<p class="time">21:10</p>
																<p class="chair">229석</p>
																<div class="play-time">
																	<p>21:10~23:41</p>
																	<p>5회차</p>
																</div>
															</a>
														</div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<div class="theater-type-box">
							<div class="theater-type">
								<p class="theater-name">3관</p>
								<p class="chair">총 232석</p>
							</div>
							<div class="theater-time">
								<div class="theater-type-area">2D</div>
								<div class="theater-time-box">
									<table class="time-list-table">
										<caption>상영시간을 보여주는 표 입니다.</caption>
										<colgroup>
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
										</colgroup>
										<tbody>
											<tr>
												<td class="" brch-no="1372" play-schdl-no="2312191372102"
													rpst-movie-no="23081200" theab-no="03" play-de="20231219"
													play-seq="4" netfnl-adopt-at="N">
													<div class="td-ab">
														<div class="txt-center">
															<a href="" title="영화예매하기">
																<div class="ico-box">
																	<i class="iconset ico-off"></i>
																</div>
																<p class="time">19:00</p>
																<p class="chair">205석</p>
																<div class="play-time">
																	<p>19:00~21:31</p>
																	<p>4회차</p>
																</div>
															</a>
														</div>
													</div>
												</td>
												<td class="" brch-no="1372" play-schdl-no="2312191372103"
													rpst-movie-no="23081200" theab-no="03" play-de="20231219"
													play-seq="5" netfnl-adopt-at="N">
													<div class="td-ab">
														<div class="txt-center">
															<a href="" title="영화예매하기">
																<div class="ico-box">
																	<i class="iconset ico-off"></i>
																</div>
																<p class="time">21:50</p>
																<p class="chair">230석</p>
																<div class="play-time">
																	<p>21:50~24:21</p>
																	<p>5회차</p>
																</div>
															</a>
														</div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<div class="theater-type-box">
							<div class="theater-type">
								<p class="theater-name">4관</p>
								<p class="chair">총 103석</p>
							</div>
							<div class="theater-time">
								<div class="theater-type-area">2D</div>
								<div class="theater-time-box">
									<table class="time-list-table">
										<caption>상영시간을 보여주는 표 입니다.</caption>
										<colgroup>
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
										</colgroup>
										<tbody>
											<tr>
												<td class="" brch-no="1372" play-schdl-no="2312191372108"
													rpst-movie-no="23081200" theab-no="04" play-de="20231219"
													play-seq="4" netfnl-adopt-at="N">
													<div class="td-ab">
														<div class="txt-center">
															<a href="" title="영화예매하기">
																<div class="ico-box">
																	<i class="iconset ico-off"></i>
																</div>
																<p class="time">19:40</p>
																<p class="chair">93석</p>
																<div class="play-time">
																	<p>19:40~22:11</p>
																	<p>4회차</p>
																</div>
															</a>
														</div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<div class="theater-type-box">
							<div class="theater-type">
								<p class="theater-name">6관</p>
								<p class="chair">총 103석</p>
							</div>
							<div class="theater-time">
								<div class="theater-type-area">2D</div>
								<div class="theater-time-box">
									<table class="time-list-table">
										<caption>상영시간을 보여주는 표 입니다.</caption>
										<colgroup>
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
										</colgroup>
										<tbody>
											<tr>
												<td class="" brch-no="1372" play-schdl-no="2312191372115"
													rpst-movie-no="23081200" theab-no="06" play-de="20231219"
													play-seq="4" netfnl-adopt-at="N">
													<div class="td-ab">
														<div class="txt-center">
															<a href="" title="영화예매하기">
																<div class="ico-box">
																	<i class="iconset ico-off"></i>
																</div>
																<p class="time">17:50</p>
																<p class="chair">100석</p>
																<div class="play-time">
																	<p>17:50~20:21</p>
																	<p>4회차</p>
																</div>
															</a>
														</div>
													</div>
												</td>
												<td class="" brch-no="1372" play-schdl-no="2312191372116"
													rpst-movie-no="23081200" theab-no="06" play-de="20231219"
													play-seq="5" netfnl-adopt-at="N">
													<div class="td-ab">
														<div class="txt-center">
															<a href="" title="영화예매하기">
																<div class="ico-box">
																	<i class="iconset ico-off"></i>
																</div>
																<p class="time">20:40</p>
																<p class="chair">99석</p>
																<div class="play-time">
																	<p>20:40~23:11</p>
																	<p>5회차</p>
																</div>
															</a>
														</div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="theater-list">
						<div class="theater-tit">
							<p class="movie-grade age-12"></p>
							<p>
								<a href="/movie-detail?rpstMovieNo=23068900" title="괴물 상세보기">괴물</a>
							</p>
							<p class="infomation">
								<span>상영중</span>/상영시간 126분
							</p>
						</div>
						<div class="theater-type-box">
							<div class="theater-type">
								<p class="theater-name">7관</p>
								<p class="chair">총 104석</p>
							</div>
							<div class="theater-time">
								<div class="theater-type-area">2D(자막)</div>
								<div class="theater-time-box">
									<table class="time-list-table">
										<caption>상영시간을 보여주는 표 입니다.</caption>
										<colgroup>
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
										</colgroup>
										<tbody>
											<tr>
												<td class="" brch-no="1372" play-schdl-no="2312191372119"
													rpst-movie-no="23068900" theab-no="07" play-de="20231219"
													play-seq="5" netfnl-adopt-at="N">
													<div class="td-ab">
														<div class="txt-center">
															<a href="" title="영화예매하기">
																<div class="ico-box">
																	<i class="iconset ico-off"></i>
																</div>
																<p class="time">19:10</p>
																<p class="chair">63석</p>
																<div class="play-time">
																	<p>19:10~21:26</p>
																	<p>5회차</p>
																</div>
															</a>
														</div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="theater-list">
						<div class="theater-tit">
							<p class="movie-grade age-all"></p>
							<p>
								<a href="/movie-detail?rpstMovieNo=23075200"
									title="&amp;#40;자막&amp;#41; 그대들은 어떻게 살 것인가 상세보기">(자막) 그대들은
									어떻게 살 것인가</a>
							</p>
							<p class="infomation">
								<span>상영중</span>/상영시간 123분
							</p>
						</div>
						<div class="theater-type-box">
							<div class="theater-type">
								<p class="theater-name">7관</p>
								<p class="chair">총 104석</p>
							</div>
							<div class="theater-time">
								<div class="theater-type-area">2D(자막)</div>
								<div class="theater-time-box">
									<table class="time-list-table">
										<caption>상영시간을 보여주는 표 입니다.</caption>
										<colgroup>
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
										</colgroup>
										<tbody>
											<tr>
												<td class="" brch-no="1372" play-schdl-no="2312191372120"
													rpst-movie-no="23075200" theab-no="07" play-de="20231219"
													play-seq="6" netfnl-adopt-at="N">
													<div class="td-ab">
														<div class="txt-center">
															<a href="" title="영화예매하기">
																<div class="ico-box">
																	<i class="iconset ico-off"></i>
																</div>
																<p class="time">21:45</p>
																<p class="chair">81석</p>
																<div class="play-time">
																	<p>21:45~23:58</p>
																	<p>6회차</p>
																</div>
															</a>
														</div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="theater-list">
						<div class="theater-tit">
							<p class="movie-grade age-all"></p>
							<p>
								<a href="/movie-detail?rpstMovieNo=23090800"
									title="말하고 싶은 비밀 상세보기">말하고 싶은 비밀</a>
							</p>
							<p class="infomation">
								<span>상영중</span>/상영시간 110분
							</p>
						</div>
						<div class="theater-type-box">
							<div class="theater-type">
								<p class="theater-name">7관</p>
								<p class="chair">총 104석</p>
							</div>
							<div class="theater-time">
								<div class="theater-type-area">2D(자막)</div>
								<div class="theater-time-box">
									<table class="time-list-table">
										<caption>상영시간을 보여주는 표 입니다.</caption>
										<colgroup>
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
										</colgroup>
										<tbody>
											<tr>
												<td class="" brch-no="1372" play-schdl-no="2312191372121"
													rpst-movie-no="23090800" theab-no="07" play-de="20231219"
													play-seq="4" netfnl-adopt-at="N">
													<div class="td-ab">
														<div class="txt-center">
															<a href="" title="영화예매하기">
																<div class="ico-box">
																	<i class="iconset ico-off"></i>
																</div>
																<p class="time">16:50</p>
																<p class="chair">90석</p>
																<div class="play-time">
																	<p>16:50~18:50</p>
																	<p>4회차</p>
																</div>
															</a>
														</div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="theater-list">
						<div class="theater-tit">
							<p class="movie-grade age-15"></p>
							<p>
								<a href="/movie-detail?rpstMovieNo=23085600"
									title="인디펜던스 나이트 상세보기">인디펜던스 나이트</a>
							</p>
							<p class="infomation">
								<span>상영중</span>/상영시간 91분
							</p>
						</div>
						<div class="theater-type-box">
							<div class="theater-type">
								<p class="theater-name">4관</p>
								<p class="chair">총 103석</p>
							</div>
							<div class="theater-time">
								<div class="theater-type-area">2D(자막)</div>
								<div class="theater-time-box">
									<table class="time-list-table">
										<caption>상영시간을 보여주는 표 입니다.</caption>
										<colgroup>
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
										</colgroup>
										<tbody>
											<tr>
												<td class="" brch-no="1372" play-schdl-no="2312191372104"
													rpst-movie-no="23085600" theab-no="04" play-de="20231219"
													play-seq="5" netfnl-adopt-at="N">
													<div class="td-ab">
														<div class="txt-center">
															<a href="" title="영화예매하기">
																<div class="ico-box">
																	<i class="iconset ico-off"></i>
																</div>
																<p class="time">22:30</p>
																<p class="chair">96석</p>
																<div class="play-time">
																	<p>22:30~24:11</p>
																	<p>5회차</p>
																</div>
															</a>
														</div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="theater-list">
						<div class="theater-tit">
							<p class="movie-grade age-15"></p>
							<p>
								<a href="/movie-detail?rpstMovieNo=23082100" title="나폴레옹 상세보기">나폴레옹</a>
							</p>
							<p class="infomation">
								<span>상영중</span>/상영시간 158분
							</p>
						</div>
						<div class="theater-type-box">
							<div class="theater-type">
								<p class="theater-name">5관</p>
								<p class="chair">총 96석</p>
							</div>
							<div class="theater-time">
								<div class="theater-type-area">2D(자막)</div>
								<div class="theater-time-box">
									<table class="time-list-table">
										<caption>상영시간을 보여주는 표 입니다.</caption>
										<colgroup>
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
										</colgroup>
										<tbody>
											<tr>
												<td class="" brch-no="1372" play-schdl-no="2312191372112"
													rpst-movie-no="23082100" theab-no="05" play-de="20231219"
													play-seq="4" netfnl-adopt-at="N">
													<div class="td-ab">
														<div class="txt-center">
															<a href="" title="영화예매하기">
																<div class="ico-box">
																	<i class="iconset ico-off"></i>
																</div>
																<p class="time">17:20</p>
																<p class="chair">88석</p>
																<div class="play-time">
																	<p>17:20~20:08</p>
																	<p>4회차</p>
																</div>
															</a>
														</div>
													</div>
												</td>
												<td class="" brch-no="1372" play-schdl-no="2312191372113"
													rpst-movie-no="23082100" theab-no="05" play-de="20231219"
													play-seq="5" netfnl-adopt-at="N">
													<div class="td-ab">
														<div class="txt-center">
															<a href="" title="영화예매하기">
																<div class="ico-box">
																	<i class="iconset ico-off"></i>
																</div>
																<p class="time">20:30</p>
																<p class="chair">90석</p>
																<div class="play-time">
																	<p>20:30~23:18</p>
																	<p>5회차</p>
																</div>
															</a>
														</div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="theater-list">
						<div class="theater-tit">
							<p class="movie-grade age-19"></p>
							<p>
								<a href="/movie-detail?rpstMovieNo=23086700" title="쏘우 X 상세보기">쏘우
									X</a>
							</p>
							<p class="infomation">
								<span>상영중</span>/상영시간 118분
							</p>
						</div>
						<div class="theater-type-box">
							<div class="theater-type">
								<p class="theater-name">2관</p>
								<p class="chair">총 103석</p>
							</div>
							<div class="theater-time">
								<div class="theater-type-area">2D(자막)</div>
								<div class="theater-time-box">
									<table class="time-list-table">
										<caption>상영시간을 보여주는 표 입니다.</caption>
										<colgroup>
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
										</colgroup>
										<tbody>
											<tr>
												<td class="" brch-no="1372" play-schdl-no="2312191372095"
													rpst-movie-no="23086700" theab-no="02" play-de="20231219"
													play-seq="5" netfnl-adopt-at="N">
													<div class="td-ab">
														<div class="txt-center">
															<a href="" title="영화예매하기">
																<div class="ico-box">
																	<i class="iconset ico-off"></i>
																</div>
																<p class="time">19:35</p>
																<p class="chair">94석</p>
																<div class="play-time">
																	<p>19:35~21:43</p>
																	<p>5회차</p>
																</div>
															</a>
														</div>
													</div>
												</td>
												<td class="" brch-no="1372" play-schdl-no="2312191372093"
													rpst-movie-no="23086700" theab-no="02" play-de="20231219"
													play-seq="6" netfnl-adopt-at="N">
													<div class="td-ab">
														<div class="txt-center">
															<a href="" title="영화예매하기">
																<div class="ico-box">
																	<i class="iconset ico-off"></i>
																</div>
																<p class="time">22:05</p>
																<p class="chair">103석</p>
																<div class="play-time">
																	<p>22:05~24:13</p>
																	<p>6회차</p>
																</div>
															</a>
														</div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="theater-list">
						<div class="theater-tit">
							<p class="movie-grade age-12"></p>
							<p>
								<a href="/movie-detail?rpstMovieNo=23081100"
									title="프레디의 피자가게 상세보기">프레디의 피자가게</a>
							</p>
							<p class="infomation">
								<span>상영중</span>/상영시간 109분
							</p>
						</div>
						<div class="theater-type-box">
							<div class="theater-type">
								<p class="theater-name">2관</p>
								<p class="chair">총 103석</p>
							</div>
							<div class="theater-time">
								<div class="theater-type-area">2D(자막)</div>
								<div class="theater-time-box">
									<table class="time-list-table">
										<caption>상영시간을 보여주는 표 입니다.</caption>
										<colgroup>
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
											<col style="width: 99px;">
										</colgroup>
										<tbody>
											<tr>
												<td class="" brch-no="1372" play-schdl-no="2312191372094"
													rpst-movie-no="23081100" theab-no="02" play-de="20231219"
													play-seq="4" netfnl-adopt-at="N">
													<div class="td-ab">
														<div class="txt-center">
															<a href="" title="영화예매하기">
																<div class="ico-box">
																	<i class="iconset ico-off"></i>
																</div>
																<p class="time">17:15</p>
																<p class="chair">95석</p>
																<div class="play-time">
																	<p>17:15~19:14</p>
																	<p>4회차</p>
																</div>
															</a>
														</div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 극장상영 리스트 끝 -->
	</div>
	<!--// theater-main -->
</div>
<%@ include file="../footer.jsp"%>