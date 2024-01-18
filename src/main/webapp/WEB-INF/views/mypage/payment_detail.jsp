<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/mypage.css">
<%@ include file="mypageheader.jsp"%>



<div class="content_wrap">
	<div class="content_top">결제내역</div>
	<div class="content_bottom">
		<table class="payment_box">
			<thead class="payment_title">
				<tr>
					<th>번호</th>
					<th>영화제목</th>
					<th>러닝타임</th>
					<th>상영날짜</th>
					<th>상영시간</th>
					<th>극장이름</th>
					<th>단가</th>
					<th>할인금액</th>
					<th>걸제시간</th>
				</tr>
			</thead>
			<tbody class="payment_detail">
				<c:forEach items="${payment}" var="payment" varStatus="vs">
					<tr>
						<td>${vs.index+1}</td>
						<td><a href="/movie/detail.do?movie_id=${payment.movie_id}">${payment.movie_name}</a></td>
						<td>${payment.movie_running_time}</td>
						<td>${payment.movie_showing_date}</td>
						<td>${payment.movie_showing_time}</td>
						<td><a
							href="/theater/branchlist.do?region_id=${payment.region_id}&branch_id=${payment.branch_id}">${payment.branch_name}</a></td>
						<td>${payment.price}</td>
						<td>${payment.pay_discount}</td>
						<td>${payment.pay_datetime}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</ul>
	</div>
</div>
<!--  -->
<%@ include file="mypagefooter.jsp"%>