$(function () {
	$("#apibtn").click(function(){
		alert(111);
		$.ajax({
			url:'/theater/kakaoAPI.do',
			datatype: 'json',
			success:function(data){
//				콘솔로 찍을시 값은 나오지만 형변환이 되어서 사용불가능
				console.log(data);
//				받은 데이터를 JSON형식으로 변수에 담음 
				const kakao = JSON.parse(data);
//				openAPI에 있는 함수들로 사용 -> https://developers.kakao.com/docs/latest/ko/kakaopay/single-payment
				let approval =kakao.next_redirect_pc_url;
				window.open(approval);
			},// success() end
			error:function(error){
				alert(error);
			}// error() end
		})// $.ajax() end
	}) // #apibtn click() end
}); //jQuery end  

