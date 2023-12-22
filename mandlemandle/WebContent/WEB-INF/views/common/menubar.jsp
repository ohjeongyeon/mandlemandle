<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.mm.member.model.vo.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String contextPath = request.getContextPath();
Member loginUser = (Member) session.getAttribute("loginUser");
String alertMsg = (String) session.getAttribute("alertMsg");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<%= contextPath %>/resources/css/common.css">
</head>
	<script>
		const contextPath = "<%= contextPath %>"
		const msg = "<%= alertMsg %>";
		if(msg != "null"){
			alert(msg);
		<% session.removeAttribute("alertMsg"); %>
		}
	</script>
	<header class="head">
		<nav class="nav">
			<div class="navi">
				<div class="nav-logo"><a href="<%= contextPath %>" title="메인으로 이동"><img src="resources/image/mandlemandle_logo_image.png" alt="로고"></a></div>
				<div class="navList">
					<div class="searchBar">
						<form action="<%= contextPath%>/search.me" method="get">
							<input type="text" name="search" id="search" placeholder="주제를 검색하세요" list="list">
							<button type="submit">검색</button>
							<datalist id="list"></datalist>
						</form>
					</div>
					<div class="nav-contents">
						<div class="nav-depth1">
						<c:choose>
							<c:when test="${empty loginUser}">
								<div><a href=""></a></div>
								<div><a href=""></a></div>
								<div><a href=""></a></div>
								<div><a href="<%= contextPath %>/login.me">로그인</a></div>
							</c:when>
							<c:when test="${loginUser.grade == 2}">
								<div><a href="<%= contextPath %>/chat.ch">맨토채팅</a></div>
								<div><a href="<%= contextPath %>/comunity.co">커뮤니티</a></div>
								<div><a href="<%= contextPath %>/mentorMyPage.me">마이페이지</a></div>
								<div><a href="<%= contextPath %>/logout.me">로그아웃</a></div>
							</c:when>
							<c:when test="${loginUser.grade == 3}">
								<div><a href="<%= contextPath %>/chat.ch">맨티채팅</a></div>
								<div><a href="<%= contextPath %>/comunity.co">커뮤니티</a></div>
								<div><a href="<%= contextPath %>/menteeMyPage.me">마이페이지</a></div>
								<div><a href="<%= contextPath %>/logout.me">로그아웃</a></div>
							</c:when>
							<c:otherwise>
								<div><a href="<%= contextPath %>/chat.ch"></a></div>
								<div><a href="<%= contextPath %>/comunity.co">커뮤니티</a></div>
								<div><a href="<%= contextPath %>/admin.me">관리자페이지</a></div>
								<div><a href="<%= contextPath %>/logout.me">로그아웃</a></div>
							</c:otherwise>
						</c:choose>
						
						</div>
					</div>
				</div>
			</div>
		</nav>
		<input type="text" id="keyword" placeholder="찾을 게시글을 입력하세요" list="list">
		<script>
// 		로그인 세션
		$(function(){
			${empty loginUser}
		})
// 		검색창
		    $(function(){
		        $("#search").keyup(function(e){
		            $.ajax({
		                url : "AutoSearch.do",
		                data : {keyword : $("#search").val()},
		                success : function(data){
		                    $("#list").html(""); // 리스트 비워주기
		                    let str = "";
		                    for(let board of data){
		                        str += `<option>${board.boardTitle}</optaion>`;
		                    }
		                    $("#list").html(str);
		                }
		            })
		        })
		    })
		    
		</script>

		<script>
		   
		</script>
	</header>
</html>