<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <% request.setCharacterEncoding("UTF-8"); %>
  <% response.setContentType("texthtml; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LearnWay - 온·오프라인으로 즐기는 다양한 클래스</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>



<!-- 아이콘 찾아서 붙여보기 -->

<%
	String member_id = request.getParameter("id");
	
%>
<script src="https://kit.fontawesome.com/9b7675f701.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="../css/stylesheet.css" type="text/css"/>
<script type="text/javascript">
</script>
</head>
<body>
</head>
<body>

<header>
	<!-- 로고 -->
	<ul class="header-list">
		<li><div><img alt="로고" src="../resources/image/main_Logo.png" width="170px" height="40px"/></div></li>
		
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
							<a href="#"><img src="../resources/image/search_icon.png" style="float: right;"/></a>
						</td>
					</tr>
				</table>
			</div>
		</div>
		</li>
			
 
	<!-- 메뉴 -->	
		<li>
			<div>
				<input type="checkbox" id="menuicon">
				<label for="menuicon">
					<span></span>
					<span></span>
					<span></span>
				</label>
				<div class="sidebar">
					<ul class="sitemap-ul">
						<li><a href="#"></a>
							<ul id="submenu">
								<li><a href="#">강의</a></li>
								<li><a href="#">마이페이지</a></li>
								<li><a href="#">이벤트</a></li>
								<li><a href="#">공지사항</a></li>
								<li><a href="#">고객센터</a></li>
								<li><a href="#">실시간상담</a></li>
							</ul>
						</li>
					</ul>
				</div>			
			</div>
		</li>
	
		
			<li>
				<div class="login">
	     			 <a href="login/main_regist.jsp"><i class="fas fa-sign-in-alt"></i>LOGIN</a>
	   			</div>
			</li>
			
			<li>   
			   <div class="join">
			      <a href="login/inmain_regist.jsp"><i class="fas fa-user-friends"></i> JOIN</a>
			   </div>
		   </li>
		</ul>
</header>
<!--  헤더 끝 -->


	<div class="category">
		<a href="#"><i class="fas fa-desktop"></i> IT</a>
		<a href="#"><i class="fas fa-utensils"></i> Cooking</a>
		<a href="#"><i class="fas fa-language"></i> Language</a>
		<a href="#"><i class="fas fa-coins"></i> Stock</a>
		<a href="#"><i class="fas fa-palette"></i> Art</a>
		<a href="#"><i class="fas fa-running"></i> Sport</a>
		<a href="#"><i class="fas fa-map-marked"></i> Around Teacher</a>
	</div>
	


<!-- START THE FEATURETTES -->


<div class="container">
  <div class="row">
      <div class="col-md-7 col-lg-7">
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

    <!-- /END THE FEATURETTES -->
<div class="col-md-5 .ms-auto">
      <div class="col-md-5 .col-lg-4 .offset-md-4">
        <h4 class="d-flex justify-content-between align-items-center mb-3">
          <span class="text-primary">Order</span>
        </h4>
        <ul class="list-group mb-3">
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">첫번째강의</h6>
              <small class="text-muted">Brief description</small>
            </div>
            <span class="text-muted">$12</span>
          </li>
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">두번째강의</h6>
              <small class="text-muted">Brief description</small>
            </div>
            <span class="text-muted">$8</span>
          </li>
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">세번째강의</h6>
              <small class="text-muted">Brief description</small>
            </div>
            <span class="text-muted">$5</span>
          </li>
          <li class="list-group-item d-flex justify-content-between bg-light">
            <div class="text-success">
              <h6 class="my-0">이벤트할인</h6>
              <small>이벤트가격</small>
            </div>
            <span class="text-success">−$5</span>
          </li>
          <li class="list-group-item d-flex justify-content-between">
            <span>Total (원)</span>
            <strong>40만원</strong>
          </li>
        </ul>
        <a href="PayForm.jsp?id=<%=member_id %>">주문하기</a>
</div>
</div>
</div>
</div>






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