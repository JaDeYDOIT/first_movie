<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>
<link rel="stylesheet" href="/css/movielist.css">


<!-- 실컨텐츠 시작 -->
<div class="movie_chart_wrap">
	<!-- Heading Map Multi -->
	<h2>무비차트</h2>

	<div class="submenu">
		<ul>
			<li><a href="" title="선택">예매율순</a></li>
			<li><a href="">평점순</a></li>
			<div class="insert_bt">
				<a href="/movie/write.do">영화추가</a>
			</div>
		</ul>
	</div>

	<div class="movie_chart">
		<ul class="movie_list">
			<c:forEach items="${list}" var="dto" varStatus="vs">
				<li class="movie_item">
					<div class='rank_box'>
						<div class='movie_rank'>영화순위 : ${dto.movie_rank}</div>
						<div class="movie_img">
							<img src="${dto.movie_image}" alt="영화 이미지">
							<div class="click_btn">
								<button onclick="location.href='detail.do?movie_id=${dto.movie_id}'">상세보기</button>
								<button onclick="location.href='/ticketing/schedule'">예매하기</a></button>
							</div>
						</div>
						<ul>
							<li><h3>${dto.movie_name}</h3></li>
							<li>상영시간 : ${dto.movie_running_time}분</li>
							<li>관람등급 : ${dto.movie_audience_rating}</li>
						</ul>
					</div>
				</li>
			</c:forEach>
		</ul><!-- movie_list -->
	</div><!-- 	movie_chart -->
</div>


<script>
$(".movie_img").mouseover(function(){
	$(this).find("button").show()
})
$(".movie_img").mouseout(function(){
	$(this).find("button").hide()
})

</script>




<%@ include file="../footer.jsp"%>