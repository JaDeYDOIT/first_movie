<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>
<link rel="stylesheet" href="../css/footer.css" />
<link rel="stylesheet" href="../css/alliance.css" media="all" />
<!-- 본문시작 alliance.jsp-->



<!-- container -->
<div class="container">
	<!-- visual text -->
	<div class="main-text">
		<h2>제휴ㆍ광고ㆍ부대사업 문의</h2>
		<p style="font-size: 15px; margin-top: 1%">서비스 제휴 및 광고, 부대사업에 대한
			문의를 할 수 있는 공간입니다.</p>
	</div>
	<!--// visual text -->
	<div id="contents">
		<div class="inner-wrap padding-type pb0">
			<div class="agree-box">
				<dl>
					<dt>
						<span class="bg-chk hide"> <input type="checkbox" id="chk">
							<label for="chk">개인정보 수집에 대한 동의</label>
						</span> <strong>개인정보 수집에 대한 동의</strong> <span class="font-orange">[필수]</span>
					</dt>
					<dd style="font-size: 13px;">
						귀하께서 문의하신 다음의 내역은 법률에 의거 개인정보 수집.이용에 대한 본인 동의가 필요한 항목입니다.<br /> <br />
						[개인정보의 수집 및 이용목적]<br /> 회사는 제휴/광고/부대사업 문의내역의 확인, 요청사항 처리 또는 완료 시
						원활한 의사소통 경로 확보를 위해 수집하고 있습니다.<br /> <br /> [필수 수집하는 개인정보의 항목]<br />
						이름, 회사명, 휴대폰, 이메일, 내용<br /> <br /> [개인정보의 보유기간 및 이용기간]<br /> <span
							class="ismsimp">문의 접수 ~ 처리 완료 후 3년<br /> (단, 관계법령의 규정에
							의하여 보존 할 필요성이 있는 경우에는 관계 법령에 따라 보존)<br /> 자세한 내용은 '개인정보 처리방침'을
							확인하시기 바랍니다.
						</span>
					</dd>
				</dl>
			</div>

			<p class="mt20 mb20">※ 원활한 서비스 이용을 위한 최소한의 개인정보이므로 동의하지 않을 경우
				서비스를 이용하실 수 없습니다</p>

			<p class="txt a-r">
				<span class="font-orange">*</span> 표시 항목은 필수 입력 항목입니다.
			</p>

			<form name="regFrm">
				<input type="hidden" name="inqLclCd" value="INQD04" /> <input
					type="hidden" name="custInqStatCd" value="INQST1" /> <input
					type="hidden" name="cdLvl" value="1" />

				<div class="company-table">
					<div class="table-wrap mt10">
						<table class="board-form va-m">
							<caption>문의구분, 영화관, 이름, 회사명, 연락처, 이메일, 제목, 내용 순서로 입력하는
								제휴ㆍ광고ㆍ부대사업 문의 표</caption>
							<colgroup>
								<col style="width: 150px;">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">문의구분<em class="font-orange">*</em></th>
									<td>
										<div class="radio-box">

											<input type="radio" name="inqMclCd" id="question01"
												value="QD04M01" /> <label for="question01">프로모션 제휴</label>


											<input type="radio" name="inqMclCd" id="question02"
												value="QD04M02" /> <label for="question02">신규극장 개발</label>


											<input type="radio" name="inqMclCd" id="question03"
												value="QD04M03" /> <label for="question03">기타제휴</label> <input
												type="radio" name="inqMclCd" id="question04" value="QD04M04" />
											<label for="question04">부대사업 입점문의</label> <br /> <input
												type="radio" name="inqMclCd" id="question05" value="QD04M05" />
											<label for="question05">스크린광고</label> <input type="radio"
												name="inqMclCd" id="question06" value="QD04M06" /> <label
												for="question06">온라인광고&#40;홈페이지/APP&#41;</label> <input
												type="radio" name="inqMclCd" id="question07" value="QD04M07" />
											<label for="question07">오프라인광고&#40;극장로비 광고&#41;</label> <input
												type="radio" name="inqMclCd" id="question08" value="QD04M08" />
											<label for="question08">기타광고</label> <br />

										</div>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="theater">영화관</label> <em
										class="font-orange">*</em></th>
									<td><select id="theater" class="w150px" title="지역선택">
											<option value="0">지역선택</option>
											<c:forEach items="${regionlist}" var="regionlist">
												<option value="${regionlist.region_id}">${regionlist.region}</option>
											</c:forEach>
									</select> <select name="brchNo" id="theater02" class="w150px"
										title="영화관선택" disabled="disabled">
											<option value="0"><span>영화관선택</span></option>
											<c:forEach items="${alliancelist}" var="alliancelist">
												<option value="${alliancelist.branch_id}">${alliancelist.branch_name}</option>
											</c:forEach>
									</select></td>
								</tr>
								<tr>
									<th scope="row"><label for="name">이름</label> <em
										class="font-orange">*</em></th>
									<td><input type="text" id="name" name="inqurNm"
										class="input-text w150px" value="" /></td>
								</tr>
								<tr>
									<th scope="row"><label for="com-name">회사명</label> <em
										class="font-orange">*</em></th>
									<td><input type="text" id="com-name" name="comNm"
										class="input-text w280px" /></td>
								</tr>
								<tr>
									<th scope="row">휴대폰 <em class="font-orange">*</em></th>
									<td>
										<div>



											<input type="text" id="hp-num" name="hpNum1"
												class="input-text w70px" maxlength="3"> <span>-</span>
											<input type="text" name="hpNum2"
												class="input-text w70px numType" title="핸드폰번호 중간자리 입력"
												maxlength="4"> <span>-</span> <input type="text"
												name="hpNum3" class="input-text w70px numType"
												title="핸드폰번호 마지막자리 입력" maxlength="4">


										</div>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="mail">이메일</label> <em
										class="font-orange">*</em></th>
									<td><input type="text" id="mail" name="rpstEmail"
										class="input-text w280px" value="" /></td>
								</tr>
								<tr>
									<th scope="row"><label for="title">제목</label> <em
										class="font-orange">*</em></th>
									<td><input type="text" id="title" name="custInqTitle"
										class="input-text" /></td>
								</tr>
								<tr>
									<th scope="row"><label for="textarea">내용</label> <em
										class="font-orange">*</em></th>
									<td>
										<div class="textarea">
											<textarea id="textarea" name="custInqCn" rows="5" cols="30"
												title="내용입력" placeholder="※ 제휴를 희망하시는 분야에 대한 내용을 기술해 주세요."
												class="input-textarea"></textarea>
											<div class="util">
												<p class="count">
													<span id="textareaCnt">0</span> / 2000
												</p>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="name">비밀번호</label> <em
										class="font-orange">*</em></th>
									<td><input type="text" id="nonMbInqPw" name="nonMbInqPwd"
										class="input-text w280px pwnew" maxlength="4"
										placeholder="숫자 4자리" oninput="gfn_numberMaxLength(this);" />
										<em class="fc_r ml10">* 제휴/광고/부대사업 문의에 대한 고객정보 보호를 위해
											게시글의 비밀번호를 설정해주세요.</em></td>
								</tr>

							</tbody>
						</table>
					</div>
				</div>

				<div class="btn-group">
					<button type="submit" class="button purple large">문의하기</button>
				</div>
			</form>
		</div>
	</div>
