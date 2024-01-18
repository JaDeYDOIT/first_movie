<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="/css/member.css" />

<script>
	function member(){
		memid = $(".memid").val();
		memid = memid.trim();
		
		mempw = $(".mempw").val();
		mempw = mempw.trim();
		
		mempw2 = $(".mempw2").val();
		mempw2 = mempw2.trim();
		
		memname = $(".memname").val();
		memname = memname.trim();
		
		mememail = $(".mememail").val();
		mememail = memname.trim();
		
		memphone = $(".memphone").val();
		memphone = memphone.trim();
		
		membirth = $(".membirth").val();
		membirth = membirth.trim();
		
		if(memid.length < 4 || memid.length > 15 || memid === null){
			alert("아이디는 4~15글자 사이로 작성해주세요");
			$(".memid").focus();
			return false;
			
		} else if(mempw.length < 4 || mempw.length > 15){
			alert("비밀번호는 4~15글자 사이로 작성해주세요");
			$(".mempw").focus();
			return false;
		} else if(mempw !== mempw2){
			alert("비밀번호가 일치하지 않습니다.");
			$(".mempw2").focus();
			return false;
		} else if(memname < 30){
			alert("이름은 30글자 미만으로 작성해주세요");
			$(".memname").focus();
			return false;
		} else if(mememail < 30) {
			alert("메일주소는 30글자 미만으로 작성해주세요");
			$(".mememail").focus();
			return false;
		} else if(memphone.length !== 11){
			alert("전화번호 형식이 올바르지 않습니다.");
			$(".memphone").focus();
			return false;
		} else if(membirth.length !== 8){
			alert("형식이 올바르지 않습니다.");
			$(".membirth").focus();
			return false;
		}
		alert("회원가입이 완료되었습니다.");
	}
</script>

	<form method="post" action="insert" onsubmit="return member()">
		<h2>회원가입</h2>
	<table>
		<tr>
			<td>아이디*</td>
			<td><input type="text" class="memid" name="member_id" id="memid"></td>
			<td><input type="button" id="idCheck" value="ID중복확인">
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
			<td><input type="text" name="member_name" class="memname"></td>
		</tr>
		<tr>
			<td>이메일*</td>
			<td><input type="text" class="mememail" name="member_email" id="mememail"></td>
			<td><input type="button" value="email중복확인" onclick="emailCheck()" id="emailCheck">
		</tr>
		<tr>
			<td>헨드폰번호*</td>
			<td><input type="number" name="member_phone" class="memphone"></td>
		</tr>
		<tr>
			<td>생년월일*</td>
			<td><input type="number" name="member_birthdate" class="membirth"></td>
		</tr>
		<tr>
			<td>성별</td>
			<td class="genderwrap">
				<div>
					<input type="radio" name="member_gender" value="1" checked>남자
					<input type="radio" name="member_gender" value="2">여자
				</div>
			</td>
		</tr>
		<tr>
			<td>수신여부동의</td>
			<td class="snswrap">
				<div>
					<input type="checkbox" id="member_sns_check" name="member_sns_check" value="0">SNS
					<input type="checkbox" id="member_email_check" name="member_email_check" value="0">이메일
				</div>
			</td>
		</tr>
	</table>
		<div class="submitbut">
			<input type="submit" value="회원등록">
			<input type="button" value="취소" onclick="location.href='/main'">
		</div>
	</form>
	
	<script>
		$("#idCheck").click(function(){
			var memid = $("#memid").val();
				  $.post("idcheckproc.do"
				   ,"memid=" + memid
				   ,idcheckProc
				   );
		}); 
		
		 function idcheckProc(result){
			 var message = "";
			 var memid = $("#memid").val();
			 memid = memid.trim();
			 
			    if (memid == "") {
			        message = "아이디를 입력해주세요";
			    } else if(result == memid) {
			        message = "중복된 아이디 입니다.";
			    } else if(memid.length < 5 || memid.length >= 15){
		    		message = "아이디는 5 ~ 15글자 사이로 작성해주세요"
			    } else {
			    	message = "사용 가능한 아이디 입니다."
			    }

			    // HTML에 script를 추가하여 alert을 띄우기
			    var scriptTag = document.createElement("script");
			    scriptTag.text = "alert('" + message + "');";
			    document.body.appendChild(scriptTag);
		}
	</script>
	
	<script>
		$("#emailCheck").click(function(){
			var mememail = $("#mememail").val();
				  $.post("emailcheck.do"
				   ,"mememail=" + mememail
				   ,emailcheckProc
				   );
		}); 
		
		 function emailcheckProc(result){
			 var message = "";
			 var mememail = $("#mememail").val();
		     mememail = mememail.trim();
		     exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
			 
			    if (mememail == "") {
			        message = "이메일을 작성해주세요";
			    } else if(result == mememail) {
			        message = "중복된 이메일 입니다.";
			    } else if(mememail.length > 30){
		    		message = "이메일은 30글자 이내로 작성해주세요";
			    } else if(exptext.test(mememail)==false) {
			    	message = "이메일 형식이 올바르지 않습니다.";
			    } else if(exptext.test(mememail)==true){
			    	message = "사용 가능한 이메일 입니다."
			    }

			    // HTML에 script를 추가하여 alert을 띄우기
			    var scriptTag = document.createElement("script");
			    scriptTag.text = "alert('" + message + "');";
			    document.body.appendChild(scriptTag);
		}
	</script>
	
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
	</script>
	
	
    	
<%@ include file="../footer.jsp" %>