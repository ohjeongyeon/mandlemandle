<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.common.model.vo.PageInfo, java.util.ArrayList, com.kh.board.model.vo.Board" %>
<%
 	PageInfo pi = (PageInfo)request.getAttribute("pi");
 	ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list");
 	
 	int startPage = pi.getStartPage();
 	int endPage = pi.getEndPage();
 	int currentPage = pi.getCurrentPage();
 	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	<div class="outer">
		<br>
		<h2 align="center">일반게시판</h2>
		<br>
	</div>
	<!-- 로그인한 회원만 글작성 버튼이 보이게 조정 -->
	<% if(loginUser != null){ %>
		<div align="right" style="width: 850px;">
			<a href="<%=contextPath %>/insert.bo" class="btn btn-secondary">글작성</a>
			<br>
			<br>
		</div>
	<% } %>
	<table align="center" class="list-area">
		<thead>
			<tr>
				<th width="70">글번호</th>
				<th width="70">카테고리</th>
				<th width="300">제목</th>
				<th width="100">작성자</th>
				<th width="50">조회수</th>
				<th width="100">작성일</th>
			</tr>
		</thead>
		<tbody>
		<% if(list.isEmpty()){ %>
		<tr>
			<td colspan="6">조회된 리스트가 없습니다..</td>
		</tr>
		<%} else { %>
			<% for(Board b : list) { %>
			<tr>
				<td><%= b.getBoardNo() %></td>
				<td><%= b.getCategoryName() %></td>
				<td><%= b.getBoardTitle() %></td>
				<td><%= b.getBoardWriter() %></td>
				<td><%= b.getCount() %></td>
				<td><%= b.getCreateDate() %></td>
			</tr>
			<%} %>
		<%} %>
		</tbody>
	</table>
	<script>
		$(function(){
			// 게시글 클릭 시 상세보기 페이지로 넘어가는 기능
			$(".list-area>tbody>tr").click(function(){
				location.href = "<%= contextPath %>/detail.bo?bno="+$(this).children().eq(0).text().trim();
			});
		})
	</script>
	<br><br>
	<!-- 페이징바 -->
	<div align="center" class="paging-area">
		<% if(currentPage != 1){ %>
		<button onclick="location.href = '<%=contextPath%>/list.bo?currentPage=<%=currentPage - 1 %>'">&lt;</button>
		<%}%>
		<% for(int p = startPage; p <= endPage; p++) {%>
			<%if(p != currentPage){ %>
				<button onclick="location.href = '<%=contextPath%>/list.bo?currentPage=<%=p %>'"><%= p %></button>
			<%} else {%>
				<button disabled><%= p %></button>
			<%} %>
		<%} %>
		<% if(currentPage != maxPage){ %>
		<button onclick="location.href = '<%=contextPath%>/list.bo?currentPage=<%=currentPage + 1 %>'">&gt;</button>
		<%}%>
	</div>
</body>
</html>