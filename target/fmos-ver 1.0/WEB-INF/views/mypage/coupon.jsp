<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="mypageheader.jsp"%>

<div class="content_wrap">
	<div class="content_top">쿠폰내역</div>
	<div class="content_bottom">
		<table class="coupon_box">
			<thead class="coupon_title">
				<tr>
					<th>번호</th>
					<th>쿠폰이름</th>
					<th>할인율</th>
					<th>쿠폰진행상태</th>
					<th>발급날짜</th>
					<th>유효기간</th>
					<th>사용날짜</th>
				</tr>
			</thead>
			<tbody class="coupon_detail">
				<c:forEach items="${mycoupon}" var="mycoupon" varStatus="vs">
					<tr>
						<td>${vs.index+1}</td>
						<td>${mycoupon.coupon_name}</td>
						<td>${mycoupon.coupon_discount_rate}%</td>
						<td>${mycoupon.coupon_status}</td>
						<td>${mycoupon.coupon_create_date}</td>
						<td>${mycoupon.coupon_expiration_date}</td>
						<td>${mycoupon.coupon_used_date}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
<!--  -->
<%@ include file="mypagefooter.jsp"%>