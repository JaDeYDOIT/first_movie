<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>
<link rel="stylesheet" href="/css/mainchart/swiper.css">

<!-------------------------------------------------배너 시작----------------------------------------------------->
<!-- banner -->
<section id="banner">
	<div class="slider">
		<ul>
			<li><a href="#"><img
					src="https://cf2.lottecinema.co.kr/lotte_image/2023/Trolls_BandTogether/1213/Trolls_BandTogether_1920774.jpg"
					alt="트롤" class="slide_img"> <img src="images/play-button.png"
					class="modal_bt"> </a></li>
			<li><a href="#"><img
					src="https://cf2.lottecinema.co.kr/lotte_image/2023/Trolls_BandTogether/1213/Trolls_BandTogether_1920774.jpg"
					alt="트롤" class="slide_img"> <img src="images/play-button.png"
					class="modal_bt"> </a></li>
			<li><a href="#"><img
					src="https://cf2.lottecinema.co.kr/lotte_image/2023/Trolls_BandTogether/1213/Trolls_BandTogether_1920774.jpg"
					alt="트롤" class="slide_img"> <img src="images/play-button.png"
					class="modal_bt"> </a></li>
			<li><a href="#"><img
					src="https://cf2.lottecinema.co.kr/lotte_image/2023/Trolls_BandTogether/1213/Trolls_BandTogether_1920774.jpg"
					alt="트롤" class="slide_img"> <img src="images/play-button.png"
					class="modal_bt"> </a></li>
		</ul>
	</div>
</section>
<!-- banner end -->

<!-- 모달 -->
<div class="modal">
	<iframe class="modal_video" width="560" height="315"
		src="https://www.youtube.com/embed/0PkxgJ-FOzg?si=nLvVQC9pPzq0yycT"
		title="YouTube video player" frameborder="0"
		allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
		allowfullscreen autoplay></iframe>
</div>
<!-- 모달 end-->

<!-- 모달 배경 뒷부분 -->
<div class="modal_bg"></div>
<script>
	$(".modal_bt").click(function() {
		$(".modal").css({
			"display" : "block"
		});
	});
	$(".modal_bt").click(function() {
		$(".modal_bg").css({
			"display" : "block"
		});
	});
	$(".modal_bg").click(function() {
		$(".modal, .modal_bg").css({
			"display" : "none"
		});
	});
</script>
<!-- 모달 배경 뒷부분 end -->
<!-------------------------------------------------무비텝 시작----------------------------------------------------->
<!-- movie -->


        <div class="container">
            <div class="row">
                <h2 class="ir_so">영화 예매</h2>
                <div class="movie">
                    <div class="movie_title" style="position: relative;">
                        <ul class="clearfix">
                            <li class="active"><a href="#">무비차트</a></li>
                            <a href="/movie/list.do" id="btn_allView_Movie" class="btn_allView" style="position: absolute; 
                            top: 53%;
                            transform: translateY(-50%);">전체보기 ▷</a>
                        </ul>
                    </div>
                    <div class="movie_chart">
                        <div class="swiper-container2">
                            <div class="swiper-button-prev"></div>
                            <div class="swiper-button-next"></div>
                           <div class="chart_cont1 swiper-wrapper">
 
							<c:forEach items="${movie}" var="movie">
                               <div class="swiper-slide">
                                   <div class="poster">
                                       <a href="/movie/detail.do?movie_id=${movie.movie_id }"><img src="${movie.movie_image}" alt="영화 이미지">
                                       <div class="rank"><strong>${movie.movie_rank}</strong></div>
                                       </a>
                                   </div>
                                   <div class="infor">
                                       <h3><span class="icon all ir_pm">${movie.movie_audience_rating}</span> <strong class="movie_name">${movie.movie_name}</strong></h3>
                                       <div class="infor_btn">
                                           <a href="/movie/detail.do?movie_id=${movie.movie_id }">상세정보</a>
                                           <a href="/ticketing/schedule">예매하기</a>
                                       </div>
                                   </div>
                               </div>
                             </c:forEach>
                           </div>
                        </div>
                        <!-- //chart_cont1-->
                        
                        <div class="swiper-container2">
                            <div class="swiper-button-prev"></div>
                            <div class="swiper-button-next"></div>
                           
                        </div>
                        
                        <!-- //chart_cont2-->
                    </div>
                </div>
            </div>
        </div>
  <!-- //movie -->
    <script src="/js/mainchart/jquery.min_1.12.4.js"></script>
    <script src="/js/mainchart/modernizr-custom.js"></script>
    <script src="/js/mainchart/ie-checker.js"></script>
    <script src="/js/mainchart/swiper.min.js"></script>
    <script src="/js/mainchart/iframe_api.js"></script>
    <script src="/js/mainchart/movie.js"></script>
    <script>
    //영화차트 이미지 슬라이드
        var swiper = new Swiper('.swiper-container2',{
            slidesPerView: 5,
                spaceBetween: 32,
                slidesPerGroup: 5,
                loopFillGroupWithBlank: true,
                navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                },
                a11y: {
                    prevSlideMessage: '이전 슬라이드',
                    nextSlideMessage: '다음 슬라이드',
                    slideLabelMessage: '총 {{slidesLength}}장의 슬라이드 중 {{index}}번 슬라이드 입니다.',
                },
            // });
//             slidesPerView: 5,
//             spaceBetween: 24,
//             mousewheel: {
//                 invert: true,
//             },
//             keyboard: {
//                 enabled: true,
//                 onlyInViewport: false,
//             },
//             autoplay: {
//                 delay: 6000,
//             },
            breakpoints: {
                600: {
                    slidesPerView: 1,
                    spaceBetween: 20
                },
                768: {
                    slidesPerView: 2,
                    spaceBetween: 15
                },
                960: {
                    slidesPerView: 3,
                    spaceBetween: 20
                }
            }
         });
        
        //영화차트 탭 메뉴
        var movBtn = $(".movie_title > ul > li");    
        var movCont = $(".movie_chart > div");  

        movCont.hide().eq(0).show();

        movBtn.click(function(e){
            e.preventDefault();
            var target = $(this);         
            var index = target.index();  
            movBtn.removeClass("active");   
            target.addClass("active");    
            movCont.css("display","none");
            movCont.eq(index).css("display","block");
        });
    </script>





