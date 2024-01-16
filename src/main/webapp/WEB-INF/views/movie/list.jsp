<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>
<link rel="stylesheet" href="/css/movielist.css">

<script>
  
   //페이지 로드 시 호출하여 특정 아이디의 버튼을 활성화 여부를 설정
    window.onload = function () {
    	screenInsertInsertButton();
   };
   // 특정 아이디를 가진 버튼만 활성화하는 함수
   function screenInsertInsertButton() {
      let checkLogin = "${s_id}";
      let insertButton = document.getElementById("insert_bt");
      // 특정 아이디가 "fmos"인 경우에만 버튼을 보이고 활성화
      if (checkLogin === 'fmos' && insertButton) {
          insertButton.style.visibility = "visible"; // 보이도록 설정
          insertButton.disabled = false; // 활성화
        } else if (insertButton) {
          insertButton.style.visibility = "hidden"; // 감추도록 설정
          insertButton.disabled = true; // 비활성화
        }
    }//enableInsertButton() end

    
    
</script>



<!-- 실컨텐츠 시작 -->
<div class="movie_chart_wrap">
	<h2>무비차트</h2>

	<div class="submenu">
		<ul>
			<li><a href="" onclick="return rankList()" title="선택">예매율순</a></li>
			<li><a href="">좋아요순</a></li>
			<button id="insert_bt" disabled="disabled">
				<a href="/movie/write.do">영화추가</a>
			</button>
		</ul>
		
	</div>

	<div class="movie_chart">
		<ul class="movie_list">
			<c:forEach items="${list}" var="dto" varStatus="vs">
				<li class="movie_item">
					<div class='rank_box'>
						<div class='movie_rank'>영화순위 : ${vs.count}</div>
						<div class="movie_img">
							<img src="${dto.movie_image}" alt="영화 이미지">
							<div class="click_btn">
								<button onclick="location.href='detail.do?movie_id=${dto.movie_id}'">상세보기</button>
								<button onclick="location.href='/ticketing/schedule'">예매하기</a></button>
							</div>
						</div>
						<ul>
							<li><h3>${dto.movie_name}</h3></li>
							<li>상영시간 : ${dto.movie_running_time}분</li>
							<li>관람등급 : ${dto.movie_audience_rating}</li>
						</ul>
					</div>
				</li>
			</c:forEach>
		</ul><!-- movie_list -->
	</div><!-- 	movie_chart -->
</div>


<script>
$(".movie_img").mouseover(function(){
	$(this).find("button").show()
})
$(".movie_img").mouseout(function(){
	$(this).find("button").hide()
})
</script>




<%@ include file="../footer.jsp"%>