$(document).ready(function() {
	handleTicketingMenuButtonClick();
});

function handleTicketingMenuButtonClick() {
	$('.ticketing_menu').click(async function() {
		// 이벤트의 기본 동작을 중단
		event.preventDefault();

		const isLoggedInVar = await isLoggedIn();
		if (isLoggedInVar) {
			window.location.href = $(this).attr('href');
		}
		else {
			alert('로그인이 필요합니다!');
		}
	});
}

async function isLoggedIn() {
	const result = $.ajax({
		type: "POST",
		url: "/main/isLoggedIn"
	});

	return result;
}