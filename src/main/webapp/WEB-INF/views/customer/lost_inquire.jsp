<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="/css/customer/customercss.css" />

<div class="board_wrap">
  <div class="board_title">
    <strong>고객센터</strong>
  </div>
  <div class="customerbutt">
    <input type="button" value="FAQ" onclick="location.href='/customer/notice.do?notice_kind=0'">
    <input type="button" value="공지사항" onclick="location.href='/customer/notice.do?notice_kind=1'">
    <input type="button" value="1:1문의" onclick="location.href='/customer/inquire.do?inquire_kind=0'">
    <input type="button" value="분실물문의" onclick="location.href='/customer/inquire.do?inquire_kind=1'">
    <input type="button" value="대관문의" onclick="location.href='/customer/rental_inquiry.do'">
  </div>
  <div class="selectbox">
    <select>
      <option>제목</option>
      <option>작성자</option>
      <option>제목 + 작성자</option>
    </select>
    <input type="text" />
    <i class="fa-solid fa-magnifying-glass fa-2xl"></i>
  </div>

  <div class="board_list_wrap">
    <div class="board_list">
      <div class="top">
        <div class="num">번호</div>
        <div class="writer">영화관이름</div>
        <div class="title" style="width: 55%">제목</div>
        <div class="writer">답변수신여부</div>
        <div class="date">작성일</div>
      </div>
      <div>
        <div class="num">1</div>
        <div class="writer">김이름2</div>
        <div class="title" style="width: 55%">
          <a href="view.html">글 제목이 들어갑니다.</a>
        </div>
        <div class="writer">김이름2</div>
        <div class="date">2021.1.15222</div>
      </div>
    </div>
    <div class="board_page">
      <li><a href="#" class="bt first"><<</a></li>
      <li></li>
      <li><a href="#" class="bt prev"><</a></li>
      <li></li>
      <li><a href="#" class="num on">1</a></li>
      <li></li>
      <li><a href="#" class="num">2</a></li>
      <li></li>
      <li><a href="#" class="num">3</a></li>
      <li></li>
      <li><a href="#" class="num">4</a></li>
      <li></li>
      <li><a href="#" class="num">5</a></li>
      <li></li>
      <li><a href="#" class="bt next">></a></li>
      <li></li>
      <li><a href="#" class="bt last">>></a></li>
      <li>
        <input class="gbutt" type="button" value="글쓰기" onclick="location.href='/customer/lost_inquiryForm.do'">
      </li>
    </div>
  </div>
</div>

<%@ include file="../footer.jsp" %>
