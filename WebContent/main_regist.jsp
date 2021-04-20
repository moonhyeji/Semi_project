
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<%
response.setContentType("texthtml; charset=UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<label for="member_id">아이디</label><br> <input type="text"
			class="" id="memeber_id" name="member_id" placeholder="Id"
			required="required">
	</div>
	<div>
		<label for="member_pw">비밀번호</label><br> <input type="password"
			class="" id="member_pw" name="member_pw" placeholder="Passward"
			required="required">
	</div>
	<br>

	<button>로그인</button>
	<button>돌아가기</button>

	<br>
	<br>


	<!-- 구글 로그인  -->
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	<meta name="google-signin-client_id"
		content="805502210933-uhd1c3d071j2sagpss5fbplkalageest.apps.googleusercontent.com">
	<div class="g-signin2" gapi.auth2.getAuthInstance()="onSignIn"></div>


	<script>
		function onSignIn(googleUser) {
			var profile = googleUser.getBasicProfile();
			console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
			console.log('Name: ' + profile.getName());
			console.log('Image URL: ' + profile.getImageUrl());
			console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
		}
	</script>
	<!--//로그아웃 -->
	<a href="#" onclick="signOut();">Sign out</a>
<script>
  function signOut() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
      console.log('User signed out.');
    });
  }
</script> 
	<br>
	<br>
<!--///////////////////////////////탈퇴 하기 코드에 else로 이어서 붙여야 하나..?  -->



	<!--  naver login-->
<head>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
	<!-- 네이버아이디로로그인 버튼 노출 영역 -->
	<div id="naver_id_login"></div>
	<!-- //네이버아이디로로그인 버튼 노출 영역 -->
	<script type="text/javascript">
		var naver_id_login = new naver_id_login("nJbGfCmcDQzFrSV8nNeM",
				"http://localhost:8787/Test01_Hello/callback.html");
		var state = naver_id_login.getUniqState();
		naver_id_login.setButton("white", 2, 40);
		naver_id_login.setDomain("y826gT7iVo");
		naver_id_login.setState(state);
		naver_id_login.setPopup();
		naver_id_login.init_naver_id_login();
	</script>
</html>
</body>
<br>



<!--  카카오톡 -->
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<title>Login Demo - Kakao JavaScript SDK</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>
<body>
	<a id="kakao-login-btn"></a>
	<a href="http://developers.kakao.com/logout"></a>
	<script type='text/javascript'>
		//<![CDATA[
		// 사용할 앱의 JavaScript 키를 설정해 주세요.
		Kakao.init('6f51ecf6f7e6c23a0573d217272da08e'); //여기서 아까 발급받은 키 중 javascript키를 사용해준다.
		// 카카오 로그인 버튼을 생성합니다.
		Kakao.Auth.createLoginButton({
			container : '#kakao-login-btn',
			success : function(authObj) {
				alert(JSON.stringify(authObj));
			},
			fail : function(err) {
				alert(JSON.stringify(err));
			}
		});
	</script>
</body>
	
	
	
	
	
	