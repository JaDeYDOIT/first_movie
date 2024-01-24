document.addEventListener("DOMContentLoaded", function() {
	// 감소 버튼 클릭 시
	document.querySelectorAll('.btn_mins').forEach(function(btn) {
		btn.addEventListener('click', function() {
			updateCount(btn, -1);
		});
	});

	// 증가 버튼 클릭 시
	document.querySelectorAll('.btn_plus').forEach(function(btn) {
		btn.addEventListener('click', function() {
			updateCount(btn, 1);
		});
	});

	let emptySeats;
	var seatContainer = document.getElementById('myContainer');
	initialize();

	async function initialize() {
		await selectEmptySeats();
		await selectCompletedSeats();

		// 좌석 생성 반복문
		for (var row = 1; row <= numRows; row++) {
			// 행 간격 추가
			if (row > 1) {
				var rowGap = document.createElement('div');
				rowGap.className = 'row-gap';
				seatContainer.appendChild(rowGap);
			}

			// 행 레이블 추가
			var rowLabel = document.createElement('span');
			rowLabel.className = 'row-label';
			rowLabel.textContent = String.fromCharCode(64 + row); // A, B, C, ...
			seatContainer.appendChild(rowLabel);


			for (var col = 1; col <= numCols; col++) {
				var seatNumber = String.fromCharCode(64 + row) + col; // A1, A2, ..., B1, B2, ...

				// 열 간격 추가
				if (col > 1) {
					var colGap = document.createElement('span');
					colGap.className = 'col-gap';
					seatContainer.appendChild(colGap);
				}

				// 빈 좌석 여부 확인
				var isEmptySeat = emptySeats.some(function(emptySeat) {
					return emptySeat.row === row && emptySeat.col === col;
				});

				// 통로 -- (숫자)행일 때 (왼쪽)통로에 20px 간격 추가
				if (col === 4) {
					var aisleElement = document.createElement('span');
					aisleElement.className = 'aisle';
					aisleElement.style.marginRight = '20px';
					seatContainer.appendChild(aisleElement);
				}

				// 빈 좌석인 경우 처리
				if (isEmptySeat) {
					continue; // 빈 좌석은 건너뛰기
				}

				// 좌석이 완료된 경우 'completed' 클래스 추가
		        var isCompletedSeat = paymentSeats.some(function(completedSeat) {
		            return completedSeat.payrow === row && completedSeat.paycol === col;
		        });

				// 좌석 요소 생성
				var seatElement = document.createElement('a');
				seatElement.href = "#none";
				seatElement.alt = seatNumber;
				seatElement.className = "sel p0 grNum" + row + " seat"
					+ " no_select" + (isCompletedSeat ? ' completed' : '');
				seatElement.setAttribute('seat-group', 'grNum' + row);
				seatElement.setAttribute('seat-code', row
					+ String(col).padStart(2, '0')); // 예시: 1A01, 1A02, ...

				// 좌석 텍스트 생성
				var seatTextElement = document.createElement('span');
				seatTextElement.className = "f1";
				seatTextElement.textContent = col;

				// 좌석에 텍스트 추가
				seatElement.appendChild(seatTextElement);

				// 좌석을 컨테이너에 추가
				seatContainer.appendChild(seatElement);
			}
		}
	}

	async function selectCompletedSeats() {
		//빈 좌석 데이터 불러오기
		const urlSearchParams = new URLSearchParams(window.location.search);
		const screenMovieInfoID_Value = urlSearchParams.get('screenMovieInfoID');
		try {
			const response = 
			await $.ajax({
				url: "/screenMovieInfo/paymentSeats",
				contentType: "text/plain",
				type: 'POST',
				data: screenMovieInfoID_Value.toString()
			});
			paymentSeats = response;
			// 좌석 생성 및 'completed' 클래스 추가
			return response;
		} catch (error) {
			console.error(error);
		}
	}

	async function selectEmptySeats() {
		//빈 좌석 데이터 불러오기
		const urlSearchParams = new URLSearchParams(window.location.search);
		const screenMovieInfoID = urlSearchParams.get('screenMovieInfoID');
		try {
			const response = 
			await $.ajax({
				url: "/screenMovieInfo/emptySeats",
				contentType: "text/plain",
				type: 'POST',
				data: screenMovieInfoID.toString()
			});
			emptySeats = response;
			return response;
		} catch (error) {
			console.error(error);
		}
	}
	
// 좌석 클릭 시 (jQuery 사용)
$('.seat-container').on('click', '.seat', function() {
  // no_select와 completed 클래스가 있으면 아래의 코드 실행하지 않음
 if ($(this).hasClass('no_select') || $(this).hasClass('completed')) {
    return;
  }
  toggleSeatSelection($(this));
  checkSeatSelectionStatus();
});

// 좌석 선택 함수 (jQuery 사용)
function toggleSeatSelection(seat) {
  seat.toggleClass('selected');
}
});

// totalCount 변수에 접근할 때 totalCountProxy를 사용
var totalCount = 0;

function checkSeatSelectionStatus() {
	// seat 클래스를 가진 모든 div 요소를 선택
	var seatElements = document.querySelectorAll('.seat');

	// 좌석 갯수만큼 다 선택하면 no_select 아니면 해제
	if (totalCount == document.querySelectorAll('.selected').length) {
		// 각 seat 요소에 대해 처리
		seatElements.forEach(function(seatElement) {
			// selected 클래스를 가지지 않으면 no_selected 클래스를 추가
			if (!seatElement.classList.contains('selected')) {
				seatElement.classList.add('no_select');
				// 좌석 선택이 다 끝나면 총 합계 업데이트
				updateTotalPrice();
			}
		});
	} else {
		seatElements.forEach(function(seatElement) {
			seatElement.classList.remove('no_select');
		});
	}
}

