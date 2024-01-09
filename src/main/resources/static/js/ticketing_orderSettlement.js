let memberID;
let selectedCouponID;
let memberPoint = 0;
let usedPoint = 0;

$(document).ready(function() {
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

	//쿠폰 등록
	handleCouponSubmitButtonClick();

	//쿠폰 취소
	handleCouponCancleButtonClick();

	//사용 포인트값 저장
	handlePointAmountInput();

	//결제수단이나 약관동의하지 않았을 경우 경고 표기
	showPaymentWarning();
}

async function asyncInitialize() {
	try {
		//세션에서 고객Id 불러오기
		await getSessionMemberId();

		//고객 포인트
		selectMemberPoint();
	} catch (error) {
		console.log("Error:", error);
	}
}

function initializeCustomScrollbar() {
	$(".mCustomScrollbar").mCustomScrollbar({
		theme: "dark-thin", // 테마 설정 (dark 또는 light)
		scrollButtons: {
			enable: true
		}, // 스크롤 버튼 활성화
		scrollInertia: 300, // 스크롤 속도
	});
}

async function getSessionMemberId() {
	const response = await $.ajax({
		type: "POST",
		url: "/member/getSessionMemberId"
	});

	memberID = response;
	console.log(memberID);
	return response;
}

function selectCouponName() {
	$('.coupon').each(function() {
		var currentCoupon = $(this);

		$.ajax({
			url: "/coupon/selectCouponName",
			contentType: "text/plain",
			type: 'POST',
			data: currentCoupon.data("couponid").toString(),

			success: function(result) {
				currentCoupon.find('.coupon_name').text(result);
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
		// 모든 li 요소에서 'selected' 클래스를 제거
		$('.bx_cate li>button').removeClass('active');

		// 클릭된 li 요소에 'selected' 클래스 추가
		$(this).addClass('active');

		//신용카드 클릭시
		if ($('.bx_cate .pay_card').hasClass('active')) {
			// active 클래스가 있다면 article 클래스를 가진 요소를 보이게 함
			$('.pay_method_list .article_pay_card').css('display', 'block');
		} else {
			// active 클래스가 없다면 article 클래스를 가진 요소를 숨김
			$('.pay_method_list .article_pay_card').css('display', 'none');
		}

		//간편결재 클릭시
		if ($('.bx_cate .pay_simple').hasClass('active')) {
			// active 클래스가 있다면 article 클래스를 가진 요소를 보이게 함
			$('.pay_method_list .article_pay_simple').css('display', 'block');
		} else {
			// active 클래스가 없다면 article 클래스를 가진 요소를 숨김
			$('.pay_method_list .article_pay_simple').css('display', 'none');
		}
	});
}

function handlePayItemClick() {
	$('.pay_method_list button').click(function() {
		$('.pay_method_list li').removeClass('active');
		$(this).parent().closest('li').addClass('active');
	});
}

function handleProvisionCheckboxChange() {
	$('#chkSavingTerm').change(function() {
		//약관 모두 동의
		if ($(this).is(':checked')) {
			$('.provision_list input[type="checkbox"]').prop('checked', true);
			// 체크되었을 때 수행할 동작을 여기에 추가
		} else {
			$('.provision_list input[type="checkbox"]').prop('checked', false);
			// 체크 해제되었을 때 수행할 동작을 여기에 추가
		}
	});

	$('.provision_list input[type="checkbox"]').click(function() {
		var checkbox = $('.provision_list input[type="checkbox"]');

		// 체크박스들 중 모두 체크되어 있는지 확인
		var someUnchecked = checkbox.filter(':checked').length === checkbox.length;

		// 모든 체크박스의 체크 상태를 토글
		$('#chkSavingTerm').prop('checked', someUnchecked);
	});
}

function handleApplyCouponButtionClick() {
	$('.btn_coupon').click(function() {
		$('.dim').css('display', 'block');
		$('#layerDiscountCoupon').addClass('active');
	});
}

function handleCouponCheckboxChange() {
	$('.list_pay_coupon input[type="checkbox"]').change(function() {
		// 모든 체크박스의 체크를 해제
		$('.list_pay_coupon input[type="checkbox"]').prop('checked', false);
		// 현재 선택된 체크박스만 체크
		$(this).prop('checked', true);
	});
}

function handleCouponSubmitButtonClick() {
	$('#layerDiscountCoupon .submit').click(function() {
		if ($('.list_pay_coupon input[type="checkbox"]:checked').length === 0) {
			$('.dim').css('display', 'none');
			return;
		}

		$('.dim').css('display', 'none');
		$('#layerDiscountCoupon').removeClass('active');

		//체크한 쿠폰을 등록시 페이지에 표기
		$('.wrap_selected_coupon').css('display', 'block');
		var checkedBox = $('.list_pay_coupon input[type="checkbox"]:checked').closest('li');
		var couponName = checkedBox.find('.coupon_name').text();
		var couponPeriod = checkedBox.find('.period').text();
		var couponConstraints = checkedBox.find('dt').text();
		selectedCouponID = checkedBox.data("couponid");

		$('.wrap_selected_coupon .coupon_name').text(couponName);
		$('.wrap_selected_coupon .period').text(couponPeriod);
		$('.wrap_selected_coupon dt').text(couponConstraints);
	});
}

function handleCouponCancleButtonClick() {
	$('#layerDiscountCoupon .cancle').click(function() {
		$('.dim').css('display', 'none');
		$('#layerDiscountCoupon').removeClass('active');
	});
}

function handlePointAmountInput() {
	$(".point_amount").on("input", function() {
		var enteredPoints = $(this).val();

		// 입력값을 숫자로 변환
		enteredPoints = parseInt(enteredPoints);

		usedPoint = enteredPoints;
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
		}
		else {
			$('.payment_disabled').text("결제를 진행할 수 없습니다.");
		}
	}
}

function cancelCoupon() {
	$('.wrap_selected_coupon').css('display', 'none');
	selectedCouponID = undefined;
}
