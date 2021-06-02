<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>find ID</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
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
            <h2>Find<br> PASSWORD</h2><br>
            <p></p>
         </div>
      </div>
      <div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
            
               <form action="findpw_res.jsp" method="post">
                  <div class="form-group">
                     <label>Name</label>
                     <input type="text" class="form-control" placeholder="User Name" name ="member_name">
                  </div>
                  
                  <div class="form-group">
                     <label>Email</label>
                     <input type="text" class="form-control" placeholder="Email" name="member_email">
                  </div>
                  
                  <div class="form-group">
                     <label>Question</label>
                     <select name="member_question" class="form-control">
						<option value="질문을 선택해 주세요">질문을 선택해 주세요</option>
						<option value="기억의 남는 추억의 장소는?">기억의 남는 추억의 장소는?</option>
						<option value="자신의 인생 좌우명">자신의 인생 좌우명</option>
						<option value="가장 기억에 남는 선생님 성함은?">가장 기억에 남는 선생님 성함은?</option>
						<option value="인상 깊게 읽은 책 이름은?">인상 깊게 읽은 책 이름은?</option>
					</select>
                  </div>
                  
                  <div class="form-group">
                     <label>Answer</label>
                     <input type="text" class="form-control" placeholder="Answer" name="member_answer">
                  </div>
                  <button type="submit" class="btn btn-black">FIND</button>
                  <a href="main_regist.jsp" class="btn btn-secondary">back</a>
                  <a href="main_regist.jsp"  class="btn btn-secondary">Back</a>
                 
               </form>
            </div>
         </div>
      </div>
	

</body>
</html>
