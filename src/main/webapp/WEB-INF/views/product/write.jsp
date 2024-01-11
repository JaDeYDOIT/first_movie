<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="/css/store.css">

   <!-- contents 시작 -->
   <div id="contents">
   	<div id="divAction"></div> <!-- header와 body사이에 있는 빨간 라인 -->
   	<div class="tit-evt"></div>

	<!-- category_product_wrap 시작 -->
	<div class="row">
		<form name="merfrm" id="merfrm" method="post" action="insert.do" enctype="multipart/form-data">
			<table>
				<tbody style="text-align: left;">
					<tr>
						<td>상품 종류</td>
						<td> <select name="product_category_id" class="form-control">
			    				<option value="0">★선택★</option>
			    				<option value="1">패키지</option>
			    				<option value="2">영화관람권</option>
			    				<option value="3">콤보</option>
			    			</select>
			    		</td>
				    </tr>
				    <tr>
						<td>상품명</td>
						<td> <input type="text" name="product_name" class="form-control"> </td>
				    </tr>
				    <tr>
						<td>금액</td>
						<td> <input type="number" name="product_cost" class="form-control"> </td>
				    </tr>
					<tr>
						<td>상품구성</td>
						<td>
						    <textarea rows="5" cols="60" name="product_content" class="form-control"></textarea>     
						</td>
				    </tr>
				    <tr>
						<td>상품사진</td>
						<td> <input type="file" name="img" class="form-control"> </td>
				    </tr>
				    <tr>
						<td colspan="2" align="center">
					   	 <input type="submit" value="상품등록"> 
						</td>
				    </tr>
		   		</tbody>
			</table>
		</form>
	</div>
   	<!-- category_product_wrap 끝 -->
   </div>
   <!-- contents 끝 -->
<%@ include file="../footer.jsp" %>