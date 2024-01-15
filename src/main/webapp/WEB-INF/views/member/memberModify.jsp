<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="/css/member.css" />

<script>
	function memberCheck(){
		mempw = $(".mempw").val();
		mempw = mempw.trim();
		
		mempw2 = $(".mempw2").val();
		mempw2 = mempw2.trim();
		
		memphone = $(".memphone").val();
		memphone = memphone.trim();
		
		if(mempw.length < 4 || mempw.length > 15){
			alert("비밀번호는 5~15글자 사이로 작성해주세요");
			$(".mempw").focus();
			return false;
		} else if(mempw !== mempw2){
			alert("비밀번호가 일치하지 않습니다.");
			$(".mempw2").focus();
			return false;
		} else if(memphone.length !== 11){
			alert("전화번호 형식이 올바르지 않습니다.");
			$(".memphone").focus();
			return false;
		} 
		alert("회원수정 완료되었습니다.");
	}
</script>

	<form name="memfrm" id="memfrm" method="post" action="memberupdate" onsubmit="return memberCheck()">
		<h2>회원수정</h2>
	<table>
		<tr>
			<td>아이디*</td>
			<td><input type="text" class="memid" name="member_id" id="memid" value="${memberlist.member_id}" readonly style="background-color: #f2f2f2"></td>
		</tr>
		<tr>
			<td>비밀번호*</td>
			<td><input type="password" class="mempw" name="member_pw"></td>
		</tr>
		<tr>
			<td>비밀번호확인*</td>
			<td><input type="password" class="mempw2"></td>
		</tr>
		<tr>
			<td>이름*</td>
			<td><input type="text" name="member_name" class="memname" value="${memberlist.member_name}" readonly style="background-color: #f2f2f2"></td>
		</tr>
		<tr>
			<td>이메일*</td>
			<td><input type="text" class="mememail" name="member_email" id="mememail" value="${memberlist.member_email}" readonly style="background-color: #f2f2f2"></td>
		</tr>
		<tr>
			<td>헨드폰번호*</td>
			<td><input type="number" name="member_phone" class="memphone"></td>
		</tr>
		<tr>
			<td>생년월일*</td>
			<td><input type="number" name="member_birthdate" class="membirth" value="${memberlist.member_birthdate}" readonly style="background-color: #f2f2f2"></td>
		</tr>
		<tr>
			<td>성별</td>
			<td class="genderwrap">
				<div>
					 <input type="radio" name="member_gender" value="0" id="maleRadio">남자
        	        <input type="radio" name="member_gender" value="1" id="femaleRadio">여자
         	 </div>
			</td>
		</tr>
		<tr>
			<td>수신여부동의</td>
			<td class="snswrap">
				<div>
					<input type="checkbox" id="member_sns_check" name="member_sns_check" value="${memberlist.member_sns_check}">SNS
                	<input type="checkbox" id="member_email_check" name="member_email_check" value="${memberlist.member_email_check}">이메일
            	</div>
			</td>
		</tr>
	</table>
		<div class="submitbut">
			<input type="submit" value="회원수정">
			<input type="button" value="취소" onclick="location.href='memberInfo.do';">
		</div>
	</form>
	
	<script>
		// 체크박스 엘리먼트를 가져옵니다.
		var snscheckbox = document.getElementById("member_sns_check");
		var emailcheckbox = document.getElementById("member_email_check");
	
		 function CheckboxChange(checkbox) {
			    if (checkbox.checked) {
			      checkbox.value = "1";
			      console.log(checkbox.value);
			    } else {
			      checkbox.value = "0";
			      console.log(checkbox.value);
			    }
			  }
		  // 각 체크박스에 이벤트 리스너를 등록합니다.
		  member_sns_check.addEventListener("change", function() {
			  CheckboxChange(member_sns_check);
		  });
	
		  member_email_check.addEventListener("change", function() {
			  CheckboxChange(member_email_check);
		  });
		
		/* 영민작업 시작*/
		/* 기존 체크된 성별 관련 */
	    document.addEventListener('DOMContentLoaded', function () {
	        // member_gender 값에 따라 라디오 버튼 체크 여부 설정
	        var memberGender = '${memberlist.member_gender}'; // 서버 사이드에서 받아온 값
	        var maleRadio = document.getElementById('maleRadio');
	        var femaleRadio = document.getElementById('femaleRadio');
	
	        if (memberGender === '0') {
	            maleRadio.checked = true;
	        } else if (memberGender === '1') {
	            femaleRadio.checked = true;
	        }
	    });
		
		/* 기존 체크된 SNS 관련 */
		document.addEventListener('DOMContentLoaded', function () {
        // 서버에서 받아온 수신여부 동의 정보
        var memberSNSCheck = '${memberlist.member_sns_check}'; // 예: '1' 또는 '0'
        var memberEmailCheck = '${memberlist.member_email_check}'; // 예: '1' 또는 '0'

        // 체크박스 엘리먼트들 가져오기
        var snsCheckbox = document.getElementById('member_sns_check');
        var emailCheckbox = document.getElementById('member_email_check');

        // 수신여부 동의 정보에 따라 체크 여부 동적으로 설정
        snsCheckbox.checked = memberSNSCheck === '1';
        emailCheckbox.checked = memberEmailCheck === '1';
    	});
		/* 영민작업 끝*/
	</script>
<%@ include file="../footer.jsp" %>