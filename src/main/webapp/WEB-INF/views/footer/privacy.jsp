<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<button id="scrollTop"  onclick="scrollToTop()">맨 위로</button>
<script>
//페이지 로드 후 실행되는 함수
document.addEventListener("DOMContentLoaded", function() {
    // 스크롤 이벤트 감지
    window.addEventListener("scroll", function() {
        // 현재 스크롤 위치
        var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;

        // 스크롤 위치가 일정 값 이상이면 버튼을 보이게 함
        if (scrollTop > 100) {
            document.getElementById("scrollTop").style.display = "block";
        } else {
            document.getElementById("scrollTop").style.display = "none";
        }
    });
});

// 맨 위로 스크롤하는 함수
function scrollToTop() {
    // 스크롤 애니메이션을 추가하려면 jQuery를 사용할 수 있습니다.
    // $("html, body").animate({ scrollTop: 0 }, "slow");

    // 혹은 일반 JavaScript로 스크롤을 맨 위로 이동할 수 있습니다.
    document.body.scrollTop = 0; // For Safari
    document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
}
</script>
<div id="privacy_wrap">
	<h2>개인정보처리방침</h2>
	<div class="contents">
		<div class="section1">
			<p><strong>first_movie</strong> 는 중앙(주)(이하 '회사')은(는) 개인정보보호법에 따라 이용자의 개인정보 보호 및 권익을
				보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 개인정보 처리방침을 두고 있습니다.
				회사는 개인정보 처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.</p>
		</div>

		<div class="section2">
			<ul class="dot-list mb10">
				<li>항목을 선택 하시면 해당 내용으로 이동합니다.</li>
			</ul>
			<div class="terms-content">
				<div class="terms_bx clearfix agreeType1">
					<ul class="pull-left" id="titleLeft" style="width: 50%;">
						<li><a class="on" href="#v45_1" title="제1조 총칙 보기"><strong>제1조.</strong>
								총칙</a></li>
						<li><a href="#v45_2" title="제2조 개인정보의 수집항목 및 이용목적 보기"><strong>제2조.</strong>
								개인정보의 수집항목 및 이용목적</a></li>
						<li><a href="#v45_3" title="제3조 개인정보의 수집방법 및 수집 동의 보기"><strong>제3조.</strong>
								개인정보의 수집 방법 및 수집 동의</a></li>
						<li><a href="#v45_4" title="제4조 개인정보호 자동수집장치의 설치*운영 및 그 거부방법 보기"><strong>제4조.</strong>
								개인정보호 자동수집장치의 설치*운영 및 그 거부방법</a></li>
						<li><a href="#v45_5" title="제5조 개인정보의 이용 및 제3자 제공 보기"><strong>제5조.</strong>
								개인정보의 이용 및 제3자 제공</a></li>
						<li><a href="#v45_6" title="제6조 개인정보의 처리위탁 보기"><strong>제6조.</strong>
								개인정보의 처리위탁</a></li>
						<li><a href="#v45_7" title="제7조 개인정보의 이용*보관 기간 보기"><strong>제7조.</strong>
								개인정보의 이용*보관 기간</a></li>
						<li><a href="#v45_8" title="제8조 개인정보의 파기 보기"><strong>제8조.</strong>
								개인정보의 파기</a></li>
						<li><a href="#v45_9" title="제9조 고객의 권리와 그 행사방법 보기"><strong>제9조.</strong>
								고객의 권리와 그 행사방법</a></li>
						<li><a href="#v45_10" title="제10조 개인정보 수집*이용 제공에 대한 동의 철회 보기"><strong>제10조.</strong>
								개인정보 수집*이용 제공에 대한 동의 철회</a></li>
					</ul>
					<ul class="pull-left" id="titleRight" style="width: 50%;">
						<li><a href="#v45_11" title="제11조 개인정보보호를 위한 기술적*관리적 대책 보기"><strong>제11조.</strong>
								개인정보보호를 위한 기술적*관리적 대책</a></li>
						<li><a href="#v45_12" title="제12조 홈페이지의 게시물 보기"><strong>제12조.</strong>
								홈페이지의 게시물</a></li>
						<li><a href="#v45_13" title="제13조 의견수렴 및 불만처리 보기"><strong>제13조.</strong>
								의견수렴 및 불만처리</a></li>
						<li><a href="#v45_14" title="제14조 개인정보보호 책임자 보기"><strong>제14조.</strong>
								개인정보보호 책임자</a></li>
						
					</ul>
				</div>
			</div>
		</div>
		<!-- 개인정보처리방침 -->
		<div id="footer_terms" class="terms_text term_text" tabindex="0">
			<div>
				<div>
<style type="text/css">
dl {
	counter-reset: my-counter;
}

dt {
	font-weight: bold;
	margin-top: 20px;
}

dd {
}

.tg {
	border-collapse: collapse;
	border-spacing: 0;
}

.tg td {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	overflow: hidden;
	padding: 10px 5px;
	word-break: normal;
}

.tg th {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	overflow: hidden;
	padding: 10px 5px;
	word-break: normal;
}

.tg .tg-cly1 {
	text-align: left;
	vertical-align: middle
}

