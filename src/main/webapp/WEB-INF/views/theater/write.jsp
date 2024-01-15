<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<link rel="stylesheet" href="/css/write.css">
<h2>상영관추가</h2>

<script>
	$(document).ready(function() {
	    // 각 select 요소에 대한 공통 클래스를 추가합니다.
	    var selects = $(".dependent-select");
	
	    // 초기에는 두 번째와 세 번째 select 요소를 비활성화합니다.
	    selects.slice(1).prop("disabled", true);
	
	    // 각 select 요소의 변경 이벤트를 처리합니다.
	    selects.change(function() {
	        var currentIndex = selects.index($(this));
	
	        // 현재 select 요소가 마지막 요소가 아니면 다음 요소를 활성화합니다.
	        if (currentIndex < selects.length - 1) {
	            selects.eq(currentIndex + 1).prop("disabled", false);
	        }
	
	        // 현재 select 요소 다음에 오는 모든 요소를 비활성화합니다.
	        selects.slice(currentIndex + 2).prop("disabled", true);
	    });
	});
	

	function submitcheck() {
		//영화명 선택
		let movie_name = $("#movie_name").val()
		if (movie_name == 0) {
			alert("영화명을 선택해 주세요~!");
			return false;
		}
		// 지점명 선택
		let branch_id = $("#branch_id").val()
		if (branch_id == 0) {
			alert("지점명을 선택해 주세요~!");
			return false;
		}
		//상영관 선택
		let screen_id = $("#screen_id").val()
		if (screen_id == null) {
			alert("상영관을 선택해 주세요~!");
			return false;
		}
		//상영날짜 선택
		let movie_showing_date = $("#movie_showing_date").val()
		if (movie_showing_date == "") {
			alert("상영날짜를 선택해 주세요~!");
			return false;
		}
		//상영시간 선택
		let movie_showing_time = $("#movie_showing_time").val()
		if (movie_showing_time == "") {
			alert("상영시간을 선택해 주세요~!");
			return false;
		}
	}
</script>

<form name="moviefrm" id="moviefrm" method="post" action="insert.do"
	enctype="multipart/form-data" onsubmit="return submitcheck()">

	
	<table class="movie_addition">
	
		<tr>
			<td>영화이름</td>
			<td>
				<select name="movie_id" id="movie_name" class="dependent-select">
					<option value='0'>선택</option>
					<c:forEach items="${writelist}" var="list">
						<option value="${list.movie_id}">${list.movie_name}</option> 
					</c:forEach>
				</select>
			</td>
		</tr>
		
		<tr>
			<td>지점</td>
			<td>
				<select name="branch_id" id="branch_id" class="dependent-select">
					<option value='0'>선택</option>
					<c:forEach items="${writebranchlist}" var="list">
							<option value="${list.branch_id}">${list.branch_name}</option> 
					</c:forEach>
				</select>
			<td>
		</tr>
		
		<tr>
			<td>상영관</td>
			<td>
				<select name="screen_id" id="screen_id" class="dependent-select">
				</select>
			<td>
		</tr>
		<tr>
			<td>영화 이미지</td>
			<td><img alt="영화 이미지" id="movie_image"
				style="width: 200px; height: 250px;"></td>
		</tr>
		<tr>
			<td>상영시간</td>
			<td><input type="number" name="movie_running_time"
				id="movie_running_time" disabled></td>
		</tr>
		<tr>
			<td>개봉일</td>
			<td><input type="date" name="movie_production_year"
				id="movie_production_year" disabled></td>
		</tr>
		<tr>
			<td>관람등급</td>
			<td><input type="text" name="movie_audience_rating"
				id="movie_audience_rating" disabled></td>
		</tr>
		<tr>
			<td>장르명</td>
			<td><input type="text" name="movie_genre_name"
				id="movie_genre_name" disabled></td>
		</tr>
		<tr>
			<td>감독이름</td>
			<td><input type="text" name="director_name" id="director_name"
				disabled></td>
		</tr>
		<tr>
			<td>배우이름</td>
			<td><input type="text" name="actor_name" id="actor_name"
				disabled></td>
		</tr>
		<tr>
			<td>상영날짜</td>
			<td><input type="date" name="movie_showing_date"
				id="movie_showing_date"></td>
		</tr>
		<tr>
			<td>상영시간</td>
			<td><input type="time" name="movie_showing_time"
				id="movie_showing_time"></td>
		</tr>
		
		<tr>
			<td></td>
			<td class="execution">
				<input name="reset" id="reset" type="reset"> 
				<input name="submit" id="submit" type="submit"></td>
		</tr>
	</table>
	
	<div id="hi" va>11</div>
</form>

<script>

// 영화선택시 지점 정보변경 시작
	if ($('#movie_name').val() == 0) {
		$('#movie_image').hide();
	}
	$("#movie_name").change(
			function() {
				var movie_id = $('#movie_name').val();
				
				if ($('#movie_name').val() == 0) {
					location.reload();
				} else {
					$('#movie_image').show();
					$.ajax({
						url : '/theater/writelist.do',
						type : 'post',
						data : {
							'movie_id' : movie_id
						},
						error : function(error) {
							alert(error);
							console.log(movie_id);
						},
						success : function(result) {
							$.each(result, function(key, value) {
								
								$("#movie_image").attr('src', value.movie_image);
								$("#movie_running_time").val(value.movie_running_time)
								$("#movie_production_year").val(value.movie_production_year)
								$("#movie_audience_rating").val(value.movie_audience_rating)
								$("#movie_genre_name").val(value.movie_genre_name)
								$("#director_name").val(value.director_name)
								$("#actor_name").val(value.actor_name)
								$("#movie_showing_date").val(value.movie_showing_date)
								$("#movie_showing_time").val(value.movie_showing_time)
								//alert('#'+value.screen_id+'#');
								}// $.each() end
							)//each() end
						}// result() end
					}); // ajax() end
				}// if end
			}// function() end 
	); // change function end

	$("#reset").click(function() {
		location.reload();
	});
	// 영화선택시 정보변경 끝
	
	// 지점선택시 관정보변경 시작

	$("#branch_id").change(
			function() {
				var branch_id = $('#branch_id').val();
					$.ajax({
						url : '/theater/screenlist.do',
						type : 'post',
						data : {
							'branch_id' : branch_id
						},
						error : function(error) {
							alert(error);
							console.log(movie_id);
						},
						success : function(result) {
							 $("#screen_id").empty();

					            // 서버에서 전송한 객체의 'screenajaxlist' 프로퍼티에 접근합니다.
					            $.each(result.screenajaxlist, function(index, value) {
					                // 각각의 값에 대한 옵션을 생성하고 추가합니다.
					                $("#screen_id").append($('<option>', {
					                    value: value.screen_id,
					                    text: value.screen_location
					                }));
					            });
				            // #screen_id의 옵션을 갱신합니다.
				            $("#screen_id").html(options);
				        }
					}); // ajax() end
			}// function() end 
	); // change function end
	
</script>

	<script>
		$("#screen_id").change(function() {
			alert($("#screen_id").val());
			
		});
	</script>

<%@ include file="../footer.jsp"%>