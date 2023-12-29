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
		<div class="cols-content">
			<!-- 상영시간표 UserControl -->

			<div class="col-detail" style="">
				<!-- 탭메뉴 class="on" 에따라서 아래 h4 내용을 바꿔주세요 -->
				<h4 class="hidden">+ [상영시간표]</h4>

				<!-- Showtimes Start -->
				<div class="showtimes-wrap">
					<div class="sect-schedule">
						<div id="slider" class="slider">
							<div class="item-wrap on">
								<ul class="item" style="width: 800px; height: 110.778px;">
									<li class="on">
										<div class="day">
											<a href="./iframeTheater.aspx?areacode=01&amp;theatercode=0056&amp;date=20231219&amp;screencodes=&amp;screenratingcode=&amp;regioncode="
												title="현재 선택"> <span> 12월</span> <em> 화</em> <strong>19</strong>
											</a>
										</div>
									</li>
									<li>
										<div class="day">
											<a
												href="./iframeTheater.aspx?areacode=01&amp;theatercode=0056&amp;date=20231220&amp;screencodes=&amp;screenratingcode=&amp;regioncode=">
												<span> 12월</span> <em> 수</em> <strong> 20</strong>
											</a>
										</div>
									</li>
									<li>
										<div class="day">
											<a
												href="./iframeTheater.aspx?areacode=01&amp;theatercode=0056&amp;date=20231221&amp;screencodes=&amp;screenratingcode=&amp;regioncode=">
												<span> 12월</span> <em> 목</em> <strong> 21</strong>
											</a>
										</div>
									</li>
									<li>
										<div class="day">
											<a
												href="./iframeTheater.aspx?areacode=01&amp;theatercode=0056&amp;date=20231222&amp;screencodes=&amp;screenratingcode=&amp;regioncode=">
												<span> 12월</span> <em> 금</em> <strong> 22</strong>
											</a>
										</div>
									</li>
									<li>
										<div class="day">
											<a
												href="./iframeTheater.aspx?areacode=01&amp;theatercode=0056&amp;date=20231223&amp;screencodes=&amp;screenratingcode=&amp;regioncode=">
												<span> 12월</span> <em> 토</em> <strong> 23</strong>
											</a>
										</div>
									</li>
									<li>
										<div class="day">
											<a
												href="./iframeTheater.aspx?areacode=01&amp;theatercode=0056&amp;date=20231224&amp;screencodes=&amp;screenratingcode=&amp;regioncode=">
												<span> 12월</span> <em> 일</em> <strong> 24</strong>
											</a>
										</div>
									</li>
									<li>
										<div class="day">
											<a
												href="./iframeTheater.aspx?areacode=01&amp;theatercode=0056&amp;date=20231225&amp;screencodes=&amp;screenratingcode=&amp;regioncode=">
												<span> 12월</span> <em> 월</em> <strong> 25</strong>
											</a>
										</div>
									</li>
								</ul>
							</div>
							<button type="button" class="btn-prev">이전 날자보기</button>
							<button type="button" class="btn-next">다음 날자보기</button>
						</div>
					</div>
					<div class="sect-showtimes">
						<ul>
							<li>
								<div class="col-times">
									<div class="info-movie">
										<!-- 영상물 등급 노출 변경 2022.08.24 -->
										<i class="cgvIcon etc age12">12</i>
										<!-- <span class="ico-grade 12">
                                        12</span>-->
										<a href="/movies/detail-view/?midx=87716" target="_parent">
										<strong>괴물</strong></a> <span class="round lightblue"> <em> 상영중</em>
										</span><span class=""> <em> </em>
										</span><i> 드라마,&nbsp;미스터리</i>/ <i> 127분</i>/ <i> 2023.11.29 개봉</i>
									</div>

									<div class="type-hall">
										<div class="info-hall">
											<ul>
												<li>2D</li>
												<li>1관 6층</li>
												<li>총 158석</li>
											</ul>
										</div>
										<div class="info-timetable">
											<ul>
												<li><a
													href="/ticket/?MOVIE_CD=20034620&amp;MOVIE_CD_GROUP=20034620&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=1510&amp;AREA_CD=13&amp;SCREEN_CD=001"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="001"
													data-playnum="3" data-playstarttime="1510"
													data-playendtime="1727" data-theatername="CGV 강남"
													data-seatremaincnt="114" data-screenkorname="1관 6층"><em>15:10</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>114석</span></a></li>
												<li><a
													href="/ticket/?MOVIE_CD=20034620&amp;MOVIE_CD_GROUP=20034620&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=1800&amp;AREA_CD=13&amp;SCREEN_CD=001"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="001"
													data-playnum="4" data-playstarttime="1800"
													data-playendtime="2017" data-theatername="CGV 강남"
													data-seatremaincnt="140" data-screenkorname="1관 6층"><em>18:00</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>140석</span></a></li>
												<li><a
													href="/ticket/?MOVIE_CD=20034620&amp;MOVIE_CD_GROUP=20034620&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=2040&amp;AREA_CD=13&amp;SCREEN_CD=001"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="001"
													data-playnum="5" data-playstarttime="2040"
													data-playendtime="2257" data-theatername="CGV 강남"
													data-seatremaincnt="117" data-screenkorname="1관 6층"><em>20:40</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>117석</span></a></li>
											</ul>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="col-times">
									<div class="info-movie">
										<!-- 영상물 등급 노출 변경 2022.08.24 -->
										<i class="cgvIcon etc age12">12</i>
										<!-- <span class="ico-grade 12">
                                        12</span>-->
										<a href="/movies/detail-view/?midx=87554" target="_parent"><strong>
												서울의 봄</strong></a> <span class="round lightblue"> <em> 상영중</em>
										</span><span class=""> <em> </em>
										</span><i> 드라마</i>/ <i> 141분</i>/ <i> 2023.11.22 개봉</i>
									</div>

									<div class="type-hall">
										<div class="info-hall">
											<ul>
												<li>2D</li>
												<li>3관 8층</li>
												<li>총 172석</li>
											</ul>
										</div>
										<div class="info-timetable">
											<ul>

												<li><a
													href="/ticket/?MOVIE_CD=20034317&amp;MOVIE_CD_GROUP=20034317&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=1150&amp;AREA_CD=13&amp;SCREEN_CD=003"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="003"
													data-playnum="2" data-playstarttime="1150"
													data-playendtime="1421" data-theatername="CGV 강남"
													data-seatremaincnt="162" data-screenkorname="3관 8층"><em>11:50</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>162석</span></a></li>
												<li><a
													href="/ticket/?MOVIE_CD=20034317&amp;MOVIE_CD_GROUP=20034317&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=1440&amp;AREA_CD=13&amp;SCREEN_CD=003"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="003"
													data-playnum="3" data-playstarttime="1440"
													data-playendtime="1711" data-theatername="CGV 강남"
													data-seatremaincnt="130" data-screenkorname="3관 8층"><em>14:40</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>130석</span></a></li>
												<li><a
													href="/ticket/?MOVIE_CD=20034317&amp;MOVIE_CD_GROUP=20034317&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=1730&amp;AREA_CD=13&amp;SCREEN_CD=003"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="003"
													data-playnum="4" data-playstarttime="1730"
													data-playendtime="2001" data-theatername="CGV 강남"
													data-seatremaincnt="150" data-screenkorname="3관 8층"><em>17:30</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>150석</span></a></li>
												<li><a
													href="/ticket/?MOVIE_CD=20034317&amp;MOVIE_CD_GROUP=20034317&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=2020&amp;AREA_CD=13&amp;SCREEN_CD=003"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="003"
													data-playnum="5" data-playstarttime="2020"
													data-playendtime="2251" data-theatername="CGV 강남"
													data-seatremaincnt="151" data-screenkorname="3관 8층"><em>20:20</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>151석</span></a></li>
												<li><a
													href="/ticket/?MOVIE_CD=20034317&amp;MOVIE_CD_GROUP=20034317&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=2310&amp;AREA_CD=13&amp;SCREEN_CD=003"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="003"
													data-playnum="6" data-playstarttime="2310"
													data-playendtime="2541" data-theatername="CGV 강남"
													data-seatremaincnt="165" data-screenkorname="3관 8층"><em>23:10</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>165석</span></a></li>
											</ul>
										</div>
									</div>
									<div class="type-hall">
										<div class="info-hall">
											<ul>
												<li>2D</li>
												<li>4관 8층</li>
												<li>총 124석</li>
											</ul>
										</div>
										<div class="info-timetable">
											<ul>
												<li><a
													href="/ticket/?MOVIE_CD=20034317&amp;MOVIE_CD_GROUP=20034317&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=1950&amp;AREA_CD=13&amp;SCREEN_CD=004"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="004"
													data-playnum="6" data-playstarttime="1950"
													data-playendtime="2221" data-theatername="CGV 강남"
													data-seatremaincnt="99" data-screenkorname="4관 8층"><em>19:50</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>99석</span></a></li>
												<li><a
													href="/ticket/?MOVIE_CD=20034317&amp;MOVIE_CD_GROUP=20034317&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=2240&amp;AREA_CD=13&amp;SCREEN_CD=004"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="004"
													data-playnum="7" data-playstarttime="2240"
													data-playendtime="2511" data-theatername="CGV 강남"
													data-seatremaincnt="120" data-screenkorname="4관 8층"><em>22:40</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>120석</span></a></li>
											</ul>
										</div>
									</div>
									<div class="type-hall">
										<div class="info-hall">
											<ul>
												<li>2D</li>
												<li>5관 10층(Laser)</li>
												<li>총 172석</li>
											</ul>
										</div>
										<div class="info-timetable">
											<ul>

												<li><em>09:50</em><span>마감</span></li>
												<li><a
													href="/ticket/?MOVIE_CD=20034317&amp;MOVIE_CD_GROUP=20034317&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=1240&amp;AREA_CD=13&amp;SCREEN_CD=005"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="005"
													data-playnum="2" data-playstarttime="1240"
													data-playendtime="1511" data-theatername="CGV 강남"
													data-seatremaincnt="158" data-screenkorname="5관 10층(Laser)"><em>12:40</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>158석</span></a></li>
												<li><a
													href="/ticket/?MOVIE_CD=20034317&amp;MOVIE_CD_GROUP=20034317&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=1530&amp;AREA_CD=13&amp;SCREEN_CD=005"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="005"
													data-playnum="3" data-playstarttime="1530"
													data-playendtime="1801" data-theatername="CGV 강남"
													data-seatremaincnt="145" data-screenkorname="5관 10층(Laser)"><em>15:30</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>145석</span></a></li>
												<li><a
													href="/ticket/?MOVIE_CD=20034317&amp;MOVIE_CD_GROUP=20034317&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=1820&amp;AREA_CD=13&amp;SCREEN_CD=005"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="005"
													data-playnum="4" data-playstarttime="1820"
													data-playendtime="2051" data-theatername="CGV 강남"
													data-seatremaincnt="151" data-screenkorname="5관 10층(Laser)"><em>18:20</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>151석</span></a></li>
												<li><a
													href="/ticket/?MOVIE_CD=20034317&amp;MOVIE_CD_GROUP=20034317&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=2110&amp;AREA_CD=13&amp;SCREEN_CD=005"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="005"
													data-playnum="5" data-playstarttime="2110"
													data-playendtime="2341" data-theatername="CGV 강남"
													data-seatremaincnt="167" data-screenkorname="5관 10층(Laser)"><em>21:10</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>167석</span></a></li>
												<li><a
													href="/ticket/?MOVIE_CD=20034317&amp;MOVIE_CD_GROUP=20034317&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=2400&amp;AREA_CD=13&amp;SCREEN_CD=005"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="005"
													data-playnum="6" data-playstarttime="2400"
													data-playendtime="2631" data-theatername="CGV 강남"
													data-seatremaincnt="167" data-screenkorname="5관 10층(Laser)"><em>24:00</em><span
														class="midnight txt-lightblue"><span class="hidden">잔여좌석</span>167석</span></a></li>
											</ul>
										</div>
									</div>

									<div class="type-hall">
										<div class="info-hall">
											<ul>
												<li>2D</li>
												<li>6관 10층 (Laser)</li>
												<li>총 124석</li>
											</ul>
										</div>
										<div class="info-timetable">
											<ul>

												<li><a
													href="/ticket/?MOVIE_CD=20034317&amp;MOVIE_CD_GROUP=20034317&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=1040&amp;AREA_CD=13&amp;SCREEN_CD=006"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="006"
													data-playnum="1" data-playstarttime="1040"
													data-playendtime="1311" data-theatername="CGV 강남"
													data-seatremaincnt="117"
													data-screenkorname="6관 10층 (Laser)"><em>10:40</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>117석</span></a></li>
												<li><a
													href="/ticket/?MOVIE_CD=20034317&amp;MOVIE_CD_GROUP=20034317&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=1330&amp;AREA_CD=13&amp;SCREEN_CD=006"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="006"
													data-playnum="2" data-playstarttime="1330"
													data-playendtime="1601" data-theatername="CGV 강남"
													data-seatremaincnt="106"
													data-screenkorname="6관 10층 (Laser)"><em>13:30</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>106석</span></a></li>
												<li><a
													href="/ticket/?MOVIE_CD=20034317&amp;MOVIE_CD_GROUP=20034317&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=1620&amp;AREA_CD=13&amp;SCREEN_CD=006"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="006"
													data-playnum="3" data-playstarttime="1620"
													data-playendtime="1851" data-theatername="CGV 강남"
													data-seatremaincnt="113"
													data-screenkorname="6관 10층 (Laser)"><em>16:20</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>113석</span></a></li>
												<li><a
													href="/ticket/?MOVIE_CD=20034317&amp;MOVIE_CD_GROUP=20034317&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=1910&amp;AREA_CD=13&amp;SCREEN_CD=006"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="006"
													data-playnum="4" data-playstarttime="1910"
													data-playendtime="2141" data-theatername="CGV 강남"
													data-seatremaincnt="96" data-screenkorname="6관 10층 (Laser)"><em>19:10</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>96석</span></a></li>
												<li><a
													href="/ticket/?MOVIE_CD=20034317&amp;MOVIE_CD_GROUP=20034317&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=2200&amp;AREA_CD=13&amp;SCREEN_CD=006"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="006"
													data-playnum="5" data-playstarttime="2200"
													data-playendtime="2431" data-theatername="CGV 강남"
													data-seatremaincnt="117"
													data-screenkorname="6관 10층 (Laser)"><em>22:00</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>117석</span></a></li>
											</ul>
										</div>
									</div>
								</div>
							</li>

							<li>
								<div class="col-times">
									<div class="info-movie">
										<!-- 영상물 등급 노출 변경 2022.08.24 -->
										<i class="cgvIcon etc age12">12</i>
										<!-- <span class="ico-grade 12">
                                        12</span>-->
										<a href="/movies/detail-view/?midx=87594" target="_parent"><strong>
												3일의 휴가</strong></a> <span class="round lightblue"> <em> 상영중</em>
										</span><span class=""> <em> </em>
										</span><i> 환타지,&nbsp;드라마</i>/ <i> 105분</i>/ <i> 2023.12.06 개봉</i>
									</div>

									<div class="type-hall">
										<div class="info-hall">
											<ul>
												<li>2D</li>
												<li>2관[LCK관] 6층 (Laser)</li>
												<li>총 124석</li>
											</ul>
										</div>
										<div class="info-timetable">
											<ul>

												<li><a
													href="/ticket/?MOVIE_CD=20034379&amp;MOVIE_CD_GROUP=20034379&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=1900&amp;AREA_CD=13&amp;SCREEN_CD=002"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="002"
													data-playnum="5" data-playstarttime="1900"
													data-playendtime="2055" data-theatername="CGV 강남"
													data-seatremaincnt="110"
													data-screenkorname="2관[LCK관] 6층 (Laser)"><em>19:00</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>110석</span></a></li>


												<li><a
													href="/ticket/?MOVIE_CD=20034379&amp;MOVIE_CD_GROUP=20034379&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=2120&amp;AREA_CD=13&amp;SCREEN_CD=002"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="002"
													data-playnum="6" data-playstarttime="2120"
													data-playendtime="2315" data-theatername="CGV 강남"
													data-seatremaincnt="113"
													data-screenkorname="2관[LCK관] 6층 (Laser)"><em>21:20</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>113석</span></a></li>


												<li><a
													href="/ticket/?MOVIE_CD=20034379&amp;MOVIE_CD_GROUP=20034379&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=2340&amp;AREA_CD=13&amp;SCREEN_CD=002"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="002"
													data-playnum="7" data-playstarttime="2340"
													data-playendtime="2535" data-theatername="CGV 강남"
													data-seatremaincnt="118"
													data-screenkorname="2관[LCK관] 6층 (Laser)"><em>23:40</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>118석</span></a></li>


											</ul>
										</div>


									</div>

									<div class="type-hall">
										<div class="info-hall">
											<ul>
												<li>2D</li>
												<li>4관 8층</li>
												<li>총 124석</li>
											</ul>
										</div>
										<div class="info-timetable">
											<ul>

												<li><em>09:20</em><span>마감</span></li>
												<li><a
													href="/ticket/?MOVIE_CD=20034379&amp;MOVIE_CD_GROUP=20034379&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=1350&amp;AREA_CD=13&amp;SCREEN_CD=004"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="004"
													data-playnum="3" data-playstarttime="1350"
													data-playendtime="1545" data-theatername="CGV 강남"
													data-seatremaincnt="111" data-screenkorname="4관 8층"><em>13:50</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>111석</span></a></li>
												<li><a
													href="/ticket/?MOVIE_CD=20034379&amp;MOVIE_CD_GROUP=20034379&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=1615&amp;AREA_CD=13&amp;SCREEN_CD=004"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="004"
													data-playnum="4" data-playstarttime="1615"
													data-playendtime="1810" data-theatername="CGV 강남"
													data-seatremaincnt="116" data-screenkorname="4관 8층"><em>16:15</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>116석</span></a></li>
											</ul>
										</div>
									</div>
								</div>
							</li>

							<li>
								<div class="col-times">
									<div class="info-movie">
										<!-- 영상물 등급 노출 변경 2022.08.24 -->
										<i class="cgvIcon etc age15">15</i>
										<!-- <span class="ico-grade 15">
                                        15</span>-->
										<a href="/movies/detail-view/?midx=87596" target="_parent"><strong>
												나폴레옹</strong></a> <span class="round lightblue"> <em> 상영중</em>
										</span><span class=""> <em> </em>
										</span><i> </i>/ <i> 158분</i>/ <i> 2023.12.06 개봉</i>
									</div>

									<div class="type-hall">
										<div class="info-hall">
											<ul>
												<li>2D</li>
												<li>2관[LCK관] 6층 (Laser)</li>
												<li>총 124석</li>
											</ul>
										</div>
										<div class="info-timetable">
											<ul>
												<li><a
													href="/ticket/?MOVIE_CD=20034381&amp;MOVIE_CD_GROUP=20034381&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=1430&amp;AREA_CD=13&amp;SCREEN_CD=002"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="002"
													data-playnum="3" data-playstarttime="1430"
													data-playendtime="1718" data-theatername="CGV 강남"
													data-seatremaincnt="104"
													data-screenkorname="2관[LCK관] 6층 (Laser)"><em>14:30</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>104석</span></a></li>
											</ul>
										</div>
									</div>
								</div>
							</li>

							<li>
								<div class="col-times">
									<div class="info-movie">
										<!-- 영상물 등급 노출 변경 2022.08.24 -->
										<i class="cgvIcon etc age18">18</i>
										<!-- <span class="ico-grade 18">
                                        18</span>-->
										<a href="/movies/detail-view/?midx=87753" target="_parent"><strong>
												쏘우 X</strong></a> <span class="round lightblue"> <em> 상영중</em>
										</span><span class=""> <em> </em>
										</span><i> 호러</i>/ <i> 118분</i>/ <i> 2023.12.13 개봉</i>
									</div>

									<div class="type-hall">
										<div class="info-hall">
											<ul>
												<li>2D</li>
												<li>1관 6층</li>
												<li>총 158석</li>
											</ul>
										</div>
										<div class="info-timetable">
											<ul>
												<li><a
													href="/ticket/?MOVIE_CD=20034686&amp;MOVIE_CD_GROUP=20034686&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=2320&amp;AREA_CD=13&amp;SCREEN_CD=001"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="001"
													data-playnum="6" data-playstarttime="2320"
													data-playendtime="2528" data-theatername="CGV 강남"
													data-seatremaincnt="152" data-screenkorname="1관 6층"><em>23:20</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>152석</span></a></li>
											</ul>
										</div>
									</div>
								</div>
							</li>

							<li>
								<div class="col-times">
									<div class="info-movie">
										<!-- 영상물 등급 노출 변경 2022.08.24 -->
										<i class="cgvIcon etc ageAll">All</i>
										<!-- <span class="ico-grade All">
                                        All</span>-->
										<a href="/movies/detail-view/?midx=87727" target="_parent"><strong>
												엔시티 네이션: 투 더 월드 인 시네마</strong></a> <span class="round lightblue">
											<em> 상영중</em>
										</span><span class=""> <em> </em>
										</span><i> </i>/ <i> 102분</i>/ <i> 2023.12.06 개봉</i>
									</div>

									<div class="type-hall">
										<div class="info-hall">
											<ul>
												<li>SCREENX 2D(STAGE)</li>
												<li>4관[SCREENX] 8층</li>
												<li>총 124석</li>
											</ul>
										</div>
										<div class="info-timetable">
											<ul>
												<li><a
													href="/ticket/?MOVIE_CD=20035046&amp;MOVIE_CD_GROUP=20034631&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=1140&amp;AREA_CD=13&amp;SCREEN_CD=014"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="014"
													data-playnum="2" data-playstarttime="1140"
													data-playendtime="1332" data-theatername="CGV 강남"
													data-seatremaincnt="122"
													data-screenkorname="4관[SCREENX] 8층"><em>11:40</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>122석</span></a></li>
											</ul>
										</div>
									</div>
								</div>
							</li>

							<li>
								<div class="col-times">
									<div class="info-movie">
										<!-- 영상물 등급 노출 변경 2022.08.24 -->
										<i class="cgvIcon etc age12">12</i>
										<!-- <span class="ico-grade 12">
                                        12</span>-->
										<a href="/movies/detail-view/?midx=87905" target="_parent"><strong>
												무빙 포 워드</strong></a> <span class="round lightblue"> <em> 상영중</em>
										</span><span class=""> <em> </em>
										</span><i> 액션</i>/ <i> 41분</i>/ <i> 2023.12.13 개봉</i>
									</div>

									<div class="type-hall">
										<div class="info-hall">
											<ul>
												<li>2D</li>
												<li>4관 8층</li>
												<li>총 124석</li>
											</ul>
										</div>
										<div class="info-timetable">
											<ul>
												<li><a
													href="/ticket/?MOVIE_CD=20035125&amp;MOVIE_CD_GROUP=20035125&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=1840&amp;AREA_CD=13&amp;SCREEN_CD=004"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="004"
													data-playnum="5" data-playstarttime="1840"
													data-playendtime="1931" data-theatername="CGV 강남"
													data-seatremaincnt="114" data-screenkorname="4관 8층"><em>18:40</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>114석</span></a></li>
											</ul>
										</div>
									</div>
								</div>
							</li>

							<li>
								<div class="col-times">
									<div class="info-movie">
										<!-- 영상물 등급 노출 변경 2022.08.24 -->
										<i class="cgvIcon etc age18">18</i>
										<!-- <span class="ico-grade 18">
                                        18</span>-->
										<a href="/movies/detail-view/?midx=87755" target="_parent"><strong>
												나 혼자만 레벨업 프리뷰</strong></a> <span class="round lightblue"> <em>
												상영중</em>
										</span><span class=""> <em> </em>
										</span><i> 애니메이션</i>/ <i> 44분</i>/ <i> 2023.12.13 개봉</i>
									</div>

									<div class="type-hall">
										<div class="info-hall">
											<ul>
												<li>2D(더빙, CHANNEL)</li>
												<li>2관[LCK관] 6층 (Laser)</li>
												<li>총 124석</li>
											</ul>
										</div>
										<div class="info-timetable">
											<ul>
												<li><a
													href="/ticket/?MOVIE_CD=20034689&amp;MOVIE_CD_GROUP=20034689&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=1310&amp;AREA_CD=13&amp;SCREEN_CD=002"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="002"
													data-playnum="2" data-playstarttime="1310"
													data-playendtime="1404" data-theatername="CGV 강남"
													data-seatremaincnt="120"
													data-screenkorname="2관[LCK관] 6층 (Laser)"><em>13:10</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>120석</span></a></li>
											</ul>
										</div>
									</div>
									<div class="type-hall">
										<div class="info-hall">
											<ul>
												<li>2D(자막, CHANNEL)</li>
												<li>2관[LCK관] 6층 (Laser)</li>
												<li>총 124석</li>
											</ul>
										</div>
										<div class="info-timetable">
											<ul>
												<li><a
													href="/ticket/?MOVIE_CD=20034705&amp;MOVIE_CD_GROUP=20034689&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=1740&amp;AREA_CD=13&amp;SCREEN_CD=002"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="002"
													data-playnum="4" data-playstarttime="1740"
													data-playendtime="1834" data-theatername="CGV 강남"
													data-seatremaincnt="117"
													data-screenkorname="2관[LCK관] 6층 (Laser)"><em>17:40</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>117석</span></a></li>
											</ul>
										</div>
									</div>
								</div>
							</li>

							<li>
								<div class="col-times">
									<div class="info-movie">
										<!-- 영상물 등급 노출 변경 2022.08.24 -->
										<i class="cgvIcon etc age12">12</i>
										<!-- <span class="ico-grade 12">
                                        12</span>-->
										<a href="/movies/detail-view/?midx=87699" target="_parent"><strong>
												극장판 파워 디지몬 더 비기닝</strong></a> <span class="round lightblue"> <em>
												상영중</em>
										</span><span class=""> <em> </em>
										</span><i> 애니메이션</i>/ <i> 80분</i>/ <i> 2023.11.29 개봉</i>
									</div>

									<div class="type-hall">
										<div class="info-hall">
											<ul>
												<li>2D(자막, 선택받은 특가)</li>
												<li>1관 6층</li>
												<li>총 158석</li>
											</ul>
										</div>
										<div class="info-timetable">
											<ul>
												<li><a
													href="/ticket/?MOVIE_CD=20035196&amp;MOVIE_CD_GROUP=20034587&amp;PLAY_YMD=20231219&amp;THEATER_CD=0056&amp;PLAY_START_TM=1320&amp;AREA_CD=13&amp;SCREEN_CD=001"
													target="_top" data-theatercode="0056"
													data-playymd="20231219" data-screencode="001"
													data-playnum="2" data-playstarttime="1320"
													data-playendtime="1450" data-theatername="CGV 강남"
													data-seatremaincnt="147" data-screenkorname="1관 6층"><em>13:20</em><span
														class="txt-lightblue"><span class="hidden">잔여좌석</span>147석</span></a></li>
											</ul>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<p class="info-noti"></p>
					<p>ㆍ입장 지연에 따른 관람 불편을 최소화하기 위해 영화는 10분 후 상영이 시작됩니다.</p>
					<p></p>
				</div>
				<!-- /Showtimes End -->
			</div>


			<!--    <div class="sect-sns">
            <ul>                	
                <li><a class="link-facebook" href="#" id="link_facebook">FaceBook</a></li>
                <li><a class="link-twitter" href="#" id="link_twitter">Twitter</a></li>
            </ul>
            <div class="share">
                <div id="fb-root"></div>
                <script>
                    (function (d, s, id) {
                        var js, fjs = d.getElementsByTagName(s)[0];
                        if (d.getElementById(id)) return;
                        js = d.createElement(s); js.id = id;
                        js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&appId=341385562539159&version=v2.0";
                        fjs.parentNode.insertBefore(js, fjs);
                    } (document, 'script', 'facebook-jssdk'));
                </script>
                <div class="fb-like" style="z-index:2" data-href="http%3a%2f%2fwww.cgv.co.kr%2ftheaters%2fdefault.aspx" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></div>
            </div>  	
        
        </div>-->
		</div>
		<!-- 극장상영 리스트 끝 -->
	</div>
	<!--// theater-main -->
</div>
<%@ include file="../footer.jsp"%>