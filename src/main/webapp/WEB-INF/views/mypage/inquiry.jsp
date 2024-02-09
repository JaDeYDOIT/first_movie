<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="mypageheader.jsp"%>

<div class="content_wrap">
	<div class="content_top">문의내역</div>
	<div class="content_bottom">
		<table class="inquiry_box">
			<thead class="inquiry_title">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>내용</th>
				</tr>
			</thead>
			<tbody class="inquiry_detail">
				<c:forEach items="${myinquiry}" var="inquiry">
					<tr>
						<td>${inquiry.inquire_id}</td>
						<td>${inquiry.inquire_title}</td>
						<td>${inquiry.inquire_content}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

<%@ include file="mypagefooter.jsp"%>