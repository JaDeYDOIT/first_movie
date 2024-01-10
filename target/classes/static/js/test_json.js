/**
 * 영화진흥위원회 일일박스 오피스 오픈 api - xml 데이터
 */
$(function(){
	init();
	
	$(":button").click(function(){
		let url = "https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.xml?key=9082bdaa5e34f95be0b6aa331a352cf5&targetDt=";
		url += $("#txtYear").val() + $("#selMon").val() + $("#selDay").val();
		
		
		console.log(url);
		
		$.get({
			url:url,
			success:function(data){
				console.log(data);
				
				
				if($(data).find("dailyBoxOffice").text() === ""){
					alert('데이터가 없습니다.');
				}else{
					let resData = "";
					$(data).find("dailyBoxOffice").each(function(){
						//순위
						// resData += $(this).find('rank').text()+" 위";
						
						//증감
						let rankInten = $(this).find('rankInten').text();
						
						// if(rankInten > 0) resData += "( ▲ ";
						// else if(rankInten < 0) resData += "( ▼ ";
						// else resData += "(  ";						
						
						// resData += rankInten+" )";
						
						//영화코드
						let movieCd = $(this).find('movieCd').text();						
						
						//영화이름
						let movieNm = $(this).find('movieNm').text();
						

						resData	+= " <li> "
						resData	+= "	<div class='rank_box'> "
						resData	+= "		<div class='rank'>"+$(this).find('rank').text()+" 위"+"</div> "
						resData	+= "		<img src='https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87907/87907_320.jpg' alt='이미지'><br> "
						resData += "		<div class='movie_name'><a href='#' onclick='javascript:show("+movieCd+")'>"+movieNm+"</a></div>"
						resData	+= "	</div> "
						resData	+= " </li> "
						
						
					})
					$(".movie_list ul").html(resData);
				}				
			}
		})
	})	// $(:button) end
})// $(function()) end
function show(movieCd){
	//영화상세정보 요청
	let url = "https://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.xml?key=9082bdaa5e34f95be0b6aa331a352cf5&movieCd=";
	url += movieCd;
	
	console.log(url);
	
	$.get({
		url:url,
		success:function(data){
			console.log(data);
			
			//영화제목(한글)
			let movieNm = $(data).find("movieNm").text();
			//영화제목(영어)
			let movieNmEn = $(data).find("movieNmEn").text();
			//상영시간
			let showTm = $(data).find("showTm").text();
			//감독명
			let directorNm = $(data).find("director").find("peopleNm").text();
			//출연배우명
			let peopleNm = "";
            //영화 개봉일
            let openDt = $(data).find("openDt").text();
			//관람 등급
			let watchGradeNm = $(data).find("watchGradeNm").text();
			//출연 배우의 수
			let length = $(data).find("actor").find("peopleNm").length;
			//장르명
			let genreNm = $(data).find("genreNm").text();
			//오늘 예매 관객수
			let audiCnt = $(data).length;
			//전체 예매 관객수
			let	audiAcc = $(data).find("peopleNm").length;
 			$(data).find("actor").each(function(idx){ // idx  for(var i=0;i<actor.length)
				if(idx == length - 1){
					peopleNm += $(this).find("peopleNm").text();					
				}else{
					peopleNm += $(this).find("peopleNm").text()+ ", ";
				}
			})
			
			//보여주기
			let resData = "<ul>";
			resData += "<li>영화제목(국문) : "+movieNm+"</li>";
			resData += "<li>영화제목(영문) : "+movieNmEn+"</li>";
			resData += "<li>상영시간 : "+showTm+" 분</li>";
			resData += "<li>감독 : "+directorNm+"</li>";
			resData += "<li>출연배우 : "+peopleNm+"</li>";
            resData += "<li>개봉일 :" +openDt+"</li>";
            resData += "<li>관람등급 :" +watchGradeNm+"</li>";
            resData += "<li>장르명 :" +genreNm+"</li></ul>";
            resData += "<li>오늘예매 관객수 :" +audiCnt+"</li>";
            resData += "<li>전체예매 관객수 :" +audiAcc+"</li>";
            resData += "</ul>";
			
			$(".box3").html(resData);
		}
	})
	
	
	
	
}// show() end
function init(){
	//어제날짜 추출
	let newDate = new Date();
	let year = newDate.getFullYear(); //연도
	let month = newDate.getMonth()+1; //월 0부터 시작
	let day = newDate.getDate()-1; //어제날짜
	
	$("#txtYear").val(year);
	
	if(month < 10){
		month = "0"+month;
	}
	if(day < 10){
		day = "0" + day;
	}
	$("#selMon").val(month);
	$("#selDay").val(day);
}

