<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<link rel="stylesheet" href="/css/write.css">
<h2>상영관추가</h2>
<form name="moviefrm" id="moviefrm" method="post" action="insert.do"
   enctype="multipart/form-data">
   
<!-- 외래키 속성 추가 -->
   <input type="hidden" name="movie_id" id="movie_id" value="movie_id">
   <input type="hidden" name="screen_id" id="screen_id" value="screen_id">
   <input type="hidden" name=branch_id id="branch_id" value="branch_id">
   <!-- 외래키 속성 추가 끝 -->
   <table class="movie_addition">
      <tr>
         <td>영화이름</td>
         <td>
            <select name="movie_name" id="movie_name">
               <option value="0">선택</option>
               <c:forEach items="${moviewritelist}" var="list">
                  <option value="${list.movie_id}">${list.movie_name}</option>
               </c:forEach>
            </select>
         </td>
      </tr>
      <tr>
         <td>영화 이미지</td>
         <td><img alt="영화 이미지" id="movie_image"
            style="width: 200px; height: 250px;"></td>
      </tr>
      <tr>
         <td>상영시간</td>
         <td><input type="number" name="movie_running_time"
            id="movie_running_time" disabled></td>
      </tr>
      <tr>
         <td>개봉일</td>
         <td><input type="date" name="movie_production_year"
            id="movie_production_year" disabled></td>
      </tr>
      <tr>
         <td>관람등급</td>
         <td><input type="text" name="movie_audience_rating"
            id="movie_audience_rating" disabled></td>
      </tr>
      <tr>
         <td>장르명</td>
         <td><input type="text" name="movie_genre_name"
            id="movie_genre_name" disabled></td>
      </tr>
      <tr>
         <td>감독이름</td>
         <td><input type="text" name="director_name" id="director_name"
            disabled></td>
      </tr>
      <tr>
         <td>배우이름</td>
         <td><input type="text" name="actor_name" id="actor_name"
            disabled></td>
      </tr>
      <tr>
         <td>상영날짜</td>
         <td><input type="date" name="movie_showing_date"
            id="movie_showing_date"></td>
      </tr>
      <tr>
         <td>상영시간</td>
         <td><input type="time" name="movie_showing_time"
            id="movie_showing_time"></td>
      </tr>
      <tr>
         <td>전체좌석</td>
         <td><input type="number" name="branch_seats" id="branch_seats"></td>
      </tr>
      <tr>
         <td></td>
         <td class="execution"><input name="reset" id="reset"
            type="reset"> <input name="submit" id="submit" type="submit"></td>
      </tr>
   </table>
</form>

<script>
   if ($('#movie_name').val() == 0) {
      $('#movie_image').hide();
   }
   $("#movie_name").change(
         function() {
            var movie_id = $('#movie_name').val();
            if ($('#movie_name').val() == 0) {
               location.reload();
            } else {
               $('#movie_image').show();
               $.ajax({
                  url : '/theater/writelist.do',
                  type : 'post',
                  data : {
                     'movie_id' : movie_id
                  },
                  error : function(error) {
                     alert(error);
                     console.log(movie_id);
                  },
                  success : function(result) {
                     $.each(result, function(key, value) {
                        $("#movie_image")
                              .attr('src', value.movie_image);
                        $("#movie_running_time").val(
                              value.movie_running_time)
                        $("#movie_production_year").val(
                              value.movie_production_year)
                        $("#movie_audience_rating").val(
                              value.movie_audience_rating)
                        $("#movie_genre_name").val(
                              value.movie_genre_name)
                        $("#director_name").val(value.director_name)
                        $("#actor_name").val(value.actor_name)
                        $("#movie_showing_date").val(
                              value.movie_showing_date)
                        $("#movie_showing_time").val(
                              value.movie_showing_time)
                        $("#branch_seats").val(value.branch_seats)
                     }); //each() end
                  }
               }); //ajax() end
            }
         }); // change function end

   $("#reset").click(function() {
      location.reload();
   });
</script>

<%@ include file="../footer.jsp"%>