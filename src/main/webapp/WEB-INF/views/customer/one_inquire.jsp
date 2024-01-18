<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="/css/customer/customercss.css" />
<script>
	function inquireDelete(inquire_id,inquire_kind){
		alert(inquire_id, inquire_kind)
		if(confirm("해당 상품을 삭제할까요?")){
			location.href='/customer/inquiredelete.do?inquire_id=' + inquire_id + "&inquire_kind=" + inquire_kind;
		}//if end
	}//cartDelete() end
	
	//글쓰기 클릭시 로그인 유무 체크
	function logincheck() {
	  	   //세션 아이디 넘기기
	  	   var checkLogin = "${s_id}";
		
	  	   //로그인을 하지 않은 상태
	  	   if (checkLogin == 'guest') {
	  	        alert("로그인 해주세요.");
	  	    } else {
	  	    	//로그인을 한 상태
	  	        location.href = "/customer/one_inquiryForm.do";
	  	    }
	  	}//product_cart() end
</script>

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
        <div class="num" style="width:10%">번호</div>
        <div class="title" style="width: 60%">제목</div>
        <div class="writer" style="width:10%">답변여부</div>
        <div class="date" style="width:20%">작성일</div>
      </div>
        <c:forEach items="${list}" var="row" varStatus="vs">
        <div id="faqdiv">
		<div class="num" style="width:10%">${vs.count}</div>
        <div class="title" style="width: 60%">
          <a href="view.html">${row.inquire_title}</a>
        </div>
        <div class="writer" style="width:10%">${row.inquire_answer}</div>
	        <div class="date" style="width:20%">${row.inquire_datetime}</div>
	        <c:if test="${row.member_id eq s_id or s_id eq 'fmos'}">
		        <input class="delete" type="button" value="삭제" onclick="inquireDelete(${row.inquire_id},${row.inquire_kind})">
	        </c:if>
        </div>
      </c:forEach>
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
        <input class="gbutt" type="button" value="글쓰기" onclick="return logincheck()">
      </li>
    </div>
  </div>
</div>

<!--  -->
<%@ include file="../footer.jsp" %>
