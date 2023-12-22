<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<h2 aligh="center">사진게시판 작성</h2>
		<br>

		<form action="<%=contextPath %>/insert.th" method="post" id="enroll-form" enctype="multipart/form-data">
			<!-- 현재 로그인한 사용자의 회원번호 전송 -->
			<input type="hidden" name="userNo" value="<%= loginUser.getUserNo() %>">
			<table align="center">
				<tr>
					<th width="100">제목</th>
					<td colspan="3"><input type="text" name="boardTitle" required></td>
				</tr>
				<tr>
					<th width="100">내용</th>
					<td colspan="3"><textarea name="boardContent" style="resize: none;" rows="5" required></textarea></td>
				</tr>
				<tr>
					<th width="100">대표이미지</th>
					<td colspan="3" align="center"><img id="contentImg0" width="250" height="170"></td>
				</tr>
				<tr>
					<th width="100">상세이미지</th>
					<td><img id="contentImg1" width="150" height="120"></td>
					<td><img id="contentImg2" width="150" height="120"></td>
					<td><img id="contentImg3" width="150" height="120"></td>
				</tr>
			</table>
			<div id="file-area">
				<input type="file" name="file1" id="file0" required>
				<input type="file" name="file2" id="file1">
				<input type="file" name="file3" id="file2">
				<input type="file" name="file4" id="file3">
			</div>
			<script>
				$(function(){
					$("#file-area").hide();
					$("img[id^=contentImg]").each(function(index, value){
						$(value).click(function(){
							$("#file"+index).click();
						});
					});
					$("input[type=file]").each(function(index, value){
						$(value).change(function(){loadImg(value, index)});
					});
				});

				function loadImg(file, index){
					// file : 현재 변화가 생긴 input type = "file"요소 객체
					// index : 몇번째 file에 변화가 발생했는지 확인 후 그 영역에
					// 미리보기를 해주기 위한 변수
					// console.log(file.files[0].name);
					// console.dir(file);
					if(file.files[0]){
						// 선택된 파일이 존재할 경우
						// 존재하지않는다면 undefind

						// 파일을 읽어들일 FileReader객체 생성
						const reader = new FileReader();
						// 파일을 읽어들이는 메소드
						// readAsDataURL(파일) -> 파일을 읽어들이는 순가 ㄴ해당 파일만의
						// 고유한 URL이 부여됨 -> 미리보기로 현재 부여된 URL을 src 속성값으로 추가
						reader.readAsDataURL(file.files[0]);
						// 파일 읽기가 완료되었을 때 실행할 함수 정의
						reader.onload = function(e){
							// e == event
							// event.target.result에 각 파일의 고유한 url값이 담김
							$("#contentImg"+index).attr("src",e.target.result);
						}
					} else {
						// 선택했던 파일이 사라졌을 경우
						$("#contentImg"+index).removeAttr("src");
					}
				};
			</script>
			<div align="center">
				<button>등록</button>
			</div>
		</form>
	</div>
</body>
</html>