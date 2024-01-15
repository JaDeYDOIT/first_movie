<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<link rel="stylesheet" href="/css/write.css">
<h2>영화추가</h2>
<form name="theaterfrm" id="theaterfrm" method="post" action="insert.do"
	enctype="multipart/form-data">
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
<<<<<<< HEAD
					<option value="7">공포</option>
=======
					<opㅌtion value="7">공포</option>
>>>>>>> d093648c6fe884f0acb58c4d8cea97dddf152cff
					<option value="8">애니메이션</option>
					<option value="9">전쟁</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>영화이름</td>
			<td><input type="text" name="movie_name"></td>
		</tr>
		<tr>
			<td>상영시간</td>
			<td><input type="number" name="movie_running_time"></td>
		</tr>
		<tr>
			<td>개봉일</td>
			<td><input type="date" name="movie_production_year"></td>
		</tr>
		<tr>
			<td>관람등급</td>
			<td><input type="text" name="movie_audience_rating"></td>
		</tr>
		<tr>
			<td>영화 이미지</td>
			<td><input type="text" name="movie_image"></td>
		</tr>
		<tr>
			<td>영화 비디오</td>
			<td><input type="text" name="movie_video"></td>
		</tr>
		<tr>
			<td>감독이름</td>
			<td><input type="text" name="director_name"></td>
		</tr>
		<tr>
			<td>배우이름</td>
			<td><input type="text" name="actor_name"></td>
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