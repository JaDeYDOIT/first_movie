<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="/css/customer/customercss.css" />

<script>
	function noticedelete(notice_id,notice_kind){
		if(confirm("해당 상품을 삭제할까요?")){
			location.href='/customer/noticedelete.do?notice_id=' + notice_id + "&notice_kind=" + notice_kind;
		}//if end
	}//cartDelete() end
</script>
      	
<div class="board_wrap">
  <div class="board_title">
    <strong>고객센터${msg1}</strong>
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
        <div class="writer">구분</div>
        <div class="title" style="width: 80%">제목</div>
      </div>
      <c:forEach items="${list}" var="row" varStatus="vs">
      <div id="faqdiv">
		<div class="num" style="width:10%">${vs.count}</div>
        <div class="writer" style="width:10%">${row.notice_type}</div>
        <div class="title" style="width:80%"><a href="view.html">${row.notice_title}</a></div>
     	 <c:if test="${s_id eq 'fmos'}">
		    <input class="delete" type="button" value="삭제" onclick="noticedelete(${row.notice_id},${row.notice_kind})">
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
      	<style>
          .hidden {
			    display: none;
			}
      	</style>
      <div class="delete-container ${s_id ne 'fmos' ? 'hidden' : ''}">
        <input class="gbutt" type="button" value="글쓰기" onclick="location.href='/customer/noticeForm.do?notice_kind=0'">
      </div>
      </li>
    </div>
  </div>
</div>

<%@ include file="../footer.jsp" %>
