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

//최종 결제수단
$(document).ready(function() {
	$('.group_payment .list_pay_item li>button').click(function() {
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