.tg .tg-nrix {
	text-align: center;
	vertical-align: middle
}
</style>
					<dl>
						<dt id="v45_1">제 1조. (개인정보의 처리목적)</dt>
						<br />
						<dd>
							회사는 다음 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지
							않으며, 이용 목적이 변경되는 경우에는 개인정보 보호법 제 18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할
							예정입니다.<br /> <br /> &lt;필수 입력(수집) 항목&gt;
							<table class="tg">
								<thead>
									<tr>
										<th class="tg-nrix">구분</th>
										<th class="tg-nrix">수집항목</th>
										<th class="tg-nrix">수집 및 이용 목적</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="tg-nrix" rowspan="2">회원 서비스 제공 및 관리 필수 수집 항목</td>
										<td class="tg-cly1">성명, 생년월일, 성별, 본인인증정보(CI, DI), 아이핀
											번호(아이핀 본인 인증일 경우), 아이디, 비밀번호, 휴대폰번호, 이메일</td>
										<td class="tg-cly1">-메가박스 상품 구매에 대한 결제 및 예매 확인<br /> -회원
											서비스 이용에 따른 본인 식별 및 실명 여부, 중복 가입 여부 확인<br /> -멤버십 서비스 제공 및
											이벤트 시 활용<br /> -공지사항 전달, 문의 또는 불만 처리 등을 위한 원활한 의사소통 경로의 확보<br />
											-드림센터 운영
										</td>
									</tr>
									<tr>
										<td class="tg-cly1">만 14세 미만 법정대리인의 이름, 휴대폰번호, CI</td>
										<td class="tg-cly1">-만 14세 미만 아동의 고객 가입을 위한 법정대리인 동의 여부
											확인</td>
									</tr>
									<tr>
										<td class="tg-nrix">모바일 서비스 이용 위한 필수 수집 항목</td>
										<td class="tg-cly1">모바일 단말기기정보(모델명, OS종류, OS버전 정보)</td>
										<td class="tg-cly1">-공지사항 전달, 문의 또는 불만 처리 등을 위한 원활한 의사소통
											경로의 확보<br /> -개인정보 침해 사고에 대한 대비, 분쟁 조정을 위한 기록 보존
										</td>
									</tr>
									<tr>
										<td class="tg-nrix">비회원 예매시 수집되는 정보</td>
										<td class="tg-cly1">성명, 생년월일, 휴대폰번호, 비밀번호</td>
										<td class="tg-cly1">-홈페이지, 모바일 앱/웹 예매 서비스 이용시</td>
									</tr>
									<tr>
										<td class="tg-nrix" rowspan="5">고객 문의 서비스 제공 및 고객센터 운영 필수
											수집 항목</td>
										<td class="tg-cly1">회원정보, 서비스 이용정보, 문의 및 상담 내용</td>
										<td class="tg-cly1">[채팅문의] 요청 사항 처리 및 고객 문의 상담을 위한 수집</td>
									</tr>
									<tr>
										<td class="tg-cly1">성명, 휴대폰번호, 이메일 주소, 문의 내용</td>
										<td class="tg-cly1">[1:1 문의] 요청 사항 처리 또는 완료 시 원활한 의사 소통
											경로 확보</td>
									</tr>
									<tr>
										<td class="tg-cly1">성명, 휴대폰번호, 이메일 주소, 문의 내용</td>
										<td class="tg-cly1">[단체 관람 및 대관 문의] 요청 사항 처리 또는 완료 시 원활한
											의사 소통 경로 확보</td>
									</tr>
									<tr>
										<td class="tg-cly1">성명, 휴대폰번호, 이메일 주소, 문의 내용, 비밀번호(게시글
											열람용)</td>
										<td class="tg-cly1">[분실물 문의] 요청 사항 처리 또는 완료 시 원활한 의사 소통
											경로 확보</td>
									</tr>
									<tr>
										<td class="tg-cly1">성명, 휴대폰번호, 이메일 주소, 문의 내용, 회사명</td>
										<td class="tg-cly1">[제휴/광고/부대사업 문의] 요청 사항 처리 또는 완료 시 원활한
											의사 소통 경로 확보</td>
									</tr>
									<tr>
										<td class="tg-nrix">스템커피 가맹 상담 시 필수 수집 항목</td>
										<td class="tg-cly1">성명, 휴대폰번호, 창업 희망 지역, 점포 유무, 점포 주소, 총
											투자 비용, 희망 평수, 창업 가능 시기, 문의 내용</td>
										<td class="tg-cly1">창업 문의 상담 및 관련 문의 사항 처리 또는 완료 시 원활한 의사
											소통 경로 확보</td>
									</tr>
								</tbody>
							</table>
							<br /> -간편 로그인 이용을 위해 제공받은 정보는 회원가입이 진행되지 않은 경우 즉시 파기합니다. 또한
							닉네임, 프로필 사진 정보는 SNS의 이용 정책에 따라 전송되나, 당사 DB에 저장하지 않고 즉시 파기 합니다.<br />
							<br /> &lt;선택 입력(수집) 항목&gt;
							<table class="tg">
								<thead>
									<tr>
										<th class="tg-nrix">구분</th>
										<th class="tg-nrix">항목</th>
										<th class="tg-nrix">이용 목적</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="tg-nrix">고객 맞춤형 상품 및 서비스 추천 등 마케팅 정보</td>
										<td class="tg-cly1">이메일, 휴대폰번호, 주소, 생년월일, 선호 영화관, 선호 장르,
											선호 시간대, 문자/이메일/앱푸쉬 정보 수신동의 여부, 서비스 이용기록, 포인트 적립 및 사용 정보, 접속
											로그, 프로필 사진, 본인 갤러리 사진 정보</td>
										<td class="tg-cly1">고객 맞춤형 상품 및 서비스 추천, 당사 신규 상품/서비스 안내 및
											권유, 사은/할인 행사 등 각종 이벤트 정보 등의 안내 및 권유,<br /> 마케팅 홍보 등을 위한 고객
											분석, 혜택 및 서비스 개발을 위한 고객 통계 분석 및 연구 조사, 신규 서비스 개발 및 맞춤 서비스 제공<br />
											개인 프로필 설정, 포토카드 서비스 이용
										</td>
									</tr>
									<tr>
										<td class="tg-nrix">조사 및 연구 정보</td>
										<td class="tg-cly1">고객의 영화관 이용 행태, 서비스 만족도 평가 정보, 성별, 나이,
											거주 지역 (도단위), 직업, 취미, 관심사, 결혼여부, 자녀수, 자녀나이</td>
										<td class="tg-cly1">조사 및 연구 분석</td>
									</tr>
									<tr>
										<td class="tg-nrix" rowspan="3">간편 로그인 이용 시 수집되는 정보</td>
										<td class="tg-cly1">성명, 이메일</td>
										<td class="tg-cly1">네이버 간편 로그인, 페이코 간편 로그인</td>
									</tr>
									<tr>
										<td class="tg-cly1">닉네임 및 프로필 사진, 이메일</td>
										<td class="tg-cly1">카카오 간편 로그인</td>
									</tr>
									<tr>
										<td class="tg-cly1">회원 번호, 고유키, 성명, 이메일</td>
										<td class="tg-cly1">애플 간편 로그인</td>
									</tr>
									<tr>
										<td class="tg-nrix" rowspan="6">외부 예매처 / 제휴 멤버십 이용 시 수집되는
											정보</td>
										<td class="tg-cly1">CI, 성명, 전화번호, 생년월일</td>
										<td class="tg-cly1">인터파크, BC페이북, OK캐쉬백 예매</td>
									</tr>
									<tr>
										<td class="tg-cly1">성명, 전화번호, 생년월일</td>
										<td class="tg-cly1">KT 멤버십(제휴 멤버십), 게토PC방 예매</td>
									</tr>
									<tr>
										<td class="tg-cly1">CI, 성명, 전화번호, 생년월일, 성별, 주소</td>
										<td class="tg-cly1">KT/LGU+/SYRUP 멤버십 (제휴 멤버십)</td>
									</tr>
									<tr>
										<td class="tg-cly1">CI, 성명, 전화번호, 생년월일, 성별, 내외국민 구분, 주소,
											이메일</td>
										<td class="tg-cly1">삼성페이 멤버십</td>
									</tr>
									<tr>
										<td class="tg-cly1">CI, 성명, 전화번호, 생년월일, 성별</td>
										<td class="tg-cly1">카카오 / 페이코 / 네이버파이낸셜 / KB국민카드 멤버십(제휴
											멤버십)</td>
									</tr>
									<tr>
										<td class="tg-cly1">성명, ID</td>
										<td class="tg-cly1">SK엠앤서비스 (베네피아)</td>
									</tr>
									<tr>
										<td class="tg-nrix">위치 정보 활용</td>
										<td class="tg-cly1">모바일 단말기 기기 정보</td>
										<td class="tg-cly1">위치 정보 서비스 기반 기록 활용 및 서비스 혜택 안내</td>
									</tr>
									<tr>
										<td class="tg-nrix">배송 상품 구매 시 수집되는 정보</td>
										<td class="tg-cly1">주문자 성명, 주문자 아이디, 주문자 휴대전화번호, 주문자
											이메일주소, 수취인 성명, 수취인 휴대전화번호, 수취인 주소</td>
										<td class="tg-cly1">상품 배송(전송), 제품 설치, 반품, 환불, 고객 상담 등
											정보통신 서비스 제공 계약 및 전자상거래(통신판매) 계약의 이행을 위해 필요한 업무의 처리</td>
									</tr>
									<tr>
										<td class="tg-nrix">제휴서비스 이용 시 수집되는 정보</td>
										<td class="tg-cly1">전자 지갑 주소</td>
										<td class="tg-cly1">제휴서비스 (밀크) 이용</td>
									</tr>
									<tr>
										<td class="tg-nrix" rowspan="2">자주쓰는 카드관리 서비스 이용 시 수집되는
											정보</td>
										<td class="tg-cly1">제휴사명, 카드번호</td>
										<td class="tg-cly1">자주쓰는 할인카드 서비스</td>
									</tr>
									<tr>
										<td class="tg-cly1">카드사명, 카드번호</td>
										<td class="tg-cly1">자주쓰는 신용카드 서비스</td>
									</tr>
									<tr>
										<td class="tg-nrix">전화 문의</td>
										<td class="tg-cly1">생년월일, 전화번호, 회원정보, 서비스 이용 정보, 문의 및
											상담내용</td>
										<td class="tg-cly1">요청 사항 처리 및 고객 문의 상담을 위한 수집</td>
									</tr>
									<tr>
										<td class="tg-nrix">온라인 제보</td>
										<td class="tg-cly1">이름, 연락처, 이메일 주소 (단, 익명으로 제보시 익명으로
											수집), 제보 내용</td>
										<td class="tg-cly1">비리사실에 대한 제보 및 정확한 사실유무 확인을 위해 수집</td>
									</tr>
								</tbody>
							</table>
							<br /> - 해당 정보는 자료 수집 시점에 별도 동의를 받으며, 동의를 받은 기간까지만 보관 후 안전한 방법으로
							파기 합니다.<br /> <br /> &lt;서비스 이용 또는 사업 처리 과정에서 생성 / 수집되는 정보&gt;
							<table class="tg">
								<thead>
									<tr>
										<th class="tg-nrix">수집 항목</th>
										<th class="tg-nrix">수집 및 이용 목적</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="tg-nrix">서비스 이용 기록 (이용 시간, 이용 극장, 포인트 적립 및 사용
											기록, 상품 또는 서비스 구매 내역 등), 앱/웹 로그인 기록, 접속 로그, 접속 IP 정보</td>
										<td class="tg-cly1">개인정보 침해 사고에 대한 대비, 분쟁 조정을 위한 기록 보존</td>
									</tr>
									<tr>
										<td class="tg-nrix">쿠키</td>
										<td class="tg-cly1">웹사이트 방문 및 이용 형태, 인기 검색어, 보안접속 여부 등 파악<br />
											(본 처리 방침 제 8조에 상술)
										</td>
									</tr>
									<tr>
										<td class="tg-nrix">결제 기록 (생년월일, 신용카드 정보)</td>
										<td class="tg-cly1">상품 구매에 대한 결제</td>
									</tr>
									<tr>
										<td class="tg-nrix">상품 및 결제 정보, 쿠폰 정보 등</td>
										<td class="tg-cly1">모바일 오더 서비스 및 통합 결제 서비스 제공을 위한 기록 수집</td>
									</tr>
								</tbody>
							</table>
						</dd>
						<br />
						<dt id="v45_2">제 2조. (개인정보의 처리 및 보유 기간)</dt>
						<br />
						<dd>
							회사는 법령에 따른 개인정보 보유 및 이용기간 또는 정보 주체로부터 개인정보를 수집 시에 동의 받은 개인정보 보유 및
							이용 기간 내에서 개인정보를 처리 &middot; 보유 합니다.<br /> 각각의 개인정보 처리 및 보유 기간은
							다음과 같습니다.<br /> <br /> １. 서비스 이용을 위한 필수 수집 항목 : 탈퇴 시까지 보유
						</dd>
						<dd style="margin-left: 40px;">
							다음의 사유에 해당하는 경우에는 해당 사유 종료 시까지 보유<br /> １) 비회원 수집 항목
						</dd>
						<dd style="margin-left: 60px;">
							①관람 또는 취소 후 7일까지 보유<br /> ②고객센터 문의, 제휴/광고/부대사업 문의, 온라인제보 센터 이용시
							문의 접수 완료 후 3년까지 보유&nbsp;
						</dd>
						<dd style="margin-left: 40px;">
							２) 무분별한 회원 탈퇴와 재가입으로 인한 피해 최소화, 고객 탈퇴 후 변심에 의한 민원 등을 처리하기 위해 고객
							탈퇴 후 30일 간 최소한의 고객 정보 보유 (탈퇴 즉시 최소한의 정보만 분리 보관, 30일 보유 후 지체 없이
							파기)<br /> ３) 관계 법령 위반에 따른 수사 &middot; 조사 등이 진행 중인 경우에는 해당 수사
							&middot; 조사 종료 시까지<br /> ４) 홈페이지 이용에 따른 채권 &middot; 채무 관계 잔존 시에는
							해당 채권 &middot; 채무관계 정산 시까지
						</dd>
						<br />
						<dd>
							２. 선택 수집 항목 : 수집 동의 받을 때 명시한 기간까지 &nbsp;보유 후 파기<br /> <br /> 3.
							재화 또는 서비스 제공 : 재화, 서비스 공급 완료 및 요금 결제, 정산 완료 시 까지
						</dd>
						<dd style="margin-left: 40px;">
							다만, 다음의 사유에 해당하는 경우에는 해당 기간 종료 시까지<br /> １) 「전자상거래 등에서의 소비자 보호에
							관한 법률」에 따른 표시 &middot; 광고, 계약 내용 및 이행 등 거래에 관한 기록
						</dd>
						<dd style="margin-left: 60px;">
							- 게시한 이용자의 본인 확인에 관한 기록 : 6개월<br /> - 계약 또는 청약 철회, 대금 결제, 재화 등의
							공급 기록 : 5년<br /> - 소비자 불만 또는 분쟁 처리에 관한 기록 : 3년
						</dd>
						<dd style="margin-left: 40px;">２) 「통신비밀보호법」 제 41조에 따른 통신 사실
							확인 자료 보관</dd>
						<dd style="margin-left: 60px;">- 웹페이지 방문 및 로그인에 관한 기록 : 3개월</dd>
						<br />
						<dd>4. 스템커피 가맹 상담 수집 항목 : 수집 동의 받을 때 명시한 기간까지 보유 후 파기</dd>
						<br />
						<dt id="v45_3">제 3조. (개인정보의 제 3자 제공)</dt>
						<br />
						<dd>
							１. 회사는 정보주체의 개인정보를 이용 약관 및 제 1조(개인정보의 처리 목적)에서 명시한 범위 내에서만 처리하며,
							정보주체의 동의, 법률의 특별한 규정 등 개인정보 보호법 제 17조에 해당하는 경우에만 개인정보를 제 3자에게
							제공합니다.<br /> <br /> 회사는 아래와 같이 개인정보를 제공하고 있습니다.
							<table class="tg">
								<thead>
									<tr>
										<th class="tg-nrix">제공 받는 자</th>
										<th class="tg-nrix">제공 목적</th>
										<th class="tg-nrix">제공하는 항목</th>
										<th class="tg-nrix">보유 및 이용 기간</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="tg-nrix">(주)중앙일보, 중앙일보M&amp;P(주)</td>
										<td class="tg-cly1">중앙멤버십 서비스 이용</td>
										<td class="tg-cly1">이름, 휴대전화번호</td>
										<td class="tg-cly1">개인정보 이용 목적 달성시 까지</td>
									</tr>
									<tr>
										<td class="tg-nrix">밀크파트너스(주)</td>
										<td class="tg-cly1">제휴서비스 밀크의 멤버십 포인트 사용 및 적립, 민원 처리, 서비스
											부정 사용 방지</td>
										<td class="tg-cly1">메가박스 회원번호, 멤버십 포인트 보유 현황</td>
										<td class="tg-cly1">회원 탈퇴 또는 서비스 해지 후 180일 까지</td>
									</tr>
								</tbody>
							</table>
							<br /> ２. 신규 제휴 서비스 오픈 및 제 3자 제공이 발생하는 경우 정보주체에게 별도의 동의를 받고
							제공하며, 매각 및 인수합병 발생 시 사전에 안내하고 개인정보의 동의 철회의 선택권을 부여합니다.<br /> <br />
							３. 다만, 다음의 경우에는 관련 법령의 규정에 의하여 회원의 동의 없이 개인정보를 제공하는 것이 가능합니다.
						</dd>
						<dd style="margin-left: 40px;">
							１) 서비스 제공에 따른 요금 정산을 위하여 필요한 경우<br /> ２) 통계 작성, 학술 연구 또는 시장 조사를
							위하여 필요한 경우로써 특정 개인을 알아볼 수 없는 형태로 가공하여 제공하는 경우<br /> ３) 금융 실명 거래
							및 비밀 보장에 관한 법률, 신용 정보의 이용 및 보호에 관한 법률, 전기통신기본법, 전기통신사업법, 지방세법,
							소비자보호법, 한국은행법, 형사소송법 등 법률에 특별한 규정이 있는 경우<br /> ４) 수사 목적으로 법령에
							정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우
						</dd>
						<br />
						<dt id="v45_4">제 4조. (개인정보 처리의 위탁)</dt>
						<br />
						<dd>
							１. 회사는 원활한 개인정보 업무 처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.
							<table class="tg">
								<thead>
									<tr>
										<th class="tg-nrix">수탁업체</th>
										<th class="tg-nrix">위탁업무 내용</th>
										<th class="tg-nrix">개인정보의 보유 및 이용 기간</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="tg-nrix">(주)BGF네트웍스</td>
										<td class="tg-cly1">휴대폰 메시지(SMS, LMS, MMS), 알림톡&nbsp;발송
											대행</td>
										<td class="tg-nrix" rowspan="10">고객 탈퇴 시 혹은 위탁 계약 종료 시 까지</td>
									</tr>
									<tr>
										<td class="tg-nrix">(주)콘텐트리중앙</td>
										<td class="tg-cly1">IT서비스 및 시스템 위탁 운영, 메일 발송 대행</td>
									</tr>
									<tr>
										<td class="tg-nrix">한국결제네트웍스 유한회사</td>
										<td class="tg-cly1">결제서비스 대행</td>
									</tr>
									<tr>
										<td class="tg-nrix">NICE 평가정보</td>
										<td class="tg-cly1">실명 인증, 본인 확인</td>
									</tr>
									<tr>
										<td class="tg-nrix">(주)카카오뱅크</td>
										<td class="tg-cly1">실명 인증, 본인 확인</td>
									</tr>
									<tr>
										<td class="tg-nrix">LB유세스(주)</td>
										<td class="tg-cly1">서비스 제공안내 TM, 드림센터 고객 응대 등 고객센터 업무 일체,<br />
											고객 상담 시스템 개발 및 유지보수,<br /> 전화 및 채팅 상담 시스템 관리 및 운영,<br />
											ARS 안내메세지 발송
										</td>
									</tr>
									<tr>
										<td class="tg-nrix">주식회사 채널 코퍼레이션</td>
										<td class="tg-cly1">채팅 상담 시스템 위탁 운영 (채널톡)</td>
									</tr>
									<tr>
										<td class="tg-nrix">(주)엘지유플러스</td>
										<td class="tg-cly1">ARS 안내 메세지 발송 대행</td>
									</tr>
									<tr>
										<td class="tg-nrix">(주)핵토이파이낸셜</td>
										<td class="tg-cly1">내통장결제 결제 서비스 대행</td>
									</tr>
									<tr>
										<td class="tg-nrix">(주)네이버파이낸셜</td>
										<td class="tg-cly1">네이버페이 결제 서비스 대행</td>
									</tr>
									<tr>
										<td class="tg-nrix">(주)한국페이즈서비스</td>
										<td class="tg-cly1">메가박스 금액권 상품 발송 및 고객 서비스 관리 운영 대행</td>
										<td class="tg-nrix">제공 후 5년까지</td>
									</tr>
								</tbody>
							</table>
							<br /> ２. 회사는 위탁계약 체결 시 개인정보 보호법 제 26조에 따라 위탁 업무 수행 목적 외 개인정보 처리
							금지, 기술적 &middot; 관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리 &middot; 감독, 손해배상 등
							책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.<br />
							<br /> ３. 위탁업무의 내용이나 수탁자가 변경될 경우에는 지체 없이 본 개인정보 처리방침을 통하여 공개하도록
							하겠습니다.
						</dd>
						<br />
						<dt id="v45_5">제 5조.(정보주체의 권리, 의무 및 행사 방법)</dt>
						<br />
						<dd>１. 정보주체(만 14세 미만 아동 고객의 경우 그 법정대리인 포함)는 회사에 대해 언제든지 다음 각
							호의 개인정보 보호 관련 권리를 행사 할 수 있습니다.</dd>
						<dd style="margin-left: 40px;">
							１) 개인정보 열람요구<br /> ２) 오류 등이 있을 경우 정정 요구<br /> ３) 삭제 요구<br />
							４) 처리 정지 요구
						</dd>
						<br />
						<dd>
							２. 정보주체(만 14세 미만 아동 고객의 경우 그 법정대리인 포함)는 온라인 가입정보의 열람 및 정정을 하고자 하는
							경우, 홈페이지 내의 &ldquo;회원탈퇴&rdquo;, &ldquo;개인정보수정&rdquo;을 클릭하여 직접 열람
							및 정정을 하거나, 개인정보보호 책임자 및 담당자, 드림센터(1544-0070)에 문의 할 수 있으며, 회사는
							정보주체의 요청에 필요한 조치를 취합니다.<br /> <br /> ３. 제 1항에 따른 권리 행사는 회사에 대해
							서면, 전화, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며, 회사는 이에 대해 지체 없이 조치하겠습니다.<br />
							<br /> ４. 정보주체(만 14세 미만 아동 고객의 경우 그 법정대리인 포함)가 개인정보의 오류 등에 대한 정정
							또는 삭제를 요구한 경우에는 회사는 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.<br />
							<br /> ５. 제 1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수
							있습니다. 이 경우 개인정보 보호법 시행규칙 별지 제 11호 서식에 따른 위임장을 제출하셔야 합니다.<br /> <br />
							６. 정보주체는 개인정보 보호법 등 관계 법령을 위반하여 회사가 처리하고 있는 정보주체 본인이나 타인의 개인정보 및
							사생활을 침해하여서는 아니됩니다.
						</dd>
						<dt id="v45_6">제 6조. (개인정보의 파기 절차 및 방법)</dt>
						<br />
						<dd>
							１. 회사는 개인정보 보유기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 지체 없이 해당
							개인정보를 파기합니다.<br /> <br /> ２. 정보주체로부터 동의 받은 개인정보 보유기간이 경과하거나 처리
							목적이 달성되었음에도 불구하고 다른 법령에 따라 개인정보를 계속 보존하여야 하는 경우에는, 해당 개인정보를 별도의
							데이터베이스(DB)로 옮겨 보존합니다.<br /> <br /> ３. 개인정보 파기의 절차 및 방법은 다음과
							같습니다.
						</dd>
						<dd style="margin-left: 40px;">１) 파기 절차</dd>
						<dd style="margin-left: 60px;">
							①회사는 개인정보 보유기간의 경과, 처리 목적 달성 등 개인정보가 불필요하게 되었을 때에는 지체 없이 개인정보를
							파기함<br /> ②회사는 파기 요청 사유가 발생한 경우, 개인정보를 지체없이 파기하고 해당 결과를 통보함
						</dd>
						<dd style="margin-left: 40px;">２) 파기 방법</dd>
						<dd style="margin-left: 60px;">
							①전자적 파일 형태 : 기록을 재생할 수 없도록 로우레벨포맷(Low Level Format) 등의 방법을 이용하여
							파기<br /> ②종이 문서 : 분쇄기로 분쇄하거나 소각하여 파기
						</dd>
						<br />
						<dt id="v45_7">제 7조. (개인정보의 안전성 확보조치)</dt>
						<br />
						<dd>
							회사는 개인정보의 안전성 확보를 위해 다음과 같은 조치를 취하고 있습니다.<br /> <br /> １. 관리적
							조치 : 내부관리계획 수립 &middot; 시행, 정기적 직원 교육 등<br /> ２. 기술적 조치 :
							개인정보처리시스템 등의 접근 권한 관리, 접근통제시스템 설치, 고유식별정보 등의 암호화, 보안프로그램 설치<br />
							３. 물리적 조치 : 전산실, 자료보관실 등의 접근 통제
						</dd>
						<br />
						<dt id="v45_8">제 8조. (개인정보 및 행태정보 자동 수집 장치의 설치 &middot; 운영 및
							거부에 관한 사항)</dt>
						<br />
						<dd>
							１. 회사는 이용자에게 개별적인 맞춤 서비스를 제공하기 위해 이용 정보를 저장하고 수시로 불러오는
							&lsquo;쿠키(cookie)&rsquo;를 사용합니다.<br /> <br /> ２. 쿠키는 웹사이트를
							운영하는데 이용되는 서버(http)가 이용자의 컴퓨터 브라우저에게 보내는 소량의 정보이며 고객이 이용하는
							단말기(PC/스마트폰/태블릿PC 등)의 하드디스크에 저장되기도 합니다.
						</dd>
						<dd style="margin-left: 40px;">
							１) 쿠키의 사용 목적 : 이용자가 방문한 각 서비스와 웹 사이트들에 대한 방문 및 이용 형태, 인기 검색어, 보안
							접속 여부 등을 파악하여 이용자에게 최적화된 정보 제공을 위해 사용<br /> ２) 쿠키의 설치 &middot;
							운영 및 거부 : 웹브라우저 상단의 도구&gt;인터넷 옵션&gt;개인정보 메뉴의 옵션 설정을 통해 쿠키 저장을 거부할
							수 있음<br /> ３) 쿠키 저장을 거부할 경우 맞춤형 서비스 이용에 어려움이 발생할 수 있음
						</dd>
						<br />
						<dd>3. 회사는 서비스 이용 과정에 행태정보 주체에게 최적화된 서비스 및 혜택 제공, 서비스 개선 등을
							위하여 행태 정보를 수집 &middot; 이용하고 있습니다.</dd>
						<dd style="margin-left: 40px;">
							1) 행태 사용 목적 : 이용자 행태 정보 기반 서비스 개선 및 제공
							<table class="tg">
								<thead>
									<tr>
										<th class="tg-nrix"
											style="vertical-align: middle; text-align: center;">수집하는
											행태 정보 항목</th>
										<th class="tg-nrix"
											style="vertical-align: middle; text-align: center;">행태정보
											수집 방법</th>
										<th class="tg-nrix"
											style="vertical-align: middle; text-align: center;">행태정보
											수집 목적</th>
										<th class="tg-nrix"
											style="vertical-align: middle; text-align: center;">보유
											이용기간 및 이후 정보 처리 방법</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="tg-nrix" style="text-align: center">이용자의
											웹사이트/앱서비스 방문 이력, 검색 이력, 구매 이력</td>
										<td class="tg-nrix" style="text-align: center">이용자의
											웹사이트&nbsp;&nbsp;및 앱 방문 / 실행 시 자동 수집</td>
										<td class="tg-nrix" style="text-align: center">이용자의 관심사를
											통한 서비스 개선 및 제공</td>
										<td class="tg-nrix" style="text-align: center">회원 탈퇴 시 까지</td>
									</tr>
								</tbody>
							</table>
							<br /> 2) 행태정보 수집 차단에 대한 안내
						</dd>
						<dd style="margin-left: 60px;">
							① 웹브라우저 : 상단의 도구&gt;인터넷옵션&gt;개인정보 메뉴의 옵션 설정을 통해 쿠키 저장을 거부 할 수 있음<br />
							② 스마트폰 : OS종류 및 버전에 따라 다소 상이할 수 있습니다.<br /> - Android : 설정 &gt;
							개인정보보호 &gt; 광고 &gt; 광고 맞춤 설정 선택 해제 (ON)<br /> - iPhone : 설정 &gt;
							개인정보보호 &gt; 추적 &gt; 앱이 추적을 요청하도록 허용 (OFF)
						</dd>
						<br />
						<dt id="v45_9">제 9조. (개인정보 국외이전)</dt>
						<br />
						<dd>
							1. 회사는 서비스 제공 및 이용 편의 증진을 위해 다음과 같이 개인정보를 국외에 이전하여 처리를 위탁하고 있습니다.
							<vr>
							<table class="tg">
								<thead>
									<tr>
										<th class="tg-nrix">정보를 이전받는 업체명</th>
										<th class="tg-nrix">Appsflyer</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="tg-nrix">정보 관리 책임자의 연락처</td>
										<td class="tg-nrix">Privacy@appsflyer.com</td>
									</tr>
									<tr>
										<td class="tg-nrix">이전 국가</td>
										<td class="tg-nrix">아일랜드(AWS서버), 벨기에(GCS서버)</td>
									</tr>
									<tr>
										<td class="tg-nrix">이전 일자 및 이전 방법</td>
										<td class="tg-nrix">필요 시 전용 네트워크를 이용한 전송</td>
									</tr>
									<tr>
										<td class="tg-nrix">이용 목적</td>
										<td class="tg-nrix">이용자 행태 정보 기반 서비스 개선 및 혜택 제공</td>
									</tr>
									<tr>
										<td class="tg-nrix">개인정보 이전 항목</td>
										<td class="tg-nrix">비 식별화 처리된 익명의 사용자 정보를 이용, 이용자의 앱 이용
											내역</td>
									</tr>
									<tr>
										<td class="tg-nrix">개인정보 보유 및 이용 기간</td>
										<td class="tg-nrix">회원 탈퇴 또는 위탁 계약 종료 시 까지</td>
									</tr>
								</tbody>
							</table>
							</vr>
						</dd>
						<br />
						<dt id="v45_10">제 10조. (개인정보 보호책임자)</dt>
						<br />
						<dd>
							１. 회사는 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제
							등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.<br /> <br /> ▶ 개인정보 보호책임자<br />
							- 부서명 : 경영지원팀<br /> - 담당자 : 강병철<br /> - 연락처 :
							privacy@megabox.co.kr<br /> <br /> ▶ 개인정보 보호담당자<br /> - 부서명 :
							경영지원팀<br /> - 담당자 : 오윤호<br /> - 연락처 : privacy@megabox.co.kr<br />
							<br /> ▶ 고객서비스 담당자<br /> - 부서명 : LB유세스 컨텍센터 사업본부 사업2팀 메가박스 드림센터<br />
							- 담당자 : 유은지<br /> - 연락처 : m.dreamcenter@partner.megabox.co.kr<br />
							※ 개인정보 보호 담당부서로 연결됩니다.<br /> <br /> ２. 정보주체께서는 회사의 서비스(또는 사업)을
							이용하시면서 발행한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및
							담당부서로 문의하실 수 있습니다. 회사는 정보주체의 문의에 대해 지체없이 답변 및 처리해드릴 것입니다.<br />
							&nbsp;
						</dd>
						<dt id="v45_11">제 11조. (개인정보 열람청구)</dt>
						<br />
						<dd>
							정보주체는 개인정보 보호법 제 35조에 따른 개인정보의 열람 청구를 아래의 부서에 할 수 있습니다. 회사는 정보주체의
							개인정보 열람청구가 신속하게 처리되도록 노력하겠습니다.<br /> <br /> ▶ 개인정보 열람청구 접수 처리
							부서<br /> - 부서명 : 드림센터<br /> - 담당자 : 유은지<br /> - 연락처 :
							1544-0070, m.dreamcenter@partner.megabox.co.kr
						</dd>
						<br />
						<dt id="v45_12">제 12조. (권익침해 구제방법)</dt>
						<br />
						<dd>
							정보주체는 아래의 기관에 대해 개인정보 침해에 대한 피해 구제, 상담 등을 문의하실 수 있습니다.<br /> <br />
							１. 의견수렴 및 불만 접수 &middot; 처리 부서<br /> - 부서명 : 드림센터<br /> - 연락처 :
							1544-0070 (전화 상담 가능 시간 10:30 ~ 18:30)<br /> - 이메일 :
							m.dreamcenter@partner.megabox.co.kr<br /> - 주소 : 서울시 구로구 경인로 661
							핀포인트빌딩 24층<br /> <br /> ２. 개인정보 침해신고센터 (한국인터넷진흥원 운영)<br /> -
							소관업무 : 개인정보 침해사실 신고, 상담 신청<br /> - 홈페이지 : <a
								href="http://privacy.kisa.or.kr"
								style="color: #0563c1; text-decoration: underline"
								target="_blank">privacy.kisa.or.kr</a><br /> - 전화 : (국번없이) 118<br />
							- 주소 : (58324) 전남 나주시 진흥길 9 (빛가람동 301-2) 개인정보침해 신고센터<br /> <br />
							３. 개인정보 분쟁조정위원회<br /> - 소관업무 : 개인정보 분쟁조정 신청, 집단 분쟁 조정 (민사적 해결)<br />
							- 홈페이지 : <a href="http://www.kopico.go.kr"
								style="color: #0563c1; text-decoration: underline"
								target="_blank">www.kopico.go.kr</a><br /> - 전화 : (국번없이)
							1833-6972<br /> - 주소 : (03171) 서울특별시 종로구 세종대로 209 정부서울청사 12층<br />
							<br /> ４. 대검찰청 사이버범죄수사단 : (국번없이) 1301 (<a
								href="http://www.spo.go.kr"
								style="color: #0563c1; text-decoration: underline"
								target="_blank">www.spo.go.kr</a>)<br /> <br /> ５. 경찰청 사이버수사국
							: (국번없이) 182 (<a href="http://ecrm.cyber.go.kr/minwon/main"
								style="color: #0563c1; text-decoration: underline"
								target="_blank">ecrm.cyber.go.kr/minwon/main</a>)
						</dd>
						<br />
						<dt id="v45_13">제 13조. (영상정보처리기기 설치)</dt>
						<br />
						<dd>１. 메가박스중앙㈜은 아래와 같이 영상정보처리기기를 설치 &middot; 운영하고 있습니다.</dd>
						<dd style="margin-left: 40px;">
							１) 영상정보처리기기 설치 근거 &middot; 목적 : 메가박스중앙㈜의 시설안전 &middot; 화재예방<br />
							２) 설치 대수, 설치 위치, 촬영 범위
							<table class="tg">
								<thead>
									<tr>
										<th class="tg-nrix">설치 대수</th>
										<th class="tg-nrix">설치 위치 및 촬영 범위</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="tg-nrix">극장 별 안내판 참고</td>
										<td class="tg-nrix">로비, 상영관, 에스컬레이터 등</td>
									</tr>
								</tbody>
							</table>
							<br /> ３) 관리 책임자, 담당부서 및 영상정보에 대한 접근 권한자
							<table class="tg">
								<thead>
									<tr>
										<th class="tg-nrix">구분</th>
										<th class="tg-nrix">지위</th>
										<th class="tg-nrix">연락처</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="tg-nrix">관리책임자</td>
										<td class="tg-nrix">극장 점장 및 매니저</td>
										<td class="tg-nrix">1544-0070</td>
									</tr>
								</tbody>
							</table>
							<br /> ４) 영상정보 촬영시간, 보관기간, 보관장소, 처리방법
						</dd>
						<dd style="margin-left: 60px;">
							①촬영시간 : 24시간 촬영<br /> ②보관기간 : 촬영 시부터 30일<br /> ※ 단, 다른 법령에 별도로
							보관기간이 규정되어 있거나 영상정보를 보관해야 할 특별한 사유가 있는 경우에는 3개월을 초과하여 보관<br />
							③보관장소 및 처리방법 : 각 극장 내 업무용 시설에 영상정보 처리기기를 보관 &middot; 처리
						</dd>
						<br />
						<dd style="margin-left: 40px;">
							５) 영상정보 확인 방법 및 장소 : 각 극장 내 관리자에게 요구<br /> <br /> ６) 정보주체의 영상정보
							열람 등 요구에 대한 조치
						</dd>
						<dd style="margin-left: 60px;">
							①개인영상정보 열람 &middot; 존재확인 청구서로 신청<br /> ②정보주체 자신이 촬영된 경우 또는 명백히
							정보주체의 생명 &middot; 신체 &middot; 재산 이익을 위해 필요한 경우에 한해 열람 허용<br />
							③다음 각 호에 해당될 경우 정보주체의 열람 등을 거부할 수 있으며 거부사유 통지
						</dd>
						<dd style="margin-left: 80px;">
							- 개인영상정보의 보관기간이 경과하여 이미 파기한 경우<br /> - 기타 정보주체의 열람 등 요구를 거부할 만한
							정당한 사유가 존재하는 경우
						</dd>
						<dd style="margin-left: 60px;">④영상정보 열람 등의 조치를 취한 경우 다음 사항을
							기록하고 관리함</dd>
						<dd style="margin-left: 80px;">
							- 개인영상정보 열람 등을 요구한 정보주체의 성명 및 연락처<br /> - 정보주체가 열람 등을 요구한 개인영상정보
							파일의 명칭 및 내용<br /> - 개인영상정보 열람 등의 목적<br /> - 개인영상정보 열람 등을 거부한 경우
							그 거부의 구체적 사유<br /> - 정보주체에게 개인영상정보 사본을 제공한 경우 영상정보의 내용과 제공 사유
						</dd>
						<br />
						<dd style="margin-left: 40px;">７) 영상정보 보호를 위한 기술적 &middot;
							관리적 &middot; 물리적 조치</dd>
						<dd style="margin-left: 60px;">
							①내부관리계획 수립<br /> ②접근통제 및 접근권한 제한<br /> ③영상정보의 안전한 저장 &middot;
							전송기술 적용<br /> ④처리기록 보관 및 위 &middot; 변조 방지조치<br /> ⑤보관시설 마련 및 잠금
							장치 설치
						</dd>
						<dt id="v45_14">제 14조. (개인위치정보의 처리)</dt>
						<br />
						<dd>
							회사는 위치정보의 보호 및 이용 등에 관한 법률에 따라 이용자의 개인위치정보를 안전하게 관리합니다.<br /> <br />
							１. 개인위치정보의 처리 목적 및 보유 기간<br /> &lsquo;회사&rsquo;는 대부분의 위치기반서비스에서
							개인위치정보를 일회성 또는 임시로 이용 후 지체없이 파기합니다. 단, 위치기반서비스 이용약관에서 정한 목적 범위 내
							관련 서비스를 제공하기 위해 필요한 최소한의 기간 동안 개인위치정보를 보유 및 이용하며, 처리목적 달성 시 본 조 제
							2항에 따라 기록 &middot; 보존하는 개인위치정보 이용 &middot; 제공사실 확인자료 회의 개인위치정보는
							지체없이 파기합니다.<br /> <br /> 2. 개인위치정보 이용ㆍ제공사실 확인자료의 보유근거 및 보유기간<br />
							&lsquo;회사&rsquo;는 &lsquo;위치정보법&rsquo; 제 16조 제 2항에 따라 개인위치정보
							이용‧제공사실 확인자료를 자동으로 기록&middot;보존하며, 해당 자료는 6개월간 보관 합니다.<br />
							&nbsp;<br /> 3. 개인위치정보의 파기 절차 및 방법<br /> &lsquo;회사&rsquo;는
							처리목적이 달성되거나 보유기간이 경과하면 복구 및 재생이 불가능한 방법으로 지체없이 파기합니다.<br />
							&nbsp;<br /> 4. 개인위치정보의 제 3자 제공에 관한 사항<br /> &lsquo;회사&rsquo;는
							개인위치정보주체의 사전 동의 없이 위치정보를 제3자에게 제공하지 않습니다. 단, 개인위치정보주체가 직접 동의를 한
							경우, 그리고 관련 법령에 의거해 &lsquo;회사&rsquo;에 제출 의무가 발생한 경우, 이용자의 생명이나 안전에
							급박한 위험이 확인되어 긴급구조기관 및 경찰관서의 제공 요청이 있는 경우에 한하여 개인위치정보를 제공합니다.<br />
							&nbsp;<br /> 5. 개인위치정보의 이용 또는 제공에 따른 통보에 관한 사항<br />
							&lsquo;회사&rsquo;는 개인위치정보를 이용자가 지정하는 제3자에게 제공하는 경우 개인위치정보를 수집한
							통신단말장치로 매회 이용자에게 제공받는 자, 제공일시 및 제공목적을 즉시 통보합니다. 단, 아래의 경우 이용자가 미리
							특정하여 지정한 통신단말장치 또는 전자우편주소, 온라인게시 등으로 통보합니다.
						</dd>
						<dd style="margin-left: 40px;">
							1) 개인위치정보를 수집한 당해 통신단말장치가 문자, 음성 또는 영상의 수신기능을 갖추지 아니한 경우<br />
							2) 이용자가 개인위치정보를 수집한 통신단말장치 외의 통신단말장치 또는 전자우편주소, 온라인게시 등으로 통보할 것을
							미리 요청한 경우
						</dd>
						<br />
						<dd>6. 8세 이하의 아동 등의 보호를 위한 위치정보 이용 및 보호의무자의 권리ㆍ의무와 그 행사방법에 관한
							사항</dd>
						<dd style="margin-left: 40px;">1) 아래의 각목에 해당하는 자 (이하
							&ldquo;8세 이하의 아동 등&rdquo;이라 함)의 보호의무자(위치정보법 제 26조 제 2항의 어느 하나에
							해당하는 자를 말하며 이하 &ldquo;보호의무자&rdquo;라 함)가 8세 이하의 아동 등의 생명 또는 신체보호를
							위하여 8세 이하 아동 등의 개인위치정보의 이용 또는 제공에 동의하는 경우에는 본인의 동의가 있는 것으로 봅니다.</dd>
						<dd style="margin-left: 60px;">
							① 8세 이하의 아동<br /> ② 피성년후견인<br /> ③ 장애인복지법 제 2조 제 2항 제 2호에 따른
							정신적 장애를 가진 사람으로서 장애인고용촉진 및 직업재활법 제 2조 제 2호에 따른 중증장애인에 해당하는 사람
							(장애인복지법 제 32조에 따라 장애인 등록을 한 사람에 한정)
						</dd>
						<dd style="margin-left: 40px;">2) 8세 이하의 아동 등의 생명 또는 신체의 보호를
							위하여 개인위치정보의 이용 또는 제공에 동의를 하고자 하는 보호의무자는 서면동의서에 보호의무자임을 증명하는 서면을
							첨부하여 회사에 제출하여야 하며, 보호의무자는 8세 이하의 아동 등의 개인위치정보 이용 또는 제공에 동의하는 경우
							위치기반서비스 이용약관상의 이용자의 권리를 모두 행사할 수 있습니다.</dd>
						<br />
						<dd>7.&lsquo;회사&rsquo;는 개인위치정보를 적절히 관리‧보호하고, 이용자의 불만, 요청 등을
							원활하게 처리할 수 있도록 위치정보 관리책임자를 지정하여 운영하고 있으며, 개인정보보호책임자가 겸직하고 있습니다.</dd>
						<dd style="margin-left: 40px;">1) 위치정보 관리 책임자 : 강병철</dd>
						<dd style="margin-left: 60px;">
							- E-mail&nbsp;: privacy@megabox.co.kr<br /> - 전화번호: 1544-0070
							(전화 상담 가능 시간 10:30 ~ 18:30)
						</dd>
						<dd style="margin-left: 40px;">2) 각 담당 부서</dd>
						<dd style="margin-left: 60px;">
							- 위치정보 보호 관리 / 운영 담당자 : 경영지원팀<br /> - 개인위치정보 보호 담당자 : 경영지원팀<br />
							- E-mail : privacy@megabox.co.kr<br /> - 전화번호 : 1544-0070 (전화 상담
							가능 시간 10:30 ~ 18:30)
						</dd>
						<dd style="margin-left: 40px;">3) 위치정보 관련 민원 처리센터</dd>
						<dd style="margin-left: 60px;">
							- E-mail: privacy@megabox.co.kr<br /> - 전화번호&nbsp;: 1544-0070
							(전화 상담 가능 시간 10:30 ~ 18:30)&nbsp;<br /> - 주소 : 서울특별시 성동구 왕십리로 50
							(성수동1가, 메가박스 스퀘어)
						</dd>
					</dl>
				</div>
			</div>
		</div>
	</div>
</div>
<!--// container -->






<%@ include file="../footer.jsp"%>