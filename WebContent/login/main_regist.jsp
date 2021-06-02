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

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer>

function onSignIn(googleUser) {
     var profile = googleUser.getBasicProfile();
     console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
     console.log('Name: ' + profile.getName());
     console.log('Image URL: ' + profile.getImageUrl());
     console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
   }

</script>


<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
   crossorigin="anonymous">
<style type="text/css">
body {
    font-family: "Lato", sans-serif;
}



.main-head{
    height: 150px;
    background: #FFF;
   
}

.sidenav {
    height: 100%;
    background-color: #777;
    overflow-x: hidden;
    padding-top: 20px;
}


.main {
    padding: 0px 10px;
}

@media screen and (max-height: 450px) {
    .sidenav {padding-top: 15px;}
}

@media screen and (max-width: 450px) {
    .login-form{
        margin-top: 10%;
    }

    .register-form{
        margin-top: 10%;
    }
}

@media screen and (min-width: 768px){
    .main{
        margin-left: 40%; 
    }

    .sidenav{
        width: 40%;
        position: fixed;
        z-index: 1;
        top: 0;
        left: 0;
    }

    .login-form{
        margin-top: 80%;
    }

    .register-form{
        margin-top: 20%;
    }
}


.login-main-text{
    margin-top: 20%;
    padding: 60px;
    color: #fff;
}

.login-main-text h2{
    font-weight: 300;
}

.btn-black{
    background-color: #000 !important;
    color: #fff;
}


</style>
</head>
<body>
<div class="sidenav">
         <div class="login-main-text">
            
           
            <h2 style="font-size: 40px">LearnWay</h2>
         <p><span style="font-weight: bold;">Login</span> from here to access.</p>
         </div>
      </div>
      
      <form action="logincheck.jsp" method="post">
      <div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
              
                  <div class="form-group">
                     <label>ID</label>
                     <input type="text" class="form-control" placeholder="ID" required="required" name="member_id">
                  </div>
                  <div class="form-group">
                     <label>Password</label>
                     <input type="password" class="form-control" placeholder="Password" required="required" name="member_pw">
                  </div>
                  <input type="submit" class="btn btn-black" value="login"/>
                  <a href="../index.jsp"  class="btn btn-secondary">Back</a>
                 
                        <br>
                        <br>
                        
                     <a href="findid.jsp" class="btn btn-secondary">find ID</a>
                     <a href="findpw.jsp"  class="btn btn-secondary">find PW</a>
                     <br>
                        <br>
                        
                    
<!--  naver login-->
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<!-- 네이버아이디로로그인 버튼 노출 영역 -->
<div id="naver_id_login"></div>
	<!-- //네이버아이디로로그인 버튼 노출 영역 -->
<script type="text/javascript">
		var naver_id_login = new naver_id_login("iPebPScsoiwrYEwp5EO9", "http://49.170.22.193:8787/LearnWay_2week/login/callback_naver.jsp");
		var state = naver_id_login.getUniqState();
		naver_id_login.setButton("white", 2, 40);
		naver_id_login.setDomain("y826gT7iVo");
		naver_id_login.setState(state);
		
		naver_id_login.init_naver_id_login();
		
</script>
</br>

<!-- 카톡 로그인 -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
   <a id="kakao-login-btn"></a>
   <a href="http://developers.kakao.com/logout"></a>
   <script type='text/javascript'>
   //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('a73f4d1f0ed420f290f1ee269cadf83b'); //여기서 아까 발급받은 키 중 javascript키를 사용해준다.
    // 카카오 로그인 버튼을 생성합니다.
    Kakao.Auth.createLoginButton({
       container : '#kakao-login-btn',
       success : function( authObj ) {
          
          Kakao.API.request({
                 url: '/v2/user/me',
                 success: function(res) {

                   var userid = res.kakao_account.profile.nickname
                   var email = res.kakao_account.email
       
                   location.href = "social_login_res_kakao.jsp?email="+ email;
                   
                   },
                 fail: function(error) {
                   alert(JSON.stringify(error));
                 }
               });
             },
             fail: function(err) {
               alert(JSON.stringify(err));
             }
           });
         //]]>
       </script>
<br>
<br>
                     
             
            </div>
         </div>
      </div>
      </form>
      
         

</body>
</html>