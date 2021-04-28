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
<%
	String member_id = request.getParameter("id");
	
%>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {


		if ($(".id").val() == "null") {
			$(".log").html('<a class="log" href="login/main_regist.jsp"><i class="fas fa-sign-in-alt"></i>LOGIN</a>');
			$('.mypage').html('<a href="#">마이페이지</a>')
		} else {
			$(".log").html('<a class="log" href="index.jsp"><i class="fas fa-sign-in-alt"></i>LOGOUT</a>');
			$(".join").text("");
			$('.mypage').html('<a class="mypage" href="mypage/mypageload.jsp?id=<%=member_id %>">마이페이지</a>')
		}
	});
</script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/9b7675f701.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/stylesheet.css" type="text/css"/>
<script type="text/javascript">
</script>

</head>
<body>

<header>

<input type="hidden" value="<%=member_id %>" class="id">

   <!-- 로고 -->
   <ul class="header-list">
      <li><div><img alt="로고" src="resources/image/main_Logo.png" width="170px" height="40px"/></div></li>
      
   <!-- 검색창 -->   
      <li>
      <div class="searchContainer" style="margin-left: 100px">
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
			    <li><a class="dropdown-item" href="lesson_board/lesson_list.jsp?id=<%=member_id%>">강의</a></li>
			    <li><a class="dropdown-item" href="#">이벤트</a></li>
			    <li><a class="dropdown-item" href="notice_board/noti_list.jsp?id=<%=member_id%>">공지사항</a></li>
			    <li><a class="dropdown-item" href="cs_board/cs_list.jsp?id=<%=member_id%>">고객센터</a></li>
			    <li><a class="dropdown-item" href="#">실시간상담</a></li>
			    <li><hr class="dropdown-divider"></li>
			    <li><a class="dropdown-item" href="mypage/mypageload.jsp?id=<%=member_id %>">마이페이지</a></li>
			  </ul>
			</div>				
		</li>
   
      
         <li>
            <div class="login">
                  <a class="log" href="login/main_regist.jsp"><i class="fas fa-sign-in-alt"></i>LOGIN</a>
               </div>
         </li>
         
         <li>   
            <div class="join">
               <a class="join" href="login/inmain_regist.jsp"><i class="fas fa-user-friends"></i>JOIN</a>
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
<!-- Channel Plugin Scripts -->
<script>
  (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  ChannelIO('boot', {
    "pluginKey": "72cd9e68-28fb-4db9-b3a8-fb3abf795732"
  });
</script>
<!-- End Channel Plugin -->

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