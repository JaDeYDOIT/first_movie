<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="/css/find.css" />
<style>
#findspanbox span:nth-child(1){
	border: 1px solid black;
	border-bottom: none;
}
	#findspanbox span:nth-child(2){
	border-bottom: 1px solid black;
}
</style>

 	 <div id="findwrap">
	 	<div id="findlogo">
	 		<a href="/main"><img alt="" src="/images/header/logo.png"></a>
	 	</div>
	 
	 
		 <div id="findtitle">아이디&비밀번호 찾기</div>
		 
		 <div id="findspanbox">
		 	<span class="findspan">
		 		<a>아이디 찾기</a>
		 	</span>
		 	<span class="findspan">
		 		<a>비밀번호 찾기</a>
		 	</span>
		 </div>
		 
		 <div id="inputtitle">간편찾기</div>
		 <table id="findtable">
		 	<tr>
		 		<th>이름</th>
		 		<td><input type="text"></td>
		 	</tr>
		 	<tr>
		 		<th>생년월일</th>
		 		<td><input type="text"></td>
		 	</tr>
		 	<tr>
		 		<th>휴대폰번호</th>
		 		<td><input type="text"></td>
		 	</tr>
		 </table>
		 
	 </div>	
	 	
	 	
<%@ include file="../footer.jsp" %>