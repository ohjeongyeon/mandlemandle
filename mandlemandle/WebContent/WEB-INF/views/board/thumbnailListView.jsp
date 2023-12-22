<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.board.model.vo.Board" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.list-area{width:760px; margin:0 auto;}
.outer{width:1000px; height:auto;}
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	<div class="outer">
		<br>
		<h2 align="center">사진게시판</h2>
		<br>
		
		<% if(loginUser != null){ %>
			<div align="right" style="width:850px">
				<a href="<%= contextPath %>/insert.th" class="btn btn-secondary">글작성</a>
				<br>
				<br>
			</div>
		<% } %>
		<div class="list-area" style="display: flex; flex-wrap: wrap; justify-content: center;">
			<%
				ArrayList<Board> list = (ArrayList<Board>) request.getAttribute("list");
			%>
			<% if(list.isEmpty()){%>
				등록된 게시글이 없습니다.
			<% } else { %>
				<% for(Board b : list) { %>
					<div class="thumbnail" align="center">
						<input type="hidden" value="<%=b.getBoardNo() %>">
						<img src="<%= contextPath %>/<%= b.getAttachment().getFilePath() + b.getAttachment().getChangeName() %>" width="200px" height="150px">
						<p>
							No.<%=b.getBoardNo() %> <%=b.getBoardTitle() %> <br>
							조회수 : <%=b.getCount() %>
						</p>
					</div>
				<% } %>
			<% } %>
		</div>
		<script>
			$(function(){
				$(".thumbnail").click(function(){
					location.href="<%= contextPath%>/detail.th?bno="+$(this).children().eq(0).val();
				})
			})
		</script>
	</div>
	
</body>
</html>