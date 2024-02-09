<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/mypage.css">
<%@ include file="mypageheader.jsp"%>

<script>
function withdrawal(member_pw){
		if(confirm("정말로 탈퇴하시겠습니까?")){
			alert(member_pw);
			location.href="/mypage/memberdelete.do?member_pw=" + member_pw
		}//if end
	}//cartDelete() end
</script>


<div class="content_wrap">
	<div class="content_top">회원탈퇴</div>
	<div class="content_bottom">
		<input type="text" name="member_pw" id="member_pw"
			placeholder="비밀번호를 입력하세요"> <input type="button" value="삭제"
			onclick="withdrawal(${mypage.member_pw})">
	</div>
</div>


<%@ include file="mypagefooter.jsp"%>