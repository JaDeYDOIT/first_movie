<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="/css/customer/notice.css" />
<script>
	$(document).ready(function() {
	    // 각 select 요소에 대한 공통 클래스를 추가합니다.
	    var selects = $(".dependent-select");
	
	    // 초기에는 두 번째와 세 번째 select 요소를 비활성화합니다.
	    selects.slice(1).prop("disabled", true);
	
	    // 각 select 요소의 변경 이벤트를 처리합니다.
	    selects.change(function() {
	        var currentIndex = selects.index($(this));
	
	        // 현재 select 요소가 마지막 요소가 아니면 다음 요소를 활성화합니다.
	        if (currentIndex < selects.length - 1) {
	            selects.eq(currentIndex + 1).prop("disabled", false);
	        }
	
	        // 현재 select 요소 다음에 오는 모든 요소를 비활성화합니다.
	        selects.slice(currentIndex + 2).prop("disabled", true);
	    });
	});
</script>
<form name="rentalfrm" method="post" action="/customer/rentalinsert.do" onsubmit="return rentalcheck()">
	<div id="mtebox"> 
	<div class="rentaldiv">
 		<div class="headtext">영화관 선택</div>
 		<select id="regionselectbox" class="dependent-select" name="rental_inquiry_area">
	 			<option value="0">지역선택</option>
 			<c:forEach items="${region_customer}" var="list">
				<option value="${list.region_id}">${list.region}</option> 
			</c:forEach>
 		</select>
 		<select id="branchselectbox" class="dependent-select" name="rental_inquiry_place">
   			 <option value="0">지점선택</option>
		</select>
		<select id="screenselectbox" class="dependent-select" name="rental_inquiry_theater">
		    <option value="0">상영관 선택</option>
		</select>
 	</div>
 		<div class="rentaldiv">
 			<div class="headtext">관람할영화</div>
 			<select id="movieselectbox" class="dependent-select" name="rental_inquiry_movie">
				<option value="0">영화선택</option> 		
 			</select>
 		</div>
 		<div class="rentaldiv">
	 		<div class="headtext">대관시간</div>
	 		<input type="date" class="dependent-select" name="rental_inquiry_date" id="rental_inquiry_date">
	 		<input type="time" class="dependent-select" name="rental_inquiry_start" id="rental_inquiry_start"> ~
	 		<input type="time" class="dependent-select" name="rental_inquiry_end" id="rental_inquiry_end">
 		</div>
 		<div class="rentaldiv">
	 		<div class="headtext">관람인원</div>
	 		<input type="number" id="people_count" name="rental_inquiry_people_count" id="rental_inquiry_people_count">
 		</div>
 		<div class="rentaldiv">
	 		<div class="headtext">제목</div>
	 		<input type="text" id="titleinp" name="rental_inquiry_title" id="rental_inquiry_title">
 		</div>
 		<div class="textareaspan">
	 		<span class="headtext" id="textareaspan">내용</span>
	 		<textarea class=contentinp name="rental_inquiry_content" id="rental_inquiry_content"></textarea>
 		</div>
 		<div class="rentaldiv">
	 		<div class="headtext">예약자명</div>
	 		<input type="text" class="reservation" name="rental_inquiry_name" id="rental_inquiry_name">
 		</div>
 		<div class="rentaldiv">
 			<div class="headtext">예약자 전화번호</div>
 			<input type="number" id="phoneinp" name="rental_inquiry_phone" id="rental_inquiry_phone">
 		</div>
 		<div class="rentaldiv">
	 		<div class="headtext">비밀번호</div>
	 		<input type="password" class="reservation" name="rental_inquiry_pw" id="rental_inquiry_pw">
 		</div>
 		
 	</div>
 	<div class="button_wrap">
		<input type="submit" value="등록하기"> 	
		<input type="button" value="취소하기" onclick="goBack()">
	</div>
	
</form>
<script>

