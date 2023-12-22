<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main page</title>
</head>
<body id="body-top">
	<main>
	<!-- wrapper -->
		<div class="wrapper">
		<%@ include file="../common/menubar.jsp"%>
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