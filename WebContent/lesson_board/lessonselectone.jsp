<%@page import="com.login.biz.LoginBiz"%>
<%@page import="com.login.dto.LoginDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("UTF-8");
response.setContentType("texthtml; charset=UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>LearnWay - 온·오프라인으로 즐기는 다양한 클래스</title>
<!-- 아이콘 찾아서 붙여보기 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>



<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/9b7675f701.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/stylesheet.css" type="text/css"/>
<style type="text/css">
.card-teacher{
	margin: 5px 0;
	font-size: 13px;
	color: gray;
	
}
.card-title{
	font-size: 20px;
	font-weight: 600;
	color: rgb(60,60,60);
	
}

.card-price{
	padding:10px 0 0 0px;
	font-size: 15px;
	color: #FF3232;
}


.rightmenu {
	position: fixed;
	padding-left: 830px;
}

.leftmenu {
	padding-left: 100px;
}
</style>



</head>
<body>
<%
	String member_id = request.getParameter("id");

	LoginDto dto = new LoginDto();
	LoginBiz biz = new LoginBiz();

	dto = biz.mypageView(member_id);
%>

<script type="text/javascript">

	function gogo() {
	    var url = 'PayForm.jsp?id=<%=member_id%>';
	    window.open(url, "", "width=500, height=600");
	}


</script>
<header>
	
			<!-- 로고 -->
			<ul class="header-list">
				<li><div><img alt="로고" src="resources/image/main_Logo.png" width="170px" height="40px"/></div></li>
				
			<!-- 검색창 -->	
				<li>
				<div class="searchContainer">
					<div class="search_Box">
						<table class="search_Elements">
							<tr>
								<td>
									<input type="text" placeholder="찾으시는 클래스가 있으신가요?" class="search">
								</td>
								<td>
									<a href="#"><img src="resources/image/search_icon.png" style="float: right;"/></a>
								</td>
							</tr>
						</table>
					</div>
				</div>
				</li>
					
		 
			<!-- 메뉴 -->	
				<li>
					<div class="btn-group">
					  <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
					    Menu
					  </button>
					  <ul class="dropdown-menu">
					    <li><a class="dropdown-item" href="#">강의</a></li>
					    <li><a class="dropdown-item" href="#">이벤트</a></li>
					    <li><a class="dropdown-item" href="#">공지사항</a></li>
					    <li><a class="dropdown-item" href="#">고객센터</a></li>
					    <li><a class="dropdown-item" href="#">실시간상담</a></li>
					    <li><hr class="dropdown-divider"></li>
					    <li><a class="dropdown-item" href="#">마이페이지</a></li>
					  </ul>
					</div>				
				</li>
			
				
					<li>
						<div class="login">
			     			 <a href="#"><i class="fas fa-sign-in-alt"></i>LOGIN</a>
			   			</div>
					</li>
					
					<li>   
					   <div class="join">
					      <a href="#"><i class="fas fa-user-friends"></i> JOIN</a>
					   </div>
				   </li>
							   
				
				 
				</ul>
			
			<div class="category">
				<a href="#"><i class="fas fa-desktop"></i> IT</a>
				<a href="#"><i class="fas fa-utensils"></i> Cooking</a>
				<a href="#"><i class="fas fa-language"></i> Language</a>
				<a href="#"><i class="fas fa-coins"></i> Stock</a>
				<a href="#"><i class="fas fa-palette"></i> Art</a>
				<a href="#"><i class="fas fa-running"></i> Sport</a>
				<a href="#"><i class="fas fa-map-marked"></i> Around Teacher</a>
			</div>
		

</header>


<!-- START THE FEATURETTES -->

<main>

<div class="container">
  <div class="row">
  	<div class="leftmenu">
	      <div class="col-7 col-lg-7">
	    <hr class="featurette-divider">
	    <div class="row featurette">
	      <div class="col-md-7">
	        <h2 class="featurette-heading">1강의내용. <span class="text-muted">강의설명 .</span></h2>
	        <p class="lead">강의내용 1 첫번째강의 강의내용 1 첫번째강의 강의내용 1 첫번째강의 강의내용 1 첫번째강의 강의내용 1 첫번째강의 강의내용 1 첫번째강의 </p>
	      </div>
	      <div class="col-md-5">
	        <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>
	
	      </div>
	    </div>
	
	    <hr class="featurette-divider">
	
	    <div class="row featurette">
	      <div class="col-md-7 order-md-2">
	        <h2 class="featurette-heading">강의설명 22222. <span class="text-muted">See for yourself.</span></h2>
	        <p class="lead">강의내용 1 첫번째강의 강의내용 1 첫번째강의 강의내용 1 강의내용 1 첫번째강의 강의내용 1 첫번째강의 강의내용 1 첫번째강의 강의내용 1 첫</p>
	      </div>
	      <div class="col-md-5 order-md-1">
	        <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>
	
	      </div>
	    </div>
	
	    <hr class="featurette-divider">
	
	    <div class="row featurette">
	      <div class="col-md-7">
	        <h2 class="featurette-heading">강의설333명 . <span class="text-muted">Checkmate.</span></h2>
	        <p class="lead">강의내용 1 첫번째강의 강의내용 1 첫번째강의 강의내용 1 강의내용 강의내용 1 첫번째강의 강의내용 1 첫번째강의 강의내용 1 강의내용 </p>
	      </div>
	      <div class="col-md-5">
	        <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>
	
	      </div>
	    </div>
	
	    <hr class="featurette-divider">
	    </div>
    <br>
	</div>


    <!-- END THE FEATURETTES -->
	    <div class="rightmenu">
			<div class="col-5 .ms-auto">
				<div class="card-body">
					<p class="card-teacher">카테고리·강사 이름<p>
					<h5 class="card-title">강의 제목</h5>
					<p class="card-price"><b>월 59,900원(5개월)</b></p>
					<a class="btn btn-outline-dark w-100" onclick="gogo();">주문하기</a>
					
			    </div>       
			</div>
		</div>
	</div>
</div>
</main>





<!-- 푸터  -->
<footer>
	<div class="last">
		<span class="footerLogo">
			<h1>LearnWay</h1>
		</span>
		<div class="addrWrap">
			<sub>
				서울시 강남구 테헤란로 TEL:1234-5678, FAX:1234-5679,
				<p class="copyright">Copyright(C) 2021 All Right Reserved.</p>
			</sub>
			<a href="#"><sub>이용약관</sub></a>
			<a href="#"><sub>개인정보처리방침</sub></a>
		</div>
	</div>
</footer>
</body>
</html>