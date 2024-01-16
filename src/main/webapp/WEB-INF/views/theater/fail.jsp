<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<link rel="stylesheet" href="/css/theater.css">


<script>
  
     
   //페이지 로드 시 호출하여 특정 아이디의 버튼을 활성화 여부를 설정
    window.onload = function () {
    	screenInsertInsertButton();
   };
     
   // 특정 아이디를 가진 버튼만 활성화하는 함수
   function screenInsertInsertButton() {
      var checkLogin = "${s_id}";
      var insertButton = document.getElementById("screen_insert");
      // 특정 아이디가 "fmos"인 경우에만 버튼을 보이고 활성화
      if (checkLogin === 'fmos' && insertButton) {
          insertButton.style.visibility = "visible"; // 보이도록 설정
          insertButton.disabled = false; // 활성화
        } else if (insertButton) {
          insertButton.style.visibility = "hidden"; // 감추도록 설정
          insertButton.disabled = true; // 비활성화
        }
    }//enableInsertButton() end
   
   // 페이지 이동을 처리하는 함수
   function navigateToWritePage() {
      var checkLogin = "${s_id}";
      if (checkLogin === 'fmos') {
         window.location.href = '/product/write.do';
      }
   }//navigateToWritePage() end
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
				</c:forEach>
			</ul>
		</div>
	</div>
	<!-- 극장 리스트 끝 -->
	
	<script>
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
                     <span><a href="">${time.movie_showing_time}</a></a></span>
                 </c:if>
             </c:if>
            	</c:forEach>
            </li>
         </ul>
      </c:forEach>
   </div> 

	<!-- 극장상영시간표 끝 -->





</div>
<button id="apibtn">카카오결제</button>
<div>결제 테스트

<script src="/js/kakaoAPI.js"></script>



<%@ include file="../footer.jsp"%>