</div>

<script>
	$("#theater").change(function() {
		// #theater02의 선택된 option의 값이 0인 경우
		if ($("#theater option:selected").val() == 0) {
			// #theater02를 비활성화
			$("#theater02").prop("disabled", true);
		} else {
			// 그렇지 않으면 #theater02를 활성화
			$("#theater02").prop("disabled", false);
		}
	});

	//영화선택시 관 정보변경 시작
	$("#theater").change(function() {
		var region_id = $(this).val();
		var selectedValue = $("#theater option:selected").val();
		$.ajax({
			url : '/footer/alliance.do',
			type : 'post',
			data : {
				'ragion_id' : region_id
			// 여기서 'ragion_id'로 변경
			},
			error : function(error) {
				alert(error);
				console.log(region_id);
			},
			success : function(result) {
				// 기존 옵션들을 삭제
				$("#theater02").empty();
				// 지역 선택이 0이 아닌 경우에만 상영관 선택 글을 추가
				if (region_id != 0) {
					// 추가 작업을 수행하고
					$.each(result.alliancelist, function(index, alliance) {
						$("#theater02").append($('<option>', {
							value : alliance.branch_id,
							text : alliance.branch_name
						}));// append() end
					}); // each() end
				} else {
					// 지역 선택이 0인 경우 상영관 선택 글만 추가
					$("#theater02").append($('<option>', {
						value : 0,
						text : "상영관 선택"
					}));
				}//if() end
			}// success() end
		});// ajax() end
	}); // change function end
</script>


<!-- 본문 끝 -->

<%@ include file="../footer.jsp"%>




