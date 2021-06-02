<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
response.setContentType("texthtml; charset=UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Bree+Serif&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		if ($(".id").val() == "null") {
			$(".log").html('<a class="log" href="login/main_regist.jsp"><i class="fas fa-sign-in-alt"></i>LOGIN</a>');
			$('.mypage').css("display", "none"); 
			$('.btn-group').css("display", "none");
		} else {
			$(".log").html('<a class="log" href="../index.jsp"><i class="fas fa-sign-in-alt"></i>LOGOUT</a>');
			$(".join").text("");
			$('.mypage').css("display", "block"); 
			$('.btn-group').css("display", "block");
		}
	});
	
</script>

<style type="text/css">
*{

font-family: 'Bree Serif', serif;

}

#searh_btn{
	background-image: url('../resources/image/search_icon.png'); 
	background-repeat: no-repeat; 
	outline: 0; 
	border: 0px; 
	cursor:pointer; 
	height:30px; 
	width:30px;
	float: right;
	background-color: rgba( 255, 255, 255, 0 );
	background-position: 0px 0px;
}

</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/9b7675f701.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/stylesheet.css" type="text/css"/>
</head>
<body>
<%
	String member_id = request.getParameter("id");
	System.out.println(member_id);
%>
<input type="hidden" value="<%=member_id %>" class="id">
<header>
	   <!-- 로고 -->
	   <ul class="header-list">
	      <li><div><a href="../index.jsp?id=<%=member_id%>"><img alt="로고" src="../resources/image/LearnWay.png"/></a></div></li>
	      
	   <!-- 검색창 -->   
	      <li>
	      <form action="../lesson_board/lesson_list.jsp?id=<%=member_id%>&class_tag=0" method="post">
		      <div class="searchContainer" style="margin-left: 100px">
		         <div class="search_Box">
		            <table class="search_Elements">
		               <tr>
		                  <td>
		                     <input style="font-family: 'Acme', sans-serif; font-weight:bold; font-size:12pt;" type="text" placeholder="찾으시는 클래스가 있으신가요?" class="search" name="search_text">
		                  </td>
		                  <td style="padding-top: 5px;">
		                     <input type="submit" id="searh_btn" value="" >
		                  </td>
		               </tr>
		            </table>
		         </div>
		      </div>
	      </form>
	      </li>      
	 
	   <!-- 메뉴 -->   
			<li>
				<div class="btn-group">
				  <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
				    Menu
				  </button>
				  <ul class="dropdown-menu">
				    <li><a class="dropdown-item" href="../lesson_board/lesson_list.jsp?id=<%=member_id%>&class_tag=0">강의</a></li>
				    <li><a class="dropdown-item" href="../event_board/event_list.jsp?id=<%=member_id%>">이벤트</a></li>
				    <li><a class="dropdown-item" href="../notice_board/noti_list.jsp?id=<%=member_id%>">공지사항</a></li>
				    <li><a class="dropdown-item" href="../cs_board/cs_list.jsp?id=<%=member_id%>">고객센터</a></li>
				    <li><hr class="dropdown-divider"></li>
				    <li class="mypage"><a class="dropdown-item" href="../mypage/mypageload.jsp?id=<%=member_id %>">마이페이지</a></li>
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
</body>
</html>