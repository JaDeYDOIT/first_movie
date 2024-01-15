// mCustomScrollbar 초기화 및 옵션 설정
$(document).ready(function() {
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 46477e0baa95529adba19dd135cf4f031055b39d
	initialize();
	asyncInitialize();
});

function initialize() {
	// mCustomScrollbar 초기화 및 옵션 설정
	initializeCustomScrollbar();

	//보유 쿠폰의 쿠폰명 불러오기
	selectCouponName();

	//최종 결제수단
	handlePaymentButtonClick();

	//상세 결제수단
	handlePayItemClick();

	//약관 동의
	handleProvisionCheckboxChange();

	//쿠폰사용하기 버튼클릭
	handleApplyCouponButtionClick();

	//사용 가능한 쿠폰 목록
	handleCouponCheckboxChange();

	//쿠폰 취소
	handleCouponCancleButtonClick();

	//선택한 쿠폰 취소 버튼
	handleCouponCloseButtonClick();

	//결제수단이나 약관동의하지 않았을 경우 경고 표기
	showPaymentWarning();

	//최종결제
	handlePaymentConfirmButtonClick();
}

async function asyncInitialize() {
	try {
		//세션에서 고객Id 불러오기
		await getSessionMemberId();
		//고객 포인트
		selectMemberPoint();

		//예매정보 불러오기
		await getTicketingInfo();
		//예매정보 표시
		printTicketingInfo();

		//쿠폰 등록
		handleCouponSubmitButtonClick();
		//사용 포인트값 저장
		handlePointAmountInput();
		//결제 및 할인금액 표기
		printPrice();
	} catch (error) {
		console.log("Error:", error);
	}
}

function initializeCustomScrollbar() {
<<<<<<< HEAD
=======
>>>>>>> e62e91181430c7dcf1fe7c7e507418866377b16a
=======
>>>>>>> 46477e0baa95529adba19dd135cf4f031055b39d
	$(".mCustomScrollbar").mCustomScrollbar({
		theme: "dark-thin", // 테마 설정 (dark 또는 light)
		scrollButtons: {
			enable: true
		}, // 스크롤 버튼 활성화
		scrollInertia: 300, // 스크롤 속도
	});
});

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 46477e0baa95529adba19dd135cf4f031055b39d
async function getTicketingInfo() {
	try {
		const screenMovieInfo = await $.ajax({
			url: "/screenMovieInfo/selectScreenMovieInfoById",
			contentType: "text/plain",
			type: 'POST',
			data: screenMovieInfoID.toString()
		});

		movieShowingDate = screenMovieInfo.movie_showing_date;
		movieShowingTime = screenMovieInfo.movie_showing_time;
		theaterBranchName = await getTheaterBranchName(screenMovieInfo.branch_id);
		screenLocation = await getScreenLocation(screenMovieInfo.screen_id);
		const movieInfo = await getMovieInfo(screenMovieInfo.movie_id);
		movieName = movieInfo.movie_name;
		movieAudienceRating = movieInfo.movie_audience_rating;
		movieImage = movieInfo.movie_image;
		movieRunningTime = movieInfo.movie_running_time;
	} catch (error) {
		console.log("Error:", error);
	}

	async function getMovieInfo(movieID) {
		try {
			const movieInfo = await $.ajax({
				url: "/movie/selectMovieInfoById",
				contentType: "text/plain",
				type: 'POST',
				data: movieID.toString()
			});

			return movieInfo;
		} catch (error) {
			console.log("Error:", error);
		}
	}

	async function getTheaterBranchName(branchID) {
		try {
			const theaterBranch = await $.ajax({
				url: "/theaterBranch/selectTheaterBranchById",
				contentType: "text/plain",
				type: 'POST',
				data: branchID.toString()
			});

			return theaterBranch.branch_name;
		} catch (error) {
			console.log("Error:", error);
		}
	}

	async function getScreenLocation(screenID) {
		try {
			const screen = await $.ajax({
				url: "/screen/selectScreenById",
				contentType: "text/plain",
				type: 'POST',
				data: screenID.toString()
			});

			return screen.screen_location;
		} catch (error) {
			console.log("Error:", error);
		}
	}
}

