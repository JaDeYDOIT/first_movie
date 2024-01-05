let selectedBranchID;
let selectedMovieID;
let selectedDate;

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
		selectedBranchID = $(this).data("theaterbranchid");
		//상영 시간 표시
		showingTime();

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
				selectedMovieID = $(this).data("movieid");
				//상영 시간 표시
				showingTime();

				//상영 시간 구역에 표시할 영화제목
				let movieGrade = $(".movie_select_wrap .active .ic_grade").attr("class");
				let movieName = $(".movie_select_wrap .active .tit").text();

				$(".time_select_tit .ic_grade").removeClass().addClass(movieGrade);
				$(".time_select_tit strong").text(movieName);
			});
	});

//날짜 선택
$(document).ready(function() {
	// 오늘 날짜를 가져오기
	// 오늘 날짜 객체 생성
	const today = new Date();

	// 요일을 가져오기 위한 배열
	const weekdays = ["일", "월", "화", "수", "목", "금", "토"];
	const dayOfWeek = weekdays[today.getDay()]; // 요일 가져오기
	const formattedDate = formatDate(today) + "(" + dayOfWeek + ")";

	//선택한 날짜변수 초기화
	selectedDate = formatDate(today);
	$('.article_time .tit').text(formattedDate);
	$('.owl-stage .month').text(today.getMonth() + 1 + '월');

	for (var i = 0; i <= 7; i++) {
		// 현재 날짜를 생성
		const currentDate = new Date();

		// 현재 날짜에 i일을 더함
		const futureDate = new Date(currentDate.getTime() + i * 24 * 60 * 60 * 1000);

		//요일 표시
		let playweek = "";
		if (i === 0) {
			playweek = "오늘";
		}
		else {
			playweek = weekdays[futureDate.getDay()];
		}

		//토, 일의 css
		let weekStyle = "";
		if (playweek === "토") {
			weekStyle = "sat";
		} else if (playweek === "일") {
			weekStyle = "sun";
		}

		let htmlContent = '<div class="owl-item active" style="width: 52.5px;">' +
			'<li class="item">';

		//오늘 부분에 이번달 표시
		if (i === 0) {
			htmlContent += '<strong class="month">' + (futureDate.getMonth() + 1) + '월' + '</strong>';
		}

		//다음달 첫날 부분에 다음달 표시
		if (futureDate.toDateString() === new Date(today.getFullYear(), today.getMonth() + 1, 1).toDateString()) {
			htmlContent += '<strong class="month">' + (futureDate.getMonth() + 1) + '월' + '</strong>';
		}

		htmlContent +=
			'<a href="#none" class="date ' + weekStyle + '"><label for="radioDate' + i + '">' +
			'<input type="radio" id="radioDate' + i + '" name="radioDate1"' +
			'data-displayyn="Y" data-playdate="' + formatDate(futureDate) + '"' +
			'data-isplaydate="Y" data-playweek="' + playweek + '" checked=""><strong>' + futureDate.getDate() + '</strong><em>' + playweek + '</em></label></a></li>' +
			'</div >';

		$(".article_time .owl-stage").append(htmlContent);
		$('input[name="radioDate1"][data-playweek="오늘"]').prop('checked', true);
	}

	//날짜 클릭시
	$('input[name="radioDate1"]').on('change', function() {
		$('.article_time .tit').text($(this).data("playdate") + "(" + $(this).data("playweek") + ")");
		selectedDate = $(this).data("playdate");
		//상영 시간 표시
		showingTime();
	});

	// 날짜 포맷팅 함수
	function formatDate(date) {
		const year = date.getFullYear();
		const month = padZero(date.getMonth() + 1);
		const day = padZero(date.getDate());
		return year + '-' + month + '-' + day;
	}

	// 숫자를 두 자리로 만들어주는 함수
	function padZero(num) {
		return num < 10 ? '0' + num : num;
	}
});

//------------------------- 상영 시간 표시
async function showingTime() {
	$(".list_time").empty();
	if (selectedBranchID !== undefined && selectedMovieID !== undefined) {
		const showingTimeParam = {
			branchID: selectedBranchID,
			movieID: selectedMovieID,
			showingDate: selectedDate
		};

		try {
			const result = await $.ajax({
				type: "POST",
				contentType: "application/json",
				url: "/screenMovieInfo/showingTime",
				data: JSON.stringify(showingTimeParam)
			});

			for (const screenMovieInfo of result) {
				await processScreenMovieInfo(screenMovieInfo);
			}

			$('.list_time').on('click', '.screenMovieInfo', handleScreenMovieInfoClick);
		} catch (error) {
			console.log("Error:", error);
		}
	}
}

//영화 상영 시간 조회
async function processScreenMovieInfo(screenMovieInfo) {
	try {
		let screen;
		let screenSeatCount;
		let remainSeatCount;

		const screens = await selectScreenById(screenMovieInfo.screen_id);
		const payments = await selectPaymentByMovieInfoId(screenMovieInfo.movie_information_id);

		screen = screens.screen_location;
		screenSeatCount = screens.screen_seat_count;
		remainSeatCount = screens.screen_seat_count;
		for (const payment of payments) {
			remainSeatCount -= payment.adult;
			remainSeatCount -= payment.child;
			remainSeatCount -= payment.silver;
		}

		let htmlContent = '<li class="screenMovieInfo';

		if (remainSeatCount === 0) {
			htmlContent += ' disabled';
		}

		htmlContent += '" data-screenmovieinfoid = ' + screenMovieInfo.movie_information_id + ' data-remainSeatCount=' + remainSeatCount + '>' +
			'<a role="button" href="#none"><dl>' +
			'<dt>상영시간</dt>' +
			'<dd class="time">' +
			'<strong>' + screenMovieInfo.movie_showing_time.slice(0, -3) + '</strong>' +
			'</dd>' +
			'<dt>잔여석</dt>' +
			'<dd class="seat">' +
			'<strong>' + remainSeatCount + '</strong>' + ' / ' + screenSeatCount +
			'</dd>' +
			'<dt>상영관</dt>' +
			'<dd class="hall">' + screen + '</dd>' +
			'</dl></a></li>';

		// 리스트에 HTML 추가
		$(".list_time").append(htmlContent);
	} catch (error) {
		console.log("Error:", error);
	}
}

//상영관 전체 좌석수, 상영관 위치 조회
async function selectScreenById(screenID) {
	try {
		const response = await $.ajax({
			type: "POST",
			contentType: "text/plain",
			url: "/screen/selectScreenById",
			data: screenID.toString()
		});

		return response;
	} catch (error) {
		throw error;
	}
}

//상영 영화의 남은 좌석수를 구하기 위한 함수
async function selectPaymentByMovieInfoId(movieInformationID) {
	try {
		const response = await $.ajax({
			type: "POST",
			contentType: "text/plain",
			url: "/payment/selectPaymentByScreenMovieInfoId",
			data: movieInformationID.toString()
		});

		return response;
	} catch (error) {
		throw error;
	}
}

//상영 시간 클릭시 좌석선택 페이지로 이동하는 클릭 이벤트 핸틀러
function handleScreenMovieInfoClick() {
	/*			screenMovieInfoID: $(this).data("screenmovieinfoid"),
				remainSeatCount: $(this).data("remainseatcount")*/

	window.location.href = "/ticketing/personseat?screenMovieInfoID=" + encodeURIComponent($(this).data("screenmovieinfoid"))
		+ "&remainSeatCount=" + encodeURIComponent($(this).data("remainseatcount"));
}
//------------------------- 상영 시간 표시
