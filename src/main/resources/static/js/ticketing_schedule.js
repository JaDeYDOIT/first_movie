let selectedBranchID;
let selectedMovieID;

// mCustomScrollbar 초기화 및 옵션 설정
$(document).ready(function() {
	$(".mCustomScrollbar").mCustomScrollbar({
		theme: "dark-thin", // 테마 설정 (dark 또는 light)
		scrollButtons: {
			enable: true
		}, // 스크롤 버튼 활성화
		scrollInertia: 300, // 스크롤 속도
	});
});

//지역명 클릭
$(document).ready(function() {
	$('.cinemaSelect .depth1').click(function() {
		event.stopPropagation(); // 이벤트 전파 중지

		// 모든 li 요소에서 'selected' 클래스를 제거
		$('.cinemaSelect .depth1').removeClass('active');

		// 클릭된 li 요소에 'selected' 클래스 추가
		$(this).addClass('active');

		// 선택한 지역에 포함된 지점명들 표시
		$('.depth2').css('display', 'none');
		$(this).find('.depth2').css('display', 'block');

		$('.movie_select_wrap').css('display', 'none');
		$('.timeScroll').css('display', 'none');
	});
});

//지점명 클릭
$(document).ready(function() {
	$('.cinemaSelect .depth2 li').click(function() {
		event.stopPropagation(); // 이벤트 전파 중지

		$(this).siblings().removeClass();
		$(this).addClass('active');

		//선택한 지점 저장
		selectedBranchID = $(this).data("theaterBranchID");

		$('.movie_select_wrap').css('display', 'block');
	});
});

//영화 클릭
$(document).ready(
	function() {
		$('.movie_select_wrap li').click(
			function() {
				$(".movie_select_wrap li").removeClass("active")
					.addClass("disabled");

				$(this).removeClass("disabled").addClass("active");
				$('.timeScroll').css('display', 'block');

				//선택한 영화 저장
				selectedMovieID = $(this).data("MovieID");

				//상영 시간 구역에 표시할 영화제목
				let movieGrade = $(".movie_select_wrap .active .ic_grade").attr("class");
				let movieName = $(".movie_select_wrap .active .tit").text();

				$(".time_select_tit .ic_grade").removeClass().addClass(movieGrade);
				$(".time_select_tit strong").text(movieName);
			});
	});

/*$(document).ready(function() {
	$('.cinemaSelect .depth2 li, .movie_select_wrap li').click(function() {
		 var showingTimeParam = {
                branchID: selectedBranchID,
                movieID: selectedMovieID
            };
		
		$.ajax({
			type: "POST",
			contentType: "application/json",
			url: "/api/movies/showtimes",
			data: JSON.stringify(showingTimeParam),
			success: function(result) {
				// 결과를 화면에 출력
				$("#showTimesResult").html("<h2>Show Times:</h2><p>" + result.showTimes.join(", ") + "</p>");
			},
			error: function(error) {
				console.log("Error:", error);
			}
		});
	});
});*/