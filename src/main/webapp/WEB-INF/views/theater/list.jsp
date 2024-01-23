<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<link rel="stylesheet" href="/css/theater.css">


<script>
	//    $(function () {
	//       let tabBtn = $(".sel-city");
	//       let tabCont = $(".theater-place ul li");

	//       $(".sel-city").click(function () {
	//          alert('11');
	//          let target = $(this);
	//          let index = target.index();
	//          tabBtn.removeClass('on');
	//          target.addClass('on');
	//          tabCont.hide();
	//          tabCont.eq(index).show();
	//          console.log(target);
	//       })//$(".sel-city").click end
	//    })
</script>


<!--// theater-main -->
<div class="theater_wrap">
	<h2>전체극장</h2>
	<!-- 극장 리스트 시작 -->
	<div class="theater_box" style="height: 80px;">
		<div class="theater_list">
			<ul class="theater_btn">
				<c:forEach items="${theaterlist}" var="theater" varStatus="vs">
					<li><a style="cursor: pointer"
						onclick="commentList('${theater.region_id}')">${theater.region}</a>
					</li>
				</c:forEach>
			</ul>
		</div>
		<div>
			<ul class="theater_cont">
				<c:forEach items="${branchlist}" var="branch" varStatus="vs">
					<li><a href="branchlist.do?region_id=${branch.region_id}&branch_id=${branch.branch_id}">${branch.branch_name }</a></li>
					
					<%-- <li>
						<a href="branchlist.do?region_id=${branch.region_id}&branch_id=${branch.branch_id}" onclick="showTimetable(${movie_showing_date})">
							${branch.branch_name }
						</a>
						</li> --%>
						
				</c:forEach>
			</ul>
		</div>
	</div>
	<!-- 극장 리스트 끝 -->
	<script>
// 		function showTimetable(movie_showing_date){
// 			// alert("hi");
// 			$.ajax({
// 				url : '/theater/showtimetable',
// 				method : 'get',
// 				dataType: 'json',
// 				data : {
// 					movie_showing_date: movie_showing_date,						
// 				}, 
// 				success : function (res){
// 					alert(res.timelist);
// 				},
// 				error : function (e){
// 					alert(e)
// 				}
// 			}) // ajax() ends
// 		} // showTimetable
	
		function commentList(check) {
			$.ajax({
				url : '/theater/check.do',
				type : 'get',
				data : {
					'check' : check
				},
				error : function(error) {
					alert(error);
				}//error end
				,
				success : function(result) {
					let a = ''; //출력할 결과값
					$.each(result, function(key, value) {
						a += '<li><a href="branchlist.do?region_id=' + value.region_id + '&branch_id='
								+ value.branch_id +'">' + value.branch_name
								 /* + '&value.movie_showing_date' + movie_showing_date  */ + '</a></li>';
						//a += '<li> '+ value.branch_name + '</li>';
					}); //each() end

					$(".theater_cont").html(a);

				}//success end
			}); //ajax() end
		}//commentList() en
	</script>

	<!-- 지점 이미지 시작 -->
	<div>
		<img src="${branchimg.branch_img}">
	</div>
	<!-- 지점 이미지 끝 -->

	<div class="screen_insert_wrap">
			<a href="/theater/write.do" ><input type="button" id="screen_insert" value="상영관 영화 추가"></a>
	</div>

	 <!-- 극장상영시간표 시작 -->
     <div class="screenlist_wrap">
      <c:forEach items="${screenlist}" var="screen" varStatus="vs">
         <ul class="screenlist">
            <li><a>호점 : ${screen.branch_name}</a></li>
            <li class="movie_name"><a
               href="/movie/detail.do?movie_id=${screen.movie_id}">영화제목 :
                  ${screen.movie_name}</a><span>${screen.movie_genre_name} /
                  ${screen.movie_running_time}분 / ${screen.movie_production_year}개봉</span></li>
            <li class="screen_information"><a>상영관 정보 :
                  ${screen.movie_type}&nbsp/&nbsp${screen.screen_location}&nbsp/&nbsp${screen.screen_seat_count}석</a></li>
            <li class="Screening_date"><a>상영날짜 :
                  ${screen.movie_showing_date}</a></li>
            <li class=Screening_time><a>상영시간</a>
            <c:forEach items="${timecheck}" var="time">
            <c:if test="${time.screen_id eq screen.screen_id}">
                 <c:if test="${time.movie_id eq screen.movie_id && time.branch_id eq screen.branch_id}">
                     <span><a href="/ticketing/schedule">${time.movie_showing_time}</a></a></span>
                 </c:if>
             </c:if>
             </c:forEach>
            </li>
         </ul>
      </c:forEach>
   </div> 

	<!-- 극장상영시간표 끝 -->

</div>

<script>
//------------------------- 상영 시간 표시
async function showingTime() {
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
/* async function processScreenMovieInfo(screenMovieInfo) {
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
} */

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
   window.location.href = "/ticketing/personseat?screenMovieInfoID=" + encodeURIComponent($(this).data("screenmovieinfoid"))
      + "&remainSeatCount=" + encodeURIComponent($(this).data("remainseatcount"));
}
//------------------------- 상영 시간 표시
</script>
<%@ include file="../footer.jsp"%>
