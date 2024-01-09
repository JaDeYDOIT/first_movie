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
<form name="rentalfrm" method="post" action="/customer/rentalinsert.do">
 <table>
 	<tr>
 		<th>영화관 선택</th>
 		<td>
 		<select id="regionselectbox" class="dependent-select">
	 			<option>지역선택</option>
 			<c:forEach items="${region_customer}" var="list">
				<option value="${list.region_id}">${list.region}</option> 
			</c:forEach>
 		</select>
 		<select id="branchselectbox" class="dependent-select">
 			<option value="0">지점선택</option>
 		</select>
 		<select id="screenselectbox" class="dependent-select">
 			<option>상영관 선택</option>
 		</select>
 		</td>
 	</tr>
 	<tr>
 		<th>대관시간</th>
 		<td>
 		<input type="date" class="dependent-select">
 		<input type="time" class="dependent-select">
 		<input type="time" class="dependent-select">
 		</td>
 		
 	</tr>
 	<tr>
 		<th>이메일</th>
 		<td><input type="text" class="emailinp"></td>
 	</tr>
 	<tr>
 		<th>휴대전화</th>
 		<td class="phoneinp">
	 		<input type="number"><span>-</span>
	 		<input type="number"><span>-</span>
 			<input type="number">
 		</td>
 	</tr>
 	<tr>
 		<th>제목</th>
 		<td><input type="text" class="titleinp"></td>
 	</tr>
 	<tr>
 		<th>내용</th>
 		<td><input type="text" class="contentinp"></td>
 	</tr>
 	<tr>
 		<th>사진첨부</th>
 		<td><input type="file" class="photoinp"></td>
 	</tr>
 </table>
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
					url : '/customer/regionselectbox.do',
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
							 value: 0,
							 text: '지점선택'
						 }));
				            // 서버에서 전송한 객체의 'screenajaxlist' 프로퍼티에 접근합니다.
				            $.each(result.checkList, function(index, value) {
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
				            // 서버에서 전송한 객체의 'screenajaxlist' 프로퍼티에 접근합니다.
				            $.each(result.screenselectbox, function(index, value) {
				                // 각각의 값에 대한 옵션을 생성하고 추가합니다.
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
function goBack() {
	window.location.href = "/customer/notice.do?notice_kind=0";
}
</script>
<%@ include file="../footer.jsp" %>