function printTicketingInfo() {
	//영화 나이등급 표시
	let movieAudienceRatingClass;
	switch (movieAudienceRating) {
		case "전체":
			movieAudienceRatingClass = "gr_all";
			break;

		case "12세":
			movieAudienceRatingClass = "gr_12";
			break;

		case "15세":
			movieAudienceRatingClass = "gr_15";
			break;

		case "18세":
			movieAudienceRatingClass = "gr_18";
			break;

		default:
			console.log("Error:movieAudienceRating is undefined");
	}

	//상영 요일
	const dayOfWeek = new Date(movieShowingDate).getDay();
	const days = ['일', '월', '화', '수', '목', '금', '토'];
	const dayString = days[dayOfWeek];

	//상영종료시간
	const dateObject = new Date('2023-12-20T' + movieShowingTime);
	let movieEndTime = dateObject.setMinutes(dateObject.getMinutes() + movieRunningTime);
	movieEndTime = dateObject.toTimeString().split(' ')[0];

	let studentString = "청소년";
	let adultString = "성인";
	let silverString = "경로";

	if (parseInt(student) === 0) {
		studentString = "";
	}
	else {
		studentString += student;
	}

	if (parseInt(adult) === 0) {
		adultString = "";
	}
	else {
		adultString += adult;
	}

	if (parseInt(silver) === 0) {
		silverString = "";
	}
	else {
		silverString += silver;
	}

	let movieInfoContent =
		'<span class="thm"><img src="' + movieImage + '"></span>' +
		'<strong class="tit"><span class="ic_grade ' + movieAudienceRatingClass + '"></span>' +
		'&nbsp;' + movieName + '</strong>' +
		'<dl class="dlist_infor">' +
		'<dt>일시</dt>' +
		'<dd>' +
		'<strong>' + movieShowingDate + ' (' + dayString + ') ' +
		movieShowingTime.slice(0, -3) + ' ~ ' + movieEndTime.slice(0, -3) + '</strong>' +
		'</dd>' +
		'<dt>영화관</dt>' +
		'<dd>' + theaterBranchName + " " + screenLocation + '</dd>' +
		'<dt>인원</dt>' +
		'<dd>' + adultString + " " + studentString + " " + silverString + '</dd>' +
		'</dl>';

	$('.movie_infor').html(movieInfoContent);

	selectedSeats.sort(function(a, b) {
		var alphaA = a.charAt(0);
		var alphaB = b.charAt(0);
		var numA = parseInt(a.slice(1), 10);
		var numB = parseInt(b.slice(1), 10);

		if (alphaA === alphaB) {
			return numA - numB;
		} else {
			return alphaA.localeCompare(alphaB);
		}
	});

	//예매 좌석 표시
	let seatInfoContent = "";
	selectedSeats.forEach(function(seat) {
		seatInfoContent += seat + " ";
	});
	$('.seat_infor strong').text(seatInfoContent);
}

async function getSessionMemberId() {
	try {
		const response = await $.ajax({
			type: "POST",
			url: "/member/getSessionMemberId"
		});

		memberID = response;
		return response;
	} catch (error) {
		console.log("Error:", error);
	}
}

function printPrice() {
	$('.price strong').text(parseInt(price).toLocaleString());
	$('.total_price strong').text(parseInt(price).toLocaleString());

	$('#layerDiscountCoupon .submit').click(printDiscountPrice);
	$(".point_amount").on("input", printDiscountPrice);
	function printDiscountPrice() {
		payDiscount = Math.round(price * (couponDiscountRate / 100)) + usedPoint;
		$('.discount_amount strong').text(payDiscount.toLocaleString());
		$('.total_price strong').text((price - payDiscount).toLocaleString());
	}
}

