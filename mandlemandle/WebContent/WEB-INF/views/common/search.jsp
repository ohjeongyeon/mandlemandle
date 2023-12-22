<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색결과</title>
</head>
<body id="body-top">
	<main>
	<!-- wrapper -->
		<div class="wrapper">
		<%@ include file="../common/menubar.jsp"%>
			<div class="container" id="container">
				<div class="content">
					<!-- 검색 결과 -->
					<div class="search-mentor">
					<div class="search-mentor-title"><p>맨토 검색 결과</p></div>
						<div class="search-mentor-profile">
							<swiper-container class="mySwiper" slides-per-view="3" centered-slides="true" space-between="30" pagination="true"
							pagination-type="fraction" autoplay-delay="3500" navigation="true">
								<swiper-slide>Slide 1</swiper-slide>
							    <swiper-slide>Slide 2</swiper-slide>
							    <swiper-slide>Slide 3</swiper-slide>
							    <swiper-slide>Slide 4</swiper-slide>
						 	</swiper-container>
						</div>
						<div>
							<p class="append-buttons">
							    <button class="append-slide">Append Slide</button>
						 	</p>
					 	</div>
					</div>
					<!-- 비슷한 맨토 -->
					<div class="search-mentor">
					<div class="search-mentor-title"><p>비슷한 분야의 맨토를 찾아보세요</p></div>
						<div class="search-mentor-profile">
							<swiper-container class="mySwiper" slides-per-view="3" centered-slides="true" space-between="30" pagination="true"
							pagination-type="fraction" autoplay-delay="3500" navigation="true">
								<swiper-slide>Slide 1</swiper-slide>
							    <swiper-slide>Slide 2</swiper-slide>
							    <swiper-slide>Slide 3</swiper-slide>
							    <swiper-slide>Slide 4</swiper-slide>
						 	</swiper-container>
						</div>
						<div>
							<p class="append-buttons">
							    <button class="append-slide">Append Slide</button>
						 	</p>
					 	</div>
					</div>
					<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>
					<script>
						const swiperEl = document.querySelector('swiper-container');
					    const swiper = swiperEl.swiper;
					
					    var appendNumber = 4;
					    var prependNumber = 1;
					    document
							.querySelector(".append-slide")
							.addEventListener("click", function (e) {
					        e.preventDefault();
					        swiper.appendSlide(
							'<swiper-slide>Slide ' + ++appendNumber + "</swiper-slide>"
					        );
						});
				  	</script>
					<!-- 사이드바 -->
					<div class="sideBar">
						<div class="top"><a href="#body-top">TOP</a></div>
					</div>
					<script>
					$(function() {
					    $(window).scroll(function(e) {
					        let scrT = ($(window).scrollTop()) + 10;
					        if(scrT >= $(document).height() - $(window).height() - 260){
					            $('.sideBar').addClass('fixed');
					        } else {$('.sideBar').removeClass('fixed');}
					    });
					});
					</script>
				</div>
			</div>
			<%@ include file="../common/footer.jsp"%>
		</div>
	</main>
</body>
</html>