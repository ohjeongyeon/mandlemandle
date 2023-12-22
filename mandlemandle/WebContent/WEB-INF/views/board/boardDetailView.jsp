<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="true" import="java.util.*" %>
<%@ page import="com.mm.board.model.vo.*" %>
<%
	Board b = (Board)request.getAttribute("b");
	Attachment at = (Attachment)request.getAttribute("at");
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
        <h2 align="center">일반게시판 상세보기</h2>
        <br>
        <table id="detail-area" align="center" border="1">
            <tr>
                <th width="70">카테고리</th>
                <td width="70"><%= b.getCategoryName() %></td>
                <th width="70">제목</th>
                <td width="350"><%= b.getBoardTitle() %></td>
            </tr>
            <tr>
                <th>작성자</th>
                <td><%= b.getBoardWriter() %></td>
                <th>작성일</th>
                <td><%= b.getCreateDate() %></td>
            </tr>
            <tr>
                <th>내용</th>
                <td colspan="3">
                    <p style="height: 200px;">
                        <%= b.getBoardContent() %>
                    </p>
                </td>
            </tr>
            <tr>
                <th>첨부파일</th>
                <td colspan="3">
                <% if(at == null) {%>
                    첨부파일이 없습니다
                    <% } else { %>
                    <!-- 첨부파일이 있을 경우 해당파일 다운로드 -->
                    <a download="<%= at.getOriginName()%>" href="<%= contextPath %>/<%=at.getFilePath() %><%= at.getChangeName() %>"><%= at.getOriginName() %></a>
                    <%} %>
                </td>
            </tr>
        </table>
        <br>
        <div align="center">
            <a href="<%=contextPath %>/list.bo?currentPage=1" class="btn btn-secondary btn-sm">목록</a>
           
           <% if(loginUser != null && loginUser.getUserId().equals(b.getBoardWriter())){ %>
            <!-- 로그인한 사용자만 게시글 수정/삭제버튼이 보여야함 -->
            <a href="<%= contextPath %>/update.bo?bno=<%=b.getBoardNo() %>" class="btn btn-warning btn-sm">수정</a>
            <a href="<%= contextPath %>/delete.bo?bno=<%=b.getBoardNo() %>" class="btn btn-danger btn-sm">삭제</a>
            <% } %>
        </div>
    </div>
    <br>
    <div id="reply-area">
        <table border="1" align="center">
            <thead>
                <%if(loginUser == null){%>
                    <% } else { %>
                <tr>
                    <th>댓글작성</th>
                    <td><textarea id="replyContent" cols="50" rows="3" style="resize:none">로그인 후 이용가능한 서비스입니다</textarea></td>
                    <td><button id="reply-btn">댓글등록</button></td>
                </tr>
                <% } %>
            </thead>
            <tbody>
            
            </tbody>
        </table>
    </div>

    <script>
        // 댓글 등록 기능
        $(function(){
            $("#reply-btn").click(function(){
                $.ajax({
                    url : "insert.re",
                    data : {content : $("#replyContent").val(),
                            bno : <%= b.getBoardNo() %>},
                    type : 'post',
                    success : function(result){
                        if(result > 0){ // 댓글등록성공
                            $("#replyContent").val("");
                        selectReplyList();
                        }
                    },
                    error : function(){
                        console.log('비동기 통신 실패')
                    }
                })
                selectReplyList();
            })
        })
        
        function selectReplyList(){
        	$.ajax({
        		url : "list.re",
        		data : {bno : <%= b.getBoardNo() %>},
        		success : function(list){
//         			얻어온 데이터를 바탕으로 게시글 작성자, 게시글내용, 작성일자 순서대로 화면에 출력
					let html = '';	
        			for(let r of list){ 
        			html +=`<tr>
		        				<td>${r.userId}</td>
		        				<td>${r.replyContent}</td>
		        				<td>${r.createDate}</td>
		        			</tr>`;
        		 }
					$("#reply-area tbody").html(html);
        		}
        	})
        }
        selectReplyList();
    </script>
</body>
</html>