function deselectAllSeats() {
	// totalcount가 1에서 0으로 갈 때 select 되어 있는 것도 삭제해야 함
	var seatElements = document.querySelectorAll('.seat');

	seatElements.forEach(function(seatElement) {
		seatElement.classList.remove('selected');
	});
}

function updateCount(btn, increment) {
	var parentLi = btn.closest('li');
	var countElement = parentLi.querySelector('.txt_num');
	var currentCount = parseInt(countElement.textContent);

	// 클릭한 버튼이 감소 버튼이고 현재 총합이 0보다 크면 실행
	if ((btn.classList.contains('btn_mins') && totalCount > 0 && currentCount > 0)
		|| (btn.classList.contains('btn_plus') && totalCount < 8)) {
		currentCount += increment;
		totalCount += increment;
	}
	countElement.textContent = currentCount;
	checkSeatSelectionStatus();
	deselectAllSeats(); //수가 변경될 때마다 좌석 reset
	updateMessage("좌석 선택 후 결제하기 버튼을 클릭하세요");
}

// 메시지 업데이트 함수
function updateMessage(newMessage) {
	var messageElement = document.getElementById('ticketMessageInfo');
	if (messageElement) {
		messageElement.textContent = newMessage;
	}
}

function updateTotalPrice() {
	// 각 가격과 선택된 좌석 수를 이용하여 총 합계 계산
	var adultPrice = 12000;
	var youthPrice = 10000;
	var seniorPrice = 7000;

	var adultCount = parseInt(document.getElementById('person_10')
		.querySelector('.txt_num').textContent);
	var youthCount = parseInt(document.getElementById('person_20')
		.querySelector('.txt_num').textContent);
	var seniorCount = parseInt(document.getElementById('person_12')
		.querySelector('.txt_num').textContent);

	var totalPrice = adultCount * adultPrice + youthCount * youthPrice
		+ seniorCount * seniorPrice;

	// PersonSeatSummery의 합계 금액 업데이트
	var totalPriceElement = document
		.querySelector('.PersonSeatSummeryTotalPrice');
	if (totalPriceElement) {
		totalPriceElement.textContent = totalPrice;
	}
}

// 선택된 좌석 정보를 담을 배열
var selectedSeats = [];
// 선택된 인원수를 담을 배열
var txtNumValueArray = [];

function link_check() {
	if ((totalCount !== document.querySelectorAll('.selected').length) || (totalCount === 0)) {
		alert('인원수에 맞게 좌석을 선택해 주세요.');
	} else {
		var reservationData = {
			// 선택된 좌석 정보를 담을 배열
			selectedSeats: [],
			// 선택된 인원수를 담을 배열
			adult: 0,
			student: 0,
			silver: 0,
			// 총 합계를 저장할 속성
			totalPrice: 0
		};

		// 모든 좌석 요소를 선택
		var seatElements = document.getElementsByClassName('seat');

		// 각 좌석 요소에 대해 확인
		for (var i = 0; i < seatElements.length; i++) {
			var seatElement = seatElements[i];

			// "selected" 클래스가 있는 경우 선택된 좌석으로 간주
			if (seatElement.classList.contains('selected')) {
				// 좌석 정보를 가져와서 배열에 추가
				var seatNumber = seatElement.alt;
				reservationData.selectedSeats.push(seatNumber);
			}
		}

		// person_10값을 totalPrice에 추가하는 코드
		var parentContainer = document.querySelector('#person_10');
		var txtNumElement = parentContainer.querySelector('.txt_num');
		reservationData.adult = parseInt(txtNumElement.textContent, 10);
		// person_20값을 totalPrice에 추가하는 코드
		var parentContainer = document.querySelector('#person_20');
		var txtNumElement = parentContainer.querySelector('.txt_num');
		reservationData.student = parseInt(txtNumElement.textContent, 10);
		// person_12값을 totalPrice에 추가하는 코드
		var parentContainer = document.querySelector('#person_12');
		var txtNumElement = parentContainer.querySelector('.txt_num');
		reservationData.silver = parseInt(txtNumElement.textContent, 10);
		
		// PersonSeatSummeryTotalPrice 값을 totalPrice에 추가하는 코드
		var totalPriceElement = document.querySelector('.PersonSeatSummeryTotalPrice');
		reservationData.totalPrice = parseInt(totalPriceElement.textContent, 10);

		console.log(reservationData);
		
		// URL에 데이터 추가
        var newURL = "/ticketing/orderSettlement?";
        newURL += 'screenMovieInfoID=' + getURLParameter('screenMovieInfoID');
		newURL += '&selectedSeats=' + encodeURIComponent(JSON.stringify(reservationData.selectedSeats));
        newURL += '&price=' + encodeURIComponent(reservationData.totalPrice);
        newURL += '&adult=' + encodeURIComponent(reservationData.adult);
        newURL += '&student=' + encodeURIComponent(reservationData.student);
        newURL += '&silver=' + encodeURIComponent(reservationData.silver);

        // URL로 이동
        window.location.href = newURL;
	}
}

// URL에서 특정 파라미터 값을 가져오는 함수
function getURLParameter(name) {
    name = name.replace(/[\[]/, '\\[').replace(/[\]]/, '\\]');
    var regex = new RegExp('[\\?&]' + name + '=([^&#]*)');
    var results = regex.exec(location.search);
    return results === null ? '' : decodeURIComponent(results[1].replace(/\+/g, ' '));
}