<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<link rel="stylesheet" href="/css/moviewrite.css">
<h2>영화추가</h2>



<script>
	function submitcheck() {		
		//장르명 선택
		let movie_genre_id = $("#movie_genre_id").val()
		alert(movie_genre_id);
		if (movie_genre_id == 0) {
			alert("장르명을 선택해 주세요~!");
			return false;
		}
		
		// 영화이름 선택
		let movie_name = $("#movie_name").val()
		if (movie_name == "") {
			alert("영화명을 입력해 주세요~!");
			return false;
		}
		//상영시간 선택
		let movie_running_time = $("#movie_running_time").val()
		if (movie_running_time == "") {
			alert("상영시간을 입력해 주세요~!");
			return false;
		}
		//개봉일 선택
		let movie_production_year = $("#movie_production_year").val()
		if (movie_production_year == "") {
			alert("상영날짜를 선택해 주세요~!");
			return false;
		}
		//관람등급 선택
		let movie_audience_rating = $("#movie_audience_rating").val()
		if (movie_audience_rating == "") {
			alert("관람등급을 입력해 주세요~!");
			return false;
		}
		//상영시간 선택
		let movie_showing_time = $("#movie_showing_time").val()
		if (movie_showing_time == "") {
			alert("상영시간을 입력해 주세요~!");
			return false;
		}
		
		//감독이름 선택
		let director_name = $("#director_name").val()
		if (director_name == "") {
			alert("감독이름 입력해 주세요~!");
			return false;
		}
	}// submitcheck() end
</script>



<form name="theaterfrm" id="theaterfrm" method="post" action="insert.do" onsubmit="return submitcheck()">
	<table class="movie_addition">
		<tr>
			<td>장르명</td>
			<td>
				<select name="movie_genre_id" id="movie_genre_id">
					<option value="0">장르명을 선택하세요</option>
					<option value="1">드라마</option>
					<option value="2">액션</option>
					<option value="3">미스터리</option>
					<option value="4">다큐멘터리</option>
					<option value="5">로맨스,멜로</option>
					<option value="6">환타지</option>
					<option value="7">공포</option>
					<option value="8">애니메이션</option>
					<option value="9">전쟁</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>영화이름</td>
			<td><input type="text" name="movie_name" id="movie_name"></td>
		</tr>
		<tr>
			<td>상영시간</td>
			<td><input type="number" name="movie_running_time" id="movie_running_time"></td>
		</tr>
		<tr>
			<td>개봉일</td>
			<td><input type="date" name="movie_production_year" id="movie_production_year"></td>
		</tr>
		<tr>
			<td>관람등급</td>
			<td><input type="text" name="movie_audience_rating" id="movie_audience_rating"></td>
		</tr>
		<tr>
			<td>영화 이미지</td>
			<td><input type="text" name="movie_image" id="movie_image"></td>
		</tr>
		<tr>
			<td>영화 비디오</td>
			<td><input type="text" name="movie_video" id="movie_video"></td>
		</tr>
		<tr>
			<td>감독이름</td>
			<td><input type="text" name="director_name" id="director_name"></td>
		</tr>
		<tr>
			<td>배우이름</td>
			<td><input type="text" name="actor_name" id="actor_name"></td>
		</tr>
		<tr>
			<td></td>
			<td class="execution"><input name="reset" id="reset"
				type="reset"> <input name="submit" id="submit" type="submit">
			</td>
		</tr>
	</table>
</form>


<%@ include file="../footer.jsp"%>