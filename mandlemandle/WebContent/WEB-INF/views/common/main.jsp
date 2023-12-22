<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
    <div class="container" id="container">
        <div class="content">
            <!-- category -->
            <div class="category">
                <ul class="category-depth1">
                    <li>원하는 활동을 선택해보세요</li>
                    <li>
                        <ul class="category-depth2">
                            <li><a href="/search.me?category=개발">개발</a></li>
                            <li><a href="/search.me?category=축구">축구</a></li>
                            <li><a href="/search.me?category=야구">야구</a></li>
                            <li><a href="/search.me?category=피트니스">피트니스</a></li>
                            <li><a href="/search.me?category=요가">요가</a></li>
                            <li><a href="/search.me?category=필라테스">필라테스</a></li>
                            <li><a href="/search.me?category=영어">영어</a></li>
                            <li><a href="/search.me?category=외국어">외국어</a></li>
                            <li><a href="/search.me?category=피아노">피아노</a></li>
                            <li><a href="/search.me?category=전체">기타</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- comunity -->
            <div  class="comunity">
				<div class="curious">
					<div class="curious-title">함께해요</div>
                    <div></div>
					<div></div>
                </div>
                <div class="share">
					<div class="share-title">공유해요</div>
					<div></div>
					<div></div>
				</div>
            </div>
            <!-- 추천 맨토 -->
            <div class="recommend-wrapper">
            <div class="recommend-title"><p>오늘의 추천 맨토</p></div>
	            <swiper-container class="mySwiper recommend-swiper" navigation="true" space-between="30" slides-per-view="5"
	            centered-slides="true" autoplay-disable-on-interaction="false">
	            	<swiper-slide>
	                    <div class="recommend-content">
	                        <a href="">
	                            <div class="recommend-mentor">
	                                <div class="mentor-profile">
	                                    <div class="mentor-image"><img src="" alt=""></div>
	                                    <div></div>
	                                    <div class="mentor-rating"><img src="resources/image/star.png" alt="별"><span>${recommendMentor.rating}</span></div>
	                                </div>
	                                <div class="mentor-name"><p></p></div>
	                                <div class="mentor-workin"><p></p></div>
	                            </div>
	                        </a>
	                    </div>
	                </swiper-slide>
	            	<swiper-slide>
	                    <div class="recommend-content">
	                        <a href="">
	                            <div class="recommend-mentor">
	                                <div class="mentor-profile">
	                                    <div class="mentor-image"><img src="" alt=""></div>
	                                    <div></div>
	                                    <div class="mentor-rating"><img src="resources/image/star.png" alt="별"><span>${recommendMentor.rating}</span></div>
	                                </div>
	                                <div class="mentor-name"><p></p></div>
	                                <div class="mentor-workin"><p></p></div>
	                            </div>
	                        </a>
	                    </div>
	                </swiper-slide>
	            	<swiper-slide>
	                    <div class="recommend-content">
	                        <a href="">
	                            <div class="recommend-mentor">
	                                <div class="mentor-profile">
	                                    <div class="mentor-image"><img src="" alt=""></div>
	                                    <div></div>
	                                    <div class="mentor-rating"><img src="resources/image/star.png" alt="별"><span>${recommendMentor.rating}</span></div>
	                                </div>
	                                <div class="mentor-name"><p></p></div>
	                                <div class="mentor-workin"><p></p></div>
	                            </div>
	                        </a>
	                    </div>
	                </swiper-slide>
	            	<swiper-slide>
	                    <div class="recommend-content">
	                        <a href="">
	                            <div class="recommend-mentor">
	                                <div class="mentor-profile">
	                                    <div class="mentor-image"><img src="" alt=""></div>
	                                    <div></div>
	                                    <div class="mentor-rating"><img src="resources/image/star.png" alt="별"><span>${recommendMentor.rating}</span></div>
	                                </div>
	                                <div class="mentor-name"><p></p></div>
	                                <div class="mentor-workin"><p></p></div>
	                            </div>
	                        </a>
	                    </div>
	                </swiper-slide>
	            	<swiper-slide>
	                    <div class="recommend-content">
	                        <a href="">
	                            <div class="recommend-mentor">
	                                <div class="mentor-profile">
	                                    <div class="mentor-image"><img src="" alt=""></div>
	                                    <div></div>
	                                    <div class="mentor-rating"><img src="resources/image/star.png" alt="별"><span>${recommendMentor.rating}</span></div>
	                                </div>
	                                <div class="mentor-name"><p></p></div>
	                                <div class="mentor-workin"><p></p></div>
	                            </div>
	                        </a>
	                    </div>
	                </swiper-slide>
	            	<swiper-slide>
	                    <div class="recommend-content">
	                        <a href="">
	                            <div class="recommend-mentor">
	                                <div class="mentor-profile">
	                                    <div class="mentor-image"><img src="" alt=""></div>
	                                    <div></div>
	                                    <div class="mentor-rating"><img src="resources/image/star.png" alt="별"><span>${recommendMentor.rating}</span></div>
	                                </div>
	                                <div class="mentor-name"><p></p></div>
	                                <div class="mentor-workin"><p></p></div>
	                            </div>
	                        </a>
	                    </div>
	                </swiper-slide>
	            	<swiper-slide>
	                    <div class="recommend-content">
	                        <a href="">
	                            <div class="recommend-mentor">
	                                <div class="mentor-profile">
	                                    <div class="mentor-image"><img src="" alt=""></div>
	                                    <div></div>
	                                    <div class="mentor-rating"><img src="resources/image/star.png" alt="별"><span>${recommendMentor.rating}</span></div>
	                                </div>
	                                <div class="mentor-name"><p></p></div>
	                                <div class="mentor-workin"><p></p></div>
	                            </div>
	                        </a>
	                    </div>
	                </swiper-slide>
	            	<swiper-slide>
	                    <div class="recommend-content">
	                        <a href="">
	                            <div class="recommend-mentor">
	                                <div class="mentor-profile">
	                                    <div class="mentor-image"><img src="" alt=""></div>
	                                    <div></div>
	                                    <div class="mentor-rating"><img src="resources/image/star.png" alt="별"><span>${recommendMentor.rating}</span></div>
	                                </div>
	                                <div class="mentor-name"><p></p></div>
	                                <div class="mentor-workin"><p></p></div>
	                            </div>
	                        </a>
	                    </div>
	                </swiper-slide>
	            	<swiper-slide>
	                    <div class="recommend-content">
	                        <a href="">
	                            <div class="recommend-mentor">
	                                <div class="mentor-profile">
	                                    <div class="mentor-image"><img src="" alt=""></div>
	                                    <div></div>
	                                    <div class="mentor-rating"><img src="resources/image/star.png" alt="별"><span>${recommendMentor.rating}</span></div>
	                                </div>
	                                <div class="mentor-name"><p></p></div>
	                                <div class="mentor-workin"><p></p></div>
	                            </div>
	                        </a>
	                    </div>
	                </swiper-slide>
	            </swiper-container>
            </div>
            <!-- 실시간 리뷰 -->
            <div class="liveReview">
	            <div class="liveReview-title"><p>실시간 리뷰</p></div>
	            <div class="liveReview-content">
		            <swiper-container class="mySwiper" direction="vertical" space-between="30" mousewheel="true" centered-slides="true"
		            autoplay-delay="3500" autoplay-disable-on-interaction="false">
		                <swiper-slide>Slide 1</swiper-slide>
		                <swiper-slide>Slide 2</swiper-slide>
		                <swiper-slide>Slide 3</swiper-slide>
		                <swiper-slide>Slide 4</swiper-slide>
		                <swiper-slide>Slide 5</swiper-slide>
		                <swiper-slide>Slide 6</swiper-slide>
		                <swiper-slide>Slide 7</swiper-slide>
		                <swiper-slide>Slide 8</swiper-slide>
		                <swiper-slide>Slide 9</swiper-slide>
		            </swiper-container>
	            </div>
            </div>
        	<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>
        </div>
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
</body>
</html>