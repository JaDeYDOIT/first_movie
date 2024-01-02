<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
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
<link href="../css/ticketing/jquery.mCustomScrollbar.css"
	rel="stylesheet" type="text/css">
<script src="/js/jquery-3.7.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="/js/ticketing_schedule.js"></script>

</head>



<body>

		<div class="wrap_reserve" style="margin:1% auto;">
			<h2 class="hidden">예매하기</h2>
			<div class="section_step_tit">
				<ul>
					<li class="active step01"  ><a href="#reserveStep01"><strong
							class="tit"><span>01</span><br>상영시간</strong> </a></li>
					<li class="disabled"><a style="cursor: default;"><strong
							class="tit"><span>02</span><br>인원/좌석</strong></a></li>
					<li class="disabled"><a style="cursor: default;"><strong
							class="tit"><span>03</span><br>결제</strong></a></li>
					<li class="disabled"><a style="cursor: default;"><strong
							class="tit"><span>04</span><br>결제완료</strong></a></li>
				</ul>
			</div>
			<div id="reserveStep01" class="section_step_con step01 active">
				<h3 class="hidden">상영시간</h3>
				<div class="article article_cinema area__movingbar litype2">
					<div class="group_top">
						<h4 class="tit">서울대입구</h4>
					</div>
					<div class="inner">
						<ul class="tab_wrap outer actionmovingbar">
							<div class="tab_con">
								<div class="cinema_select_wrap cinemaSelect basicCinema">
									<ul>
										<c:forEach items="${regionList}" var="region">
											<li class="depth1"><a href="#none">${region.region}
											</a>
												<div class="depth2" style="display: none;">
													<div class="mCustomScrollbar">
														<ul>
															<c:forEach items="${theaterBranchList}"
																var="theaterBranch">
																<c:if
																	test="${region.getRegion_id() eq theaterBranch.region_id}">
																	<li class="theaterBranchID" data-theaterbranchid="${theaterBranch.branch_id}"><a href="#none">${theaterBranch.branch_name}</a></li>
																</c:if>
															</c:forEach>
														</ul>
													</div>
												</div></li>
										</c:forEach>
									</ul>
								</div>
							</div>
						</ul>
					</div>
				</div>
				<div class="article article_movie">
					<div class="group_top">
						<h4 class="tit movie_name">서울의 봄</h4>
					</div>
					<div class="inner">
						<div class="list_filter">
							<select title="영화 정렬 방법 선택"><option value="A">예매순</option>
								<option value="B">관객순</option>
								<option value="D">예정작</option></select>
						</div>
						<div class="movie_select_wrap list mCustomScrollbar thm">
							<ul>
								<c:forEach items="${movieList}" var="movie">
									<li class="movieID disabled" data-movieid="${movie.movie_id}"><a href="#none">
											<div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>${movie.movie_rank}</strong></span><img
													src="${movie.movie_image}" alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<c:choose>
														<c:when test="${movie.movie_audience_rating eq '전체'}">
															<span class="ic_grade gr_all">전체 관람가</span>
														</c:when>
														<c:when test="${movie.movie_audience_rating eq '12세이상'}">
															<span class="ic_grade gr_12">12세 관람가</span>
														</c:when>
														<c:when test="${movie.movie_audience_rating eq '15세이상'}">
															<span class="ic_grade gr_15">15세 관람가</span>
														</c:when>
														<c:when test="${movie.movie_audience_rating eq '18세이상'}">
															<span class="ic_grade gr_18">18세 관람가</span>
														</c:when>
													</c:choose>
													<strong class="tit">${movie.movie_name}</strong>
												</div>
												<span class="sub_info1"><span class="time blacktype"><span
														class="roboto">${movie.movie_running_time}</span>분</span></span>
												<dl>
													<dt>개봉일</dt>
													<dd>${movie.movie_production_year}</dd>
												</dl>
											</div>
									</a></li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
				<div class="article article_time area__movingbar litype6">
					<div class="group_top">
						<h4 class="tit">2023-12-15(오늘)</h4>
					</div>
					<div class="inner">
						<div class="date_select_wrap dateReserveWrap">
							<div class="slide_wrap slide_reserve_date">
								<ul class="owl-carousel owl-loaded owl-drag">
									<div class="owl-stage-outer">
										<div class="owl-stage"
											style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 735px;">
											<div class="owl-item active" style="width: 52.5px;">
												<li class="item"><strong class="month">12월</strong><a
													href="#none" class="date"><label for="radioDate0"><input
															type="radio" id="radioDate0" name="radioDate1"
															data-displayyn="Y" data-playdate="2023-12-15"
															data-isplaydate="Y" data-playweek="오늘" checked=""><strong>15</strong><em>오늘</em></label></a></li>
											</div>
											<div class="owl-item active" style="width: 52.5px;">
												<li class="item"><a href="#none" class="date sat"><label
														for="radioDate1"><input type="radio"
															id="radioDate1" name="radioDate1" data-displayyn="Y"
															data-playdate="2023-12-16" data-isplaydate="Y"
															data-playweek="토"><strong>16</strong><em>토</em></label></a></li>
											</div>
											<div class="owl-item active" style="width: 52.5px;">
												<li class="item"><a href="#none" class="date sun"><label
														for="radioDate2"><input type="radio"
															id="radioDate2" name="radioDate1" data-displayyn="Y"
															data-playdate="2023-12-17" data-isplaydate="Y"
															data-playweek="일"><strong>17</strong><em>일</em></label></a></li>
											</div>
											<div class="owl-item active" style="width: 52.5px;">
												<li class="item"><a href="#none" class="date"><label
														for="radioDate3"><input type="radio"
															id="radioDate3" name="radioDate1" data-displayyn="Y"
															data-playdate="2023-12-18" data-isplaydate="Y"
															data-playweek="월"><strong>18</strong><em>월</em></label></a></li>
											</div>
											<div class="owl-item active" style="width: 52.5px;">
												<li class="item"><a href="#none" class="date"><label
														for="radioDate4"><input type="radio"
															id="radioDate4" name="radioDate1" data-displayyn="Y"
															data-playdate="2023-12-19" data-isplaydate="Y"
															data-playweek="화"><strong>19</strong><em>화</em></label></a></li>
											</div>
											<div class="owl-item active" style="width: 52.5px;">
												<li class="item"><a href="#none" class="date disabled"><label
														for="radioDate5"><input type="radio"
															id="radioDate5" name="radioDate1" data-displayyn="N"
															data-playdate="2023-12-20" data-isplaydate="Y"
															data-playweek="수"><strong>20</strong><em>수</em></label></a></li>
											</div>
											<div class="owl-item active" style="width: 52.5px;">
												<li class="item"><a href="#none" class="date disabled"><label
														for="radioDate6"><input type="radio"
															id="radioDate6" name="radioDate1" data-displayyn="N"
															data-playdate="2023-12-21" data-isplaydate="Y"
															data-playweek="목"><strong>21</strong><em>목</em></label></a></li>
											</div>
											<div class="owl-item active" style="width: 52.5px;">
												<li class="item"><a href="#none" class="date disabled"><label
														for="radioDate7"><input type="radio"
															id="radioDate7" name="radioDate1" data-displayyn="N"
															data-playdate="2023-12-22" data-isplaydate="Y"
															data-playweek="금"><strong>22</strong><em>금</em></label></a></li>
											</div>
											<div class="owl-item" style="width: 52.5px;">
												<li class="item"><a href="#none"
													class="date sat disabled"><label for="radioDate8"><input
															type="radio" id="radioDate8" name="radioDate1"
															data-displayyn="N" data-playdate="2023-12-23"
															data-isplaydate="Y" data-playweek="토"><strong>23</strong><em>토</em></label></a></li>
											</div>
											<div class="owl-item" style="width: 52.5px;">
												<li class="item"><a href="#none"
													class="date sun disabled"><label for="radioDate9"><input
															type="radio" id="radioDate9" name="radioDate1"
															data-displayyn="N" data-playdate="2023-12-24"
															data-isplaydate="Y" data-playweek="일"><strong>24</strong><em>일</em></label></a></li>
											</div>
											<div class="owl-item" style="width: 52.5px;">
												<li class="item"><a href="#none"
													class="date sun disabled"><label for="radioDate10"><input
															type="radio" id="radioDate10" name="radioDate1"
															data-displayyn="N" data-playdate="2023-12-25"
															data-isplaydate="Y" data-playweek="월"><strong>25</strong><em>월</em></label></a></li>
											</div>
											<div class="owl-item" style="width: 52.5px;">
												<li class="item"><a href="#none" class="date disabled"><label
														for="radioDate11"><input type="radio"
															id="radioDate11" name="radioDate1" data-displayyn="N"
															data-playdate="2023-12-26" data-isplaydate="Y"
															data-playweek="화"><strong>26</strong><em>화</em></label></a></li>
											</div>
											<div class="owl-item" style="width: 52.5px;">
												<li class="item"><a href="#none" class="date disabled"><label
														for="radioDate12"><input type="radio"
															id="radioDate12" name="radioDate1" data-displayyn="N"
															data-playdate="2023-12-27" data-isplaydate="Y"
															data-playweek="수"><strong>27</strong><em>수</em></label></a></li>
											</div>
											<div class="owl-item" style="width: 52.5px;">
												<li class="item"><a href="#none" class="date disabled"><label
														for="radioDate13"><input type="radio"
															id="radioDate13" name="radioDate1" data-displayyn="N"
															data-playdate="2023-12-28" data-isplaydate="Y"
															data-playweek="목"><strong>28</strong><em>목</em></label></a></li>
											</div>
										</div>
									</div>
									<div class="owl-nav">
										<button type="button" role="presentation"
											class="owl-prev disabled">
											<span aria-label="Previous">‹</span>
										</button>
										<button type="button" role="presentation" class="owl-next">
											<span aria-label="Next">›</span>
										</button>
									</div>
									<div class="owl-dots disabled"></div>
								</ul>
							</div>
						</div>
						<div class="tab_con">
							<div class="timeScroll mCustomScrollbar">
								<div class="group_time_select">
									<div class="time_select_tit">
										<span class="ic_grade gr_12"></span><strong>서울의 봄</strong>
									</div>
									<div class="time_select_wrap timeSelect">
										<ul class="list_hall">
											<li>2D</li>
										</ul>
										<ul class="list_time">
											<c:forEach items="${screenMovieInfoList}"
												var="screenMovieInfo">
												<li class=" full disabled"><a role="button"
													href="#none"><dl>
															<dt>상영시간</dt>
															<dd class="time">
																<strong>${screenMovieInfo.movie_showing_time}</strong>
															</dd>
															<dt>잔여석</dt>
															<dd class="seat">
																<strong>예매마감</strong>
															</dd>
															<dt>상영관</dt>
															<dd class="hall">5관</dd>
														</dl></a></li>
											</c:forEach>
											<!-- <li class=""><a role="button" href="#none"><dl>
														<dt>상영시간</dt>
														<dd class="time">
															<strong>13:30</strong>
															<div class="tooltip">종료 16:01</div>
														</dd>
														<dt>잔여석</dt>
														<dd class="seat">
															<strong>77</strong> / 107
														</dd>
														<dt>상영관</dt>
														<dd class="hall">4관</dd>
													</dl></a></li>
											<li class=""><a role="button" href="#none"><dl>
														<dt>상영시간</dt>
														<dd class="time">
															<strong>14:10</strong>
															<div class="tooltip">종료 16:41</div>
														</dd>
														<dt>잔여석</dt>
														<dd class="seat">
															<strong>142</strong> / 185
														</dd>
														<dt>상영관</dt>
														<dd class="hall">2관</dd>
													</dl></a></li>
											<li class=""><a role="button" href="#none"><dl>
														<dt>상영시간</dt>
														<dd class="time">
															<strong>14:50</strong>
															<div class="tooltip">종료 17:21</div>
														</dd>
														<dt>잔여석</dt>
														<dd class="seat">
															<strong>100</strong> / 131
														</dd>
														<dt>상영관</dt>
														<dd class="hall">1관</dd>
													</dl></a></li>
											<li class=""><a role="button" href="#none"><dl>
														<dt>상영시간</dt>
														<dd class="time">
															<strong>15:40</strong>
															<div class="tooltip">종료 18:11</div>
														</dd>
														<dt>잔여석</dt>
														<dd class="seat">
															<strong>136</strong> / 186
														</dd>
														<dt>상영관</dt>
														<dd class="hall">5관</dd>
													</dl></a></li>
											<li class=""><a role="button" href="#none"><dl>
														<dt>상영시간</dt>
														<dd class="time">
															<strong>16:20</strong>
															<div class="tooltip">종료 18:51</div>
														</dd>
														<dt>잔여석</dt>
														<dd class="seat">
															<strong>97</strong> / 107
														</dd>
														<dt>상영관</dt>
														<dd class="hall">4관</dd>
													</dl></a></li>
											<li class=""><a role="button" href="#none"><dl>
														<dt>상영시간</dt>
														<dd class="time">
															<strong>17:00</strong>
															<div class="tooltip">종료 19:31</div>
														</dd>
														<dt>잔여석</dt>
														<dd class="seat">
															<strong>163</strong> / 185
														</dd>
														<dt>상영관</dt>
														<dd class="hall">2관</dd>
													</dl></a></li>
											<li class=""><a role="button" href="#none"><dl>
														<dt>상영시간</dt>
														<dd class="time">
															<strong>17:40</strong>
															<div class="tooltip">종료 20:11</div>
														</dd>
														<dt>잔여석</dt>
														<dd class="seat">
															<strong>115</strong> / 131
														</dd>
														<dt>상영관</dt>
														<dd class="hall">1관</dd>
													</dl></a></li>
											<li class=""><a role="button" href="#none"><dl>
														<dt>상영시간</dt>
														<dd class="time">
															<strong>18:30</strong>
															<div class="tooltip">종료 21:01</div>
														</dd>
														<dt>잔여석</dt>
														<dd class="seat">
															<strong>145</strong> / 186
														</dd>
														<dt>상영관</dt>
														<dd class="hall">5관</dd>
													</dl></a></li>
											<li class=""><a role="button" href="#none"><dl>
														<dt>상영시간</dt>
														<dd class="time">
															<strong>19:50</strong>
															<div class="tooltip">종료 22:21</div>
														</dd>
														<dt>잔여석</dt>
														<dd class="seat">
															<strong>133</strong> / 185
														</dd>
														<dt>상영관</dt>
														<dd class="hall">2관</dd>
													</dl></a></li>
											<li class=""><a role="button" href="#none"><dl>
														<dt>상영시간</dt>
														<dd class="time">
															<strong>20:30</strong>
															<div class="tooltip">종료 23:01</div>
														</dd>
														<dt>잔여석</dt>
														<dd class="seat">
															<strong>82</strong> / 131
														</dd>
														<dt>상영관</dt>
														<dd class="hall">1관</dd>
													</dl></a></li>
											<li class=""><a role="button" href="#none"><dl>
														<dt>상영시간</dt>
														<dd class="time">
															<strong>21:20</strong>
															<div class="tooltip">종료 23:51</div>
														</dd>
														<dt>잔여석</dt>
														<dd class="seat">
															<strong>144</strong> / 186
														</dd>
														<dt>상영관</dt>
														<dd class="hall">5관</dd>
													</dl></a></li> -->
										</ul>
									</div>
								</div>
								 <div class="group_rgt">
                        <a type="submit" href="/ticketing/personseat" class="btn_col1" id="link_rpay" style="padding:10px; float: right;">좌석 선택하기</a>
                     </div>
							</div>
						</div>

			

					</div>
					
					<li class="wrap_nav_underline"><span class="nav_underline"></span></li>
					</ul>
				</div>
			</div>
		</div>


	<%@ include file="../footer.jsp"%>
</body>
</html>