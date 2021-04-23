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

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
	crossorigin="anonymous"></script>

<style>
.selector-for-some-widget {
	box-sizing: content-box;
}

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>


<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id"
	content="805502210933-uhd1c3d071j2sagpss5fbplkalageest.apps.googleusercontent.com">

<link href="signin.css" rel="stylesheet">

</head>
<body class="text-center">
	<main class="form-signin">
		<form>
			<img src="resources/image/main_Logo.png" alt=" 런웨이로고" width="300"
				height="100">
			<h1 class="h3 mb-3 fw-normal">로그인 해주세요</h1>



			<div class="d-flex justify-content-center">
				<div class="form-floating">
					<input type="text" class="form-control" id="floatingInput"
						name="member_id" placeholder="Id" required="required"> <label
						for="floatingInput">아이디</label><br>
				</div>
				<br>
			</div>

			<div class="d-flex justify-content-center">
				<div class="form-floating">
					<input type="password" class="form-control" id="floatingPassword"
						name="member_pw" placeholder="Passward" required="required">
					<label for="floatingInput">비밀번호</label>
				</div>
			</div>

			<br>
		  <a href="findid.jsp">아이디찾기</a>
		  &emsp;<a href='findpw.jsp'>비밀번호찾기</a>

			<br>
			<br>

			<button class=" btn btn-lg btn-primary" onclick="">Login</button>
			<!--submit????  -->
			<button class="btn btn-lg btn-primary"
				onclick="location.href='inmain_regist.jsp'">Join</button>
			<button class="btn btn-lg btn-secondary"
				onclick="location.href='index.jsp'">Back</button>
		</form>
	</main>

	<br>
	<br>


	<!-- 구글 로그인  -->
	<div align="center" class="g-signin2"
		gapi.auth2.getAuthInstance()="onSignIn"></div>
	<br>

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
	<!-- <a href="#" onclick="signOut();">Sign out</a>

<script>
	//구글 로그아웃 스크립트
	function signOut() {
		var auth2 = gapi.auth2.getAuthInstance();
		auth2.signOut().then(function() {
			console.log('User signed out.');
		});
	}
</script>

	-->


	<!--  naver login-->
	<script type="text/javascript"
		src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
		charset="utf-8"></script>
	<script type="text/javascript"
		src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
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

<br>
<br>

<body>
	<!-- login btn -->
	<div align="center" class="fb-login-button" data-max-rows="1"
		data-size="large" data-button-type="continue_with"
		data-show-faces="true" data-auto-logout-link="true"
		data-use-continue-as="true"></div>

	<!-- facebook -->
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.9&appId=3019893794964352";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
</body>