$("#regionselectbox").change(
		function() {
			var region_id = $('#regionselectbox').val();
				$.ajax({
					url : '/customer/branchselectbox.do',
					type : 'post',
					data : {
						'region_id' : region_id
					},
					error : function(error) {
						alert(error);
					},
					success : function(result) {
						 $("#branchselectbox").empty();
						 $("#branchselectbox").append($('<option>', {
							 text: '지점선택'
						 }));
				            // 서버에서 전송한 객체의 'screenajaxlist' 프로퍼티에 접근합니다.
				            $.each(result.regionselectbox, function(index, value) {
				                // 각각의 값에 대한 옵션을 생성하고 추가합니다.
				                $("#branchselectbox").append($('<option>', {
				                    value: value.branch_id,
				                    text: value.branch_name
				                }));
				            });
			            // #screen_id의 옵션을 갱신합니다.
			            $("#branchselectbox").html(options);
			        }
				}); // ajax() end
		}// function() end 
); // change function end

$("#branchselectbox").change(
		function() {
			var branch_id = $('#branchselectbox').val();
				$.ajax({
					url : '/customer/screenselectbox.do',
					type : 'post',
					data : {
						'branch_id' : branch_id
					},
					error : function(error) {
						alert(error);
					},
					success : function(result) {
						 $("#screenselectbox").empty();
						 $("#screenselectbox").append($('<option>', {
							 text: '상영관 선택'
						 }));
				            $.each(result.screenselectbox, function(index, value) {
				                $("#screenselectbox").append($('<option>', {
				                    value: value.screen_id,
				                    text: value.screen_location
				                }));
				            });
			            // #screen_id의 옵션을 갱신합니다.
			            $("#screenselectbox").html(options);
			        }
				}); // ajax() end
		}// function() end 
); // change function end

$("#screenselectbox").change(
		function() {
			var screen_id = $('#screenselectbox').val();
				$.ajax({
					url : '/customer/movieselectbox.do',
					type : 'post',
					data : {
						'screen_id' : screen_id
					},
					error : function(error) {
						alert(error);
					},
					success : function(result) {
						 $("#movieselectbox").empty();
						 $("#movieselectbox").append($('<option>', {
							 text: '영화선택'
						 }));
				            // 서버에서 전송한 객체의 'screenajaxlist' 프로퍼티에 접근합니다.
				            $.each(result.movieselectbox, function(index, value) {
				                // 각각의 값에 대한 옵션을 생성하고 추가합니다.
				                $("#movieselectbox").append($('<option>', {
				                    value: value.movie_id,
				                    text: value.movie_name
				                }));
				            });
			            // #screen_id의 옵션을 갱신합니다.
			            $("#movieselectbox").html(options);
			        }
				}); // ajax() end
		}// function() end 
); // change function end

$('.contentinp').summernote({
	  // 에디터 높이
	  height: 300,
	  width: 700,
	  // 에디터 한글 설정
	  lang: "ko-KR",
	  // 에디터에 커서 이동 (input창의 autofocus라고 생각하시면 됩니다.)
	  focus : true,
	  toolbar: [
		    // 글꼴 설정
		    ['fontname', ['fontname']],
		    // 글자 크기 설정
		    ['fontsize', ['fontsize']],
		    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
		    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
		    // 글자색
		    ['color', ['forecolor','color']],
		    // 표만들기
		    ['table', ['table']],
		    // 글머리 기호, 번호매기기, 문단정렬
		    ['para', ['ul', 'ol', 'paragraph']],
		    // 줄간격
		    ['height', ['height']],
		    // 그림첨부, 링크만들기, 동영상첨부
		    ['insert',['picture','link','video']],
		    // 코드보기, 확대해서보기, 도움말
		    ['view', ['codeview','fullscreen', 'help']]
		  ],
		  // 추가한 글꼴
		fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
		 // 추가한 폰트사이즈
		fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
	});
	
var content = $('.contentinp').summernote('code');

//HTML 태그 제거
var tempDiv = document.createElement('div');
tempDiv.innerHTML = content;
var plainText = tempDiv.textContent || tempDiv.innerText;

//<p> 태그 제거
var withoutPTags = plainText.replace(/<p>/g, '').replace(/<\/p>/g, '');

	
function goBack() {
	window.location.href = "/customer/notice.do?notice_kind=0";
}

function rentalcheck(){
	var regionselectbox = document.getElementById("regionselectbox").value;
	var branchselectbox = document.getElementById("branchselectbox").value;
	var screenselectbox = document.getElementById("screenselectbox").value;
    var movieselectbox = document.getElementById("movieselectbox").value;
    var check = 1;

    if (member_id.length < 4 || member_id.length >= 15) {
      alert("아이디는 4~15 글자로 작성해주세요");
      return false;
    }
}
</script>
<!--  -->
<%@ include file="../footer.jsp" %>