function selectCouponName() {
	$('.coupon').each(function() {
		var currentCoupon = $(this);

		$.ajax({
			url: "/coupon/selectCouponById",
			contentType: "text/plain",
			type: 'POST',
			data: currentCoupon.data("couponid").toString(),

			success: function(coupon) {
				currentCoupon.find('.coupon_name').text(coupon.coupon_name);
				currentCoupon.attr('data-coupondiscountrate', coupon.coupon_discount_rate);
			},

			error: function(error) {
				console.log("Error:", error);
			}
		});
	});
}

function selectMemberPoint() {
	$.ajax({
		url: "/point/selectMemberPoint",
		contentType: "text/plain",
		type: 'POST',
		data: memberID.toString(),
		success: function(pointDtoList) {
			$.each(pointDtoList, function(index, pointDto) {
				memberPoint += pointDto.point_history;
			});

			$('.remain_point').text("잔여 포인트 : " + memberPoint);
		},
		error: function(error) {
			console.log("Error:", error);
		}
	});
}

function handlePaymentButtonClick() {
	$('.bx_cate li>button').click(function() {
<<<<<<< HEAD
=======
//최종 결제수단
$(document).ready(function() {
	$('.group_payment .list_pay_item li>button').click(function() {
>>>>>>> e62e91181430c7dcf1fe7c7e507418866377b16a
=======
>>>>>>> 46477e0baa95529adba19dd135cf4f031055b39d
		// 모든 li 요소에서 'selected' 클래스를 제거
		$('.group_payment .list_pay_item li>button').removeClass('active');

		// 클릭된 li 요소에 'selected' 클래스 추가
		$(this).addClass('active');

		//신용카드 클릭시
		if ($('.group_payment .list_pay_item .pay_card').hasClass('active')) {
			// active 클래스가 있다면 article 클래스를 가진 요소를 보이게 함
			$('.group_payment .article_pay_card').css('display', 'block');
		} else {
			// active 클래스가 없다면 article 클래스를 가진 요소를 숨김
			$('.group_payment .article_pay_card').css('display', 'none');
		}

		//간편결재 클릭시
		if ($('.group_payment .list_pay_item .pay_simple').hasClass('active')) {
			// active 클래스가 있다면 article 클래스를 가진 요소를 보이게 함
			$('.group_payment .article_pay_simple').css('display', 'block');
		} else {
			// active 클래스가 없다면 article 클래스를 가진 요소를 숨김
			$('.group_payment .article_pay_simple').css('display', 'none');
		}
	});
});

//약관 동의
$(document).ready(function() {
	$('#chkSavingTerm').change(function() {
		//약관 모두 동의
		if ($(this).is(':checked')) {
			$('.article_payment .bx_provision .provision_list input[type="checkbox"]').prop('checked', true);
			// 체크되었을 때 수행할 동작을 여기에 추가
		} else {
			$('.article_payment .bx_provision .provision_list input[type="checkbox"]').prop('checked', false);
			// 체크 해제되었을 때 수행할 동작을 여기에 추가
		}
	});

	$('.article_payment .bx_provision .provision_list input[type="checkbox"]').click(function() {
		var checkbox = $('.article_payment .bx_provision .provision_list input[type="checkbox"]');

		// 체크박스들 중 모두 체크되어 있는지 확인
		var someUnchecked = checkbox.filter(':checked').length === checkbox.length;

		// 모든 체크박스의 체크 상태를 토글
		$('#chkSavingTerm').prop('checked', someUnchecked);
	});
});

//쿠폰 버튼클릭
$(document).ready(function() {
	// 체크박스가 변경될 때의 이벤트 처리
	$('.btn_coupon').click(function() {
		$('.dim').css('display', 'block');
		$('#layerDiscountCoupon').addClass('active');
	});
});


//등록된 쿠폰목록
$(document).ready(function() {
	// 체크박스가 변경될 때의 이벤트 처리
	$('.list_pay_coupon input[type="checkbox"]').change(function() {
		// 모든 체크박스의 체크를 해제
		$('.list_pay_coupon input[type="checkbox"]').prop('checked', false);
		// 현재 선택된 체크박스만 체크
		$(this).prop('checked', true);
	});

	//등록버튼 클릭
	$('#layerDiscountCoupon .submit').click(function() {
		$('.dim').css('display', 'none');
		$('#layerDiscountCoupon').removeClass('active');

		//체크한 쿠폰을 등록시 페이지에 표기
		$('.wrap_selected_coupon').css('display', 'block');
		var checkedBox = $('.list_pay_coupon input[type="checkbox"]:checked').closest('li');
		var couponName = checkedBox.find('.coupon_name').text();
		var couponPeriod = checkedBox.find('.period').text();
		var couponConstraints = checkedBox.find('dt').text();

		$('.wrap_selected_coupon .coupon_name').text(couponName);
		$('.wrap_selected_coupon .period').text(couponPeriod);
		$('.wrap_selected_coupon dt').text(couponConstraints);
	});

	//취소버튼 클릭
	$('#layerDiscountCoupon .cancle').click(function() {
		$('.dim').css('display', 'none');
		$('#layerDiscountCoupon').removeClass('active');
	});
});

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 46477e0baa95529adba19dd135cf4f031055b39d
function handlePointAmountInput() {
	$(".point_amount").on("input", function() {
		var enteredPoints = $(this).val();

		if (enteredPoints.trim() === "") {
			usedPoint = 0;
		}
		else if (enteredPoints > memberPoint) {
			usedPoint = memberPoint;
			$(this).val(memberPoint);
		}
		else {

			usedPoint = parseInt(enteredPoints.replace(/[^0-9.]/g, ''), 10) || '';
		}
	});
}

function showPaymentWarning() {
	$('.provision input[type="checkbox"]').on('change', showPaymentWarningProcess);
	$('.pay_method_list button').on('click', showPaymentWarningProcess);

	function showPaymentWarningProcess() {
		const provisionCheckboxes = $('.provision_list input[type="checkbox"]');
		const payMethodActive = $('.pay_method_list li.active');
		if (provisionCheckboxes.length === provisionCheckboxes.filter(':checked').length
			&& payMethodActive.length === 1) {
			$('.payment_disabled').text("");
			$('.pay_button').removeClass("disabled");
		}
		else {
			$('.payment_disabled').text("결제를 진행할 수 없습니다.");
			$('.pay_button').addClass("disabled");
		}
	}
}

function handlePaymentConfirmButtonClick() {
	$('.pay_button').click(function() {
		// 새로운 폼 엘리먼트 생성
		let form = document.createElement('form');

		// 폼 속성 설정 (페이지 URL과 전송 방식 설정)
		form.action = '/ticketing/paysuccess'; // 대상 페이지 URL
		form.method = 'post';

		// 폼에 전송할 데이터 추가 (키-값 쌍 형식)
		addFormField(form, 'screenMovieInfoID', screenMovieInfoID);
		addFormField(form, 'adult', adult);
		addFormField(form, 'student', student);
		addFormField(form, 'silver', silver);
		addFormField(form, 'price', price);
		addFormField(form, 'payDiscount', payDiscount);
		addFormField(form, 'payType', '네이버페이');
		addFormField(form, 'selectedSeats', selectedSeats);
		// ... 원하는 만큼 필드 추가

		// 폼을 문서에 추가하고 자동으로 제출
		document.body.appendChild(form);
		form.submit();

		// 폼에 필드를 추가하는 함수
		function addFormField(form, name, value) {
			let input = document.createElement('input');
			input.type = 'hidden';
			input.name = name;
			input.value = value;
			form.appendChild(input);
		}
	});
}

function handleCouponCloseButtonClick() {
	$('.wrap_selected_coupon .btn_close').click(function() {
		$('.wrap_selected_coupon').css('display', 'none');
		selectedCouponID = undefined;
		couponDiscountRate = 0;
	});
}
<<<<<<< HEAD
=======
>>>>>>> e62e91181430c7dcf1fe7c7e507418866377b16a
=======
>>>>>>> 46477e0baa95529adba19dd135cf4f031055b39d
