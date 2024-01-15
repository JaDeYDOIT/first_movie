<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<link rel="stylesheet" href="/css/default.css">
<link rel="stylesheet" href="/css/owl.css">
<link rel="stylesheet" href="/css/swiper.css">
<link rel="stylesheet" href="/css/jquery.mCustomScrollbar.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/content.css">
<link rel="stylesheet" href="/css/content_lc21new.css">
<link rel="stylesheet" href="/css/dev.css">
<link rel="stylesheet" href="/css/ticket_seat.css">

<script>
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

      // 행과 열의 개수 설정
      var numRows = 5; // 예시로 5개의 행 사용
      var numCols = 10; // 예시로 10개의 열 사용

      var emptySeats = [ {
         row : 1,
         col : 5
      }, // 첫 번째 빈 좌석 위치
      {
         row : 3,
         col : 8
      }, // 두 번째 빈 좌석 위치
      // 추가적인 빈 좌석은 필요에 따라 배열에 계속 추가
      ];

      var seatContainer = document.querySelector('.seat-container');

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

            // 좌석 요소 생성
            var seatElement = document.createElement('a');
            seatElement.href = "#none";
            seatElement.alt = "좌석 번호:" + seatNumber + " 일반석";
            seatElement.className = "sel p0 grNum" + row + " seat"
                  + " no_select";
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

      // 좌석 클릭 시
      document.querySelectorAll('.seat').forEach(function(seat) {
         seat.addEventListener('click', function() {
            // 클래스가 있으면 아래의 코드 실행하지 않음
            if (seat.classList.contains('no_select')) {
               return;
            }
            toggleSeatSelection(seat);
            checkSeatSelectionStatus();
         });
      });

      function toggleSeatSelection(seat) {
         seat.classList.toggle('selected');
      }

   });

   // totalCount 변수에 접근할 때 totalCountProxy를 사용
   var totalCount = 0;

   function checkSeatSelectionStatus() {
      // seat 클래스를 가진 모든 div 요소를 선택
      var seatElements = document.querySelectorAll('.seat');

      // 좌석 갯수만큼 다 선택하면 no_selected 아니면 헤제
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
      // totalcount가 1에서 0으로 갈 때 selected 되어 있는 것도 삭제해야 함
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
      deselectAllSeats();
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
   
   function validateForm() {
       // 결제하기 버튼을 참조
       var paymentButton = document.getElementById('link_rpay');

       // 여기에 원하는 유효성 검사 로직을 추가
       // 예시: 결제하기 버튼이 특정 조건을 만족하지 않으면 유효성 실패로 처리 
       if (totalCount == document.querySelectorAll('.selected').length) {
           alert('결제하기 버튼이 유효하지 않습니다.');
           return false; // 양식 제출을 중지
       }

       // 유효성 검사를 통과하면 양식을 제출
       return true;
   }
</script>

<br>
<div class="wrap_reserve">
   <h2 class="hidden">예매하기</h2>
   <div id="PersonSeatHeader" class="section_step_tit">
      <ul>
         <li class="step01 prev"><a href="/ticketing/schedule"><strong
               class="tit"><span>01</span><br>상영시간</strong>
               <div class="bx_con">
                  <dl>
                     <dt>선택한 영화 제목</dt>
                     <dd>서울의 봄</dd>
                     <dt>선택한 상영관</dt>
                     <dd>산본피트인 7관</dd>
                     <dt>선택한 상영 날짜</dt>
                     <dd>2023-12-18 (월)</dd>
                     <dt>선택한 시간</dt>
                     <dd>15:10 ~ 17:41</dd>
                  </dl>
               </div></a></li>
         <li class="step02 active"><a href="#reserveStep02"> <strong
               class="tit"><span>02</span><br>인원/좌석</strong>
               <div class="bx_con">
                  <dl>
                     <dt>선택한 인원</dt>
                     <dd>
                        <span id="preview_person_info">성인</span>
                     </dd>
                     <dt>선택한 좌석</dt>
                     <dd class="seat_list">
                        <span id="preview_seat_info">a01</span>
                     </dd>
                  </dl>
               </div></a></li>
         <li class="step03"><a style="cursor: default;"><strong
               class="tit"><span>03</span><br>결제</strong>
               <div class="bx_con">
                  <dl>
                     <dt>티켓금액</dt>
                     <dd>0원</dd>
                     <dt>할인금액</dt>
                     <dd>0원</dd>
                     <dt>총합계</dt>
                     <dd>0원</dd>
                  </dl>
               </div></a></li>
         <li><a style="cursor: default;"><strong class="tit"><span>04</span><br>결제완료</strong></a></li>
      </ul>
   </div>

   <div id="reserveStep01" class="section_step_con step01">
      <h3 class="hidden">상영시간</h3>
   </div>

   <div id="reserveStep02" class="section_step_con step02 active">
      <h3 class="hidden">인원/좌석</h3>

      <div class="article article_seat">
         <div class="group_top">
            <h4 class="tit">인원/좌석 선택</h4>
            <p class="txt" id="txtPeopleMaxcount">인원은 최대 8명까지 선택 가능합니다.</p>
         </div>
         <div class="inner">

            <div id="PersonSeatCount">
               <div class="select_num_people_wrap">
                  <h5 class="hidden">인원선택</h5>
                  <div class="movie_infor">
                     <h6 class="hidden">예매 정보</h6>
                     
                     <span class="thm"><img
                        src="https://cf.lottecinema.co.kr//Media/MovieFile/MovieImg/202311/20443_103_1.jpg"></span>
                     <div class="group_infor">
                        <div class="bx_tit">
                           <span class="ic_grade gr_12">관람가</span> <strong>서울의 봄
                              (2D)</strong>
                        </div>
                        <dl>
                           <dt>일시</dt>
                           <dd class="sub_info1">
                              23.12.18<em>(월)</em> <span class="time">15:10 ~ 17:41</span>
                           </dd>
                           <dt>영화관</dt>
                           <dd class="sub_info1">산본피트인 · 7관</dd>
                        </dl>
                     </div>
                  </div>

                  <div class="count_people">
                     <h6 class="hidden">인원선택</h6>
                     <ul>
                        <li id="person_10" data-code="10" data-peple="성인" data-count="0"
                           value="12000"><strong class="tit">성인</strong> <span
                           class="bx_num">
                              <button class="btn_mins" id="Minus|10">감소</button>
                              <div class="txt_num">0</div>
                              <button class="btn_plus" id="Plus|10">증가</button>
                        </span></li>
                        <li id="person_20" data-code="20" data-peple="청소년"
                           data-count="0" value="10000"><strong class="tit">청소년</strong>
                           <span class="bx_num">
                              <button class="btn_mins" id="Minus|20">감소</button>
                              <div class="txt_num">0</div>
                              <button class="btn_plus" id="Plus|20">증가</button>
                        </span></li>
                        <li id="person_12" data-code="12" data-peple="경로" data-count="0"
                           value="7000"><strong class="tit">경로</strong> <span
                           class="bx_num">
                              <button class="btn_mins" id="Minus|12">감소</button>
                              <div class="txt_num">0</div>
                              <button class="btn_plus" id="Plus|12">증가</button>
                        </span></li>
                     </ul>
                  </div>
               </div>
            </div>

            <div class="select_seat_wrap">
               <h5 class="hidden">좌석선택</h5>
               <div class="top_txt_info">
                  <p id="ticketMessageInfo">인원을 선택하세요.</p>
               </div>
               <div id="PersonSeatSelect"></div>

               <div id="container" class="seat_wrap">
                  <article class="mseat_wrap">
                     <div class="mseat_inner">

                        <div
                           class="mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar"
                           data-mcs-theme="minimal-dark"
                           style="position: relative; overflow: visible; height: 470px;">
                           <div id="mCSB_1"
                              class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
                              style="max-height: none;" tabindex="0">
                              <div id="mCSB_1_container"
                                 class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
                                 style="position: relative; top: 0; left: 0;" dir="ltr">
                                 <div class="meat_door_pos" id="scrollWrap">
                                    <div class="mseat_hidden">

                                       <span class="title_screen1">SCREEN</span>

                                       <div class="showMap">
                                          <div class="floor_bx seatSet1">
                                             <span class="floor_tit" style="display: none;">10F</span>
                                             <div class="seat_area"
                                                style="margin-top: 50px; width: 473px; height: 358px;">
                                                <!-- HTML -->
                                                <div class="seat-container">
                                                
                                                   <!-- 좌석 생성을 위한 컨테이너 -->
                                                </div>
                                                <div class="seat_btm_box">
                                                   <div class="seat_type_box">
                                                      <div class="top_info">
                                                         <span class="seat_type1">선택좌석</span> <span
                                                            class="seat_type2">선택가능</span> <span
                                                            class="seat_type3">예매완료</span> <span
                                                            class="seat_type4">선택불가</span>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>

                                          </div>
                                       </div>
                                    </div>
                                    <div id="mCSB_1_scrollbar_vertical"
                                       class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
                                       style="display: none;">
                                       <div class="mCSB_draggerContainer">
                                          <div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
                                             style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
                                             <div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
                                          </div>
                                          <div class="mCSB_draggerRail"></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>

                              <div class="notice_box" style="display: none;">
                                 <h6 class="tit_info">이용안내</h6>
                                 <ul class="list_txt ty3">
                                    <li>12세 미만의 고객님(영,유아 포함)은 부모님 또는 보호자를 동반하여도 관람이 불가합니다.</li>
                                    <li>영화 관람 시, 신분증을 지참하여 주시기 바랍니다.</li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                  </article>
               </div>

            </div>



            <div id="PersonSeatSummery">
               <div class="select_seat_result">
                  <div class="group_lft">
                     <dl class="total_price">
                        <dt>총 합계</dt>
                        <dd>
                           <strong class="PersonSeatSummeryTotalPrice">0</strong>&nbsp;원
                        </dd>
                     </dl>
                  </div>
                  <form id="paymentForm" onsubmit="return validateForm()">
                     <div class="group_rgt">
                        <a href="#" class="btn_col1" id="link_rpay">결제하기</a>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </div>



   <div id="reserveStep03" class="section_step_con step03 ">
      <h3 class="hidden">결제</h3>

   </div>



   <div id="reserveStep04" class="section_step_con step04 ">
      <h3 class="hidden">결제완료</h3>

   </div>

</div>
<br>

<%@ include file="../footer.jsp"%>