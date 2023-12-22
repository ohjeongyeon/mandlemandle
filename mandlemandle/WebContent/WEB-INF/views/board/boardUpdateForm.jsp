<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.board.model.vo.*" %>
<%
    ArrayList<Category> list = (ArrayList<Category>)request.getAttribute("list");
	Board b = (Board) request.getAttribute("b");
	Attachment at = (Attachment) request.getAttribute("at");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    #enroll-form>table{border:1px solid white;}
    #enroll-form input, #enroll-form textarea{width: 100%; box-sizing: border-box;}
</style>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>

    <div class="outer">
        <br>
        <h2 align="center">일반게시판 수정</h2>
        <form action="<%= contextPath %>/update.bo" id="enroll-form" method="post" enctype="multipart/form-data">
            <!-- 카테고리, 제목, 내용, 첨부파일 -->
            <!-- 회원번호 -> inpout type hidden으로 넘길 예정 -->
			<input type="hidden" name="bno" value="<%= b.getBoardNo() %>">
            <table align="center">
                <tr>
                    <th width="100">카테고리</th>
                    <td width="500">
                        <select name="category">
                            <% for(Category c : list) { %>
                                <option value="<%= c.getCategoryNo() %>"
                                    <% if(b.getCategoryName().equals(c.getCategoryName())){ %>
                                        selected
                                    <%} %>>
                                    <%= c.getCategoryName() %></option>
                            <% } %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>제목</th>
                    <td><input type="text" name="title" required value="<%= b.getBoardTitle() %>"></td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td>
                        <textarea name="content" rows="10" required><%= b.getBoardContent() %></textarea>
                    </td>
                </tr>
                <tr>
                    <th>첨부파일</th>
                    <td>
                        <% if(at != null) { %>
                            <%= at.getOriginName() %>
                            <input type="hidden" name="originFileNo" value="<%= at.getFileNo()%>">
                            <input type="hidden" name="originFileName" value="<%= at.getChangeName()%>">
                        <%} %>
                        <input type="file" name="reUpfile">
                    </td>
                </tr>
            </table>
            <br>
            <div align="center">
                <button type="submit">수정</button>
            </div>
        </form>
    </div>
</body>
</html>