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
<script type="text/javascript">

	var count = 0;
	//스크롤 바닥 감지
	window.onscroll = function(e) {
	//추가되는 임시 콘텐츠
	//window height + window scrollY 값이 document height보다 클 경우,
	if((window.innerHeight + window.scrollY) >= document.body.offsetHeight) {
		//실행할 로직 (콘텐츠 추가)
	    count++;
	    var addContent = $('.container').clone();
	    //article에 추가되는 콘텐츠를 append
	    $('article').append(addContent);
		}
	};



</script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/9b7675f701.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/stylesheet.css" type="text/css"/>
<style type="text/css">

body {background:#fff;}





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


.card-text{
	padding:5px 0 0 0px;
	margin: 5px 0;
	font-size: 15px;
	color: gray;
}

.card-price{
	padding:15px 0 0 0px;
	font-size: 15px;
	color: #FF3232;
}


.card{
	
	border-radius: 30px;
}

header{
	position: fixed;
	top: 0;
  	left: 0;
  	right: 0;

}

.body_scroll {
	padding-top: 150px;
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

<main>

	<article>
		 <div class="body_scroll">

		
		 <div class="container" style="width: 70rem;">
		      <div class="row">
		        <div class="col-4">
		 
		          <div class="card">
		            <img src="resources/image/캡처1.PNG" />
		            <div class="card-body">
		              <p class="card-teacher">카테고리·강사 이름<p>
		              <h5 class="card-title">강의 제목</h5>
		              <p class="card-text">강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용</p>
		              <p class="card-price"><b>월 59,900원(5개월)</b></p>
		              <div class="card-button"><a href="lessonselectone.jsp?id=<%=member_id %>" class="btn btn-outline-dark w-100">수강하기</a></div>
		            </div>
		            
		          </div>
		        </div>
		        <div class="col-4">
		 
		          <div class="card">
		            <img src="resources/image/캡처1.PNG" />
		            <div class="card-body">
		              <p class="card-teacher">카테고리·강사 이름<p>
		              <h5 class="card-title">강의 제목</h5>
		              <p class="card-text">강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용</p>
		              <p class="card-price"><b>월 59,900원(5개월)</b></p>
		              <div class="card-button"><a href="#" class="btn btn-outline-dark w-100">수강하기</a></div>
		            </div>
		            
		          </div>
		        </div>
		        <div class="col-4">
		 
		          <div class="card">
		            <img src="resources/image/캡처1.PNG" />
		            <div class="card-body">
		              <p class="card-teacher">카테고리·강사 이름<p>
		              <h5 class="card-title">강의 제목</h5>
		              <p class="card-text">강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용</p>
		              <p class="card-price"><b>월 59,900원(5개월)</b></p>
		              <div class="card-button"><a href="#" class="btn btn-outline-dark w-100">수강하기</a></div>
		            </div>
		            
		          </div>
		        </div>       
		      </div>
</br>
</br>
		</div>
		

 </div>
 
 	
		 <div class="container" style="width: 70rem;">
		      <div class="row">
		        <div class="col-4">
		 
		          <div class="card">
		            <img src="resources/image/캡처1.PNG" />
		            <div class="card-body">
		              <p class="card-teacher">카테고리·강사 이름<p>
		              <h5 class="card-title">강의 제목</h5>
		              <p class="card-text">강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용</p>
		              <p class="card-price"><b>월 59,900원(5개월)</b></p>
		              <div class="card-button"><a href="#" class="btn btn-outline-dark w-100">수강하기</a></div>
		            </div>
		            
		          </div>
		        </div>
		        <div class="col-4">
		 
		          <div class="card">
		            <img src="resources/image/캡처1.PNG" />
		            <div class="card-body">
		              <p class="card-teacher">카테고리·강사 이름<p>
		              <h5 class="card-title">강의 제목</h5>
		              <p class="card-text">강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용</p>
		              <p class="card-price"><b>월 59,900원(5개월)</b></p>
		              <div class="card-button"><a href="#" class="btn btn-outline-dark w-100">수강하기</a></div>
		            </div>
		            
		          </div>
		        </div>
		        <div class="col-4">
		 
		          <div class="card">
		            <img src="resources/image/캡처1.PNG" />
		            <div class="card-body">
		              <p class="card-teacher">카테고리·강사 이름<p>
		              <h5 class="card-title">강의 제목</h5>
		              <p class="card-text">강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용</p>
		              <p class="card-price"><b>월 59,900원(5개월)</b></p>
		              <div class="card-button"><a href="#" class="btn btn-outline-dark w-100">수강하기</a></div>
		            </div>
		            
		          </div>
		        </div>       
		      </div>
</br>
</br>		      
		</div>
</div>
	

		
		 <div class="container" style="width: 70rem;">
		      <div class="row">
		        <div class="col-4">
		 
		          <div class="card">
		            <img src="resources/image/캡처1.PNG" />
		            <div class="card-body">
		              <p class="card-teacher">카테고리·강사 이름<p>
		              <h5 class="card-title">강의 제목</h5>
		              <p class="card-text">강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용</p>
		              <p class="card-price"><b>월 59,900원(5개월)</b></p>
		              <div class="card-button"><a href="#" class="btn btn-outline-dark w-100">수강하기</a></div>
		            </div>
		            
		          </div>
		        </div>
		        <div class="col-4">
		 
		          <div class="card">
		            <img src="resources/image/캡처1.PNG" />
		            <div class="card-body">
		              <p class="card-teacher">카테고리·강사 이름<p>
		              <h5 class="card-title">강의 제목</h5>
		              <p class="card-text">강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용</p>
		              <p class="card-price"><b>월 59,900원(5개월)</b></p>
		              <div class="card-button"><a href="#" class="btn btn-outline-dark w-100">수강하기</a></div>
		            </div>
		            
		          </div>
		        </div>
		        <div class="col-4">
		 
		          <div class="card">
		            <img src="resources/image/캡처1.PNG" />
		            <div class="card-body">
		              <p class="card-teacher">카테고리·강사 이름<p>
		              <h5 class="card-title">강의 제목</h5>
		              <p class="card-text">강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용</p>
		              <p class="card-price"><b>월 59,900원(5개월)</b></p>
		              <div class="card-button"><a href="#" class="btn btn-outline-dark w-100">수강하기</a></div>
		            </div>
		            
		          </div>
		        </div>       
		      </div>
</br>
</br>		      
		</div>
</div>


		
		 <div class="container" style="width: 70rem;">
		      <div class="row">
		        <div class="col-4">
		 
		          <div class="card">
		            <img src="resources/image/캡처1.PNG" />
		            <div class="card-body">
		              <p class="card-teacher">카테고리·강사 이름<p>
		              <h5 class="card-title">강의 제목</h5>
		              <p class="card-text">강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용</p>
		              <p class="card-price"><b>월 59,900원(5개월)</b></p>
		              <div class="card-button"><a href="#" class="btn btn-outline-dark w-100">수강하기</a></div>
		            </div>
		            
		          </div>
		        </div>
		        <div class="col-4">
		 
		          <div class="card">
		            <img src="resources/image/캡처1.PNG" />
		            <div class="card-body">
		              <p class="card-teacher">카테고리·강사 이름<p>
		              <h5 class="card-title">강의 제목</h5>
		              <p class="card-text">강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용</p>
		              <p class="card-price"><b>월 59,900원(5개월)</b></p>
		              <div class="card-button"><a href="#" class="btn btn-outline-dark w-100">수강하기</a></div>
		            </div>
		            
		          </div>
		        </div>
		        <div class="col-4">
		 
		          <div class="card">
		            <img src="resources/image/캡처1.PNG" />
		            <div class="card-body">
		              <p class="card-teacher">카테고리·강사 이름<p>
		              <h5 class="card-title">강의 제목</h5>
		              <p class="card-text">강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용강의내용</p>
		              <p class="card-price"><b>월 59,900원(5개월)</b></p>
		              <div class="card-button"><a href="#" class="btn btn-outline-dark w-100">수강하기</a></div>
		            </div>
		            
		          </div>
		        </div>       
		      </div>
</br>
</br>		      
		</div>
</div>	
</article>

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
