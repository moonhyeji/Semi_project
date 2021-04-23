<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LearnWay - 온·오프라인으로 즐기는 다양한 클래스</title>
<!-- 아이콘 찾아서 붙여보기 -->
<script src="https://kit.fontawesome.com/9b7675f701.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/stylesheet.css" type="text/css"/>
<script type="text/javascript">



</script>
</head>
<body>

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
<main>

<div class="section">
	<input type="radio" name="slide" id="slide01" checked>
	<input type="radio" name="slide" id="slide02">
	<input type="radio" name="slide" id="slide03">
	<div class="slidewrap">
		
		<ul class="slidelist">
			<!-- 슬라이드 영역 -->
			<li class="slideitem">
				<a>
					<div class="textbox">
						<h3>새로운 취미 찾기</h3>
						<p>온라인으로 편하게 즐기세요!</p>
					</div> .............................................
					<img src="resources/image/slide_camera.png">
				</a>
			</li>
			<li class="slideitem">
				<a>
					
					<div class="textbox">
						<h3></h3>
						<p></p>
					</div>
					<img src="resources/image/slide_painting.png">
				</a>
			</li>
			<li class="slideitem">
				<a>
					
					<div class="textbox">
						<h3></h3>
						<p></p>
					</div>
					<img src="resources/image/slide_yoga.png">
				</a>
			</li class="slideitem">

			<!-- 좌,우 슬라이드 버튼 -->
			<div class="slide-control">
				<div>
					<label for="slide03" class="left"></label>
					<label for="slide02" class="right"></label>
				</div>
				<div>
					<label for="slide01" class="left"></label>
					<label for="slide03" class="right"></label>
				</div>
				<div>
					<label for="slide02" class="left"></label>
					<label for="slide01" class="right"></label>
				</div>
			</div>

		</ul>
		<!-- 페이징 -->
		<ul class="slide-pagelist">
			<li><label for="slide01"></label></li>
			<li><label for="slide02"></label></li>
			<li><label for="slide03"></label></li>
		</ul>
	</div>
</div>

	<div class="category">
		<a href="#"><i class="fas fa-desktop"></i> IT</a>
		<a href="#"><i class="fas fa-utensils"></i> Cooking</a>
		<a href="#"><i class="fas fa-language"></i> Language</a>
		<a href="#"><i class="fas fa-coins"></i> Stock</a>
		<a href="#"><i class="fas fa-palette"></i> Art</a>
		<a href="#"><i class="fas fa-running"></i> Sport</a>
		<a href="#"><i class="fas fa-map-marked"></i> Around Teacher</a>
	</div>
	
	<section>
		<div class="sec_title">인기 CLASS</div>
		내용
	</section>
	
	<section>
		<div class="sec_title">진행중인 EVENT</div>
		내용
	</section>
</main>

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