<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<link rel="stylesheet" href="/css/moviedetail.css">


<div class="movie_detail_wrap">
	<div class='movie_detail'>
		<div class="movie_img_wrap">
			<div class="movie_img">
				<img src="${detail.movie_image}" alt="영화 이미지">
			</div>
		</div>
		<div class="movie_text_wrap">
			<ul class="movie_text">
				<li><h3>${detail.movie_name}</h3></li>
				<li>장르아이디 : ${detail.movie_genre_name}</li>
				<li>상영시간 : ${detail.movie_running_time}</li>
				<li>관람등급 : ${detail.movie_audience_rating} 관람가</li>
				<li>개봉날짜 : ${detail.movie_production_year}</li>
				<li>감독명 : ${detail.director_name}</li>
				<li>배우명 : ${detail.actor_name}</li>
			</ul>
				<button class="Ticketing_btn" onclick="location.href='http:/ticketing/schedule'">예매하기</button>
		</div>
		<!-- movie_text end -->
	</div>
	<!-- movie_detail end -->

	<div class="line"></div>

	<!-- 댓글시작 -->
	<div class="review_wrap">
		<div class="review_insert_wrap">
			<!-- 댓글등록 -->
			<form name="review_insert_form" id="review_insert_form" method="get" action="/movie/insert.do">
				<input type="hidden" id="movie_id" name="movie_id" value="${detail.movie_id}">
				<table class="review">
					<tr>
						<td><input type="text" name="movie_review"
							id="review_insert_content" placeholder="댓글 내용을 입력해 주세요"></td>
						<td><input type="submit" name="review_insertBtn"
							id="review_insertBtn" value="댓글등록"></td>
					</tr>
				</table>
			</form>
		</div>

		<!-- 댓글 목록 -->
		<div class="review_list">
			<table>
				<thead>
					<tr>
						<th>회원아이디</th>
						<th>내용</th>
						<th>작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${review}" var="row" varStatus="vs">
						<tr>
							<td>${row.member_id}</td>
							<td>${row.movie_review}</td>
							<td>${row.creation_date}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<!-- 댓글 끝 -->
</div>
<!-- movie_detail_wrap end -->
<%@ include file="../footer.jsp"%>