<!-- movie end -->



<!-- movie end -->
<!-------------------------------------------------스토어 시작----------------------------------------------------->
<!-- 스토어 시작 -->
<!-- 패키지 시작 -->
<section id="store_wrap">
	<article class="packagebox">
		<dt>
			<a href="/product/category.do?product_category_id=1">패키지</a>
		</dt>
		<dl class='package_list'>
			<c:forEach items="${product}" var="product">
				<c:if test="${product.product_category_id eq 1}">
					<div id="mainstospan">
						<a href='/product/detail.do?product_id=${product.product_id}'> 
							<img src='${product.product_image}' alt='${product_name}'>
							<span>${product.product_name}<strong>${product.product_cost}</strong></span>
						</a>
					</div>
				</c:if>
			</c:forEach>
		</dl>
	</article>
		<!-- 패키지 끝 -->
	
		<!-------------------------------------------------관람권 시작----------------------------------------------------->
	
		<!-- 관람권 -->
	<article class="giftbox">
		<dt>
			<a href="/product/category.do?product_category_id=2">영화관람권</a>
		</dt>
		<dl class='giftcon_list'>
			<c:forEach items="${product}" var="product">
				<c:if test="${product.product_category_id eq 2}">
					<div id="mainstospan">
						<a href='/product/detail.do?product_id=${product.product_id}'>
							<img src='${product.product_image}' alt='${product_name}'>
							<span>${product.product_name}<strong>${product.product_cost}</strong></span>
						</a>
					</div>
				</c:if>
			</c:forEach>
		</dl>
	</article>
	<!-- 관람권 end -->
</section>
<!-- 스토어 end -->

<!-------------------------------------------------공지사항 시작----------------------------------------------------->
<!-- S > 공지사항 & 고객센터 -->
<section id="notice_wrap">
	<div class="service_center">
		<h3>FAQ</h3>
		<ul>
			<c:forEach items="${FAQlist}" var="list">
			<li><a href="">${list.notice_title}</a></li>
			</c:forEach>
			
		</ul>
	</div>
	<p>
		<a href="/customer/notice.do?notice_kind=0">더보기</a>
	</p>
	
	<div class="notice">
		<h3>공지사항</h3>
		<ul>
			<c:forEach items="${noticelist}" var="list">
			<li><a href="">${list.notice_title}</a></li>
			</c:forEach>
		</ul>
	</div>
	<p>
		<a href="/customer/notice.do?notice_kind=1">더보기</a>
	</p>

</section>

<%@ include file="footer.jsp"%>