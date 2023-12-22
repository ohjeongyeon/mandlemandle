<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.mm.member.model.vo.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main page</title>
    <script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
</head>
<body id="body-top">
	
	<main>
	<!-- wrapper -->
        <div class="wrapper">
        
		<%@ include file="../common/menubar.jsp"%>
		<div>
    <h1>로그인</h1>
    <a href="javascript:kakaoLogin()"><img src="../resources/imgage/kakao_login_large_wide.png"></a>
    <div id="naver_id_login"></div>
    <script type="text/javascript">
  	var naver_id_login = new naver_id_login("vE_dryOlqrtUfmZX9Syj", "http://localhost:9000/mm/views/enroll/navercallback.jsp");
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setButton("white", 2,40);
  	naver_id_login.setDomain("http://localhost:9000/mm");
  	naver_id_login.setState(state);
  	naver_id_login.setPopup();
  	naver_id_login.init_naver_id_login();
  </script>
    

    <script type="text/javascript">
    Kakao.init('498f2339dd14b3dea10fa57a53039689');
    function kakaoLogin() {
        Kakao.Auth.login({
            success: function (response) {
                Kakao.API.request({
                    url: '/v2/user/me',
                    success: function (response) {
                        alert(JSON.stringify(response))
                    },
                    fail: function (error) {
                        alert(JSON.stringify(error))
                    },
                })
            },
            fail: function (error) {
                alert(JSON.stringify(error))
            },
        })
    }
</script>
    
</div>
		<%@ include file="../common/footer.jsp"%>
		</div>
	</main>
</body>
</html>