<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.mm.member.model.vo.Member"%>
<%
String contextPath = request.getContextPath();
Member loginUser = (Member) session.getAttribute("loginUser");
// 로그인하기 전에는 : null
// 로그인 완료 후에는 로그인한 회원의 정보가 담겨져 있을 것
String alertMsg = (String) session.getAttribute("alertMsg");
// 서비스 요청 전에는 null
// 서비스 요청 성공 후에는 alert으로 띄워줄 메세지 문구
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main page</title>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="<%= contextPath %>/resources/css/common.css">
</head>
<body id="body-top">
	<script>
		const msg = "<%= alertMsg %>";
		if(msg != "null"){
			alert(msg);
			// 알림창 띄워준 후 session안에 담긴 메세지는 지워주야함
			<% session.removeAttribute("alertMsg"); %>
		}
	</script>
	<main>
	<!-- wrapper -->
        <div class="wrapper">
		<%@ include file="views/common/menubar.jsp"%>
        <%@ include file="views/common/main.jsp"%>
		<%@ include file="views/common/footer.jsp"%>
		</div>
	</main>
</body>
</html>