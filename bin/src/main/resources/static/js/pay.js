$(document).ready(function() {
	//결제하기 버튼 클릭
	handlePayConfirmButtonClick();
});

function handlePayConfirmButtonClick() {
	document.getElementById("confirmfrm").addEventListener("submit", function(event) {
		event.preventDefault(); // 폼의 기본 동작 방지
		requestPay(); // 결제 함수 호출
	});
}//handlePayConfirmButtonClick() end

function requestPay() {
	var IMP = window.IMP;
	IMP.init('imp82132377'); // 실제 가맹점 식별코드로 변경

	IMP.request_pay({
		pg: "html5_inicis",
		pay_method: "card",
		merchant_uid: "merchant_" + new Date().getTime(),
		name: "상품",
		amount: 100,
		buyer_tel: buyerPhone,
		buyer_name: buyerId,
	}, function(rsp) {
		if (rsp.success) {
			postOrdersuccess(rsp); // 결제 응답을 서버로 전송
		} else {
			// 결제 실패 시
			alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
		}
	});

	function postOrdersuccess(rsp) {
		// 새로운 폼 엘리먼트 생성
		let form = document.createElement('form');

		// 폼 속성 설정 (페이지 URL과 전송 방식 설정)
		form.action = '/order/msgView.do'; // 대상 페이지 URL
		form.method = 'post';

		// 폼에 전송할 데이터 추가 (키-값 쌍 형식)
		addFormField(form, 'cart_payment_id', rsp.merchant_uid);
		addFormField(form, 'member_id', rsp.buyer_name);
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
		}//addFormField() end
	}//postOrdersuccess() end
}//requestPay() end