<%@page import="com.login.biz.LoginBiz"%>
<%@page import="java.util.List"%>
<%@page import="com.noti.dto.NotiDto"%>
<%@page import="com.noti.biz.NotiBiz"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; charset=UTF-8");%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LearnWay - 온·오프라인으로 즐기는 다양한 클래스 - 공지사항</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/9b7675f701.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/stylesheet.css" type="text/css"/>
<style type="text/css">

main { 
	background:#fff;
	padding: 30px 30px 10px 30px;
}

a { text-decoration: none; color: black; }
a:visited { text-decoration: none; }
a:hover { text-decoration: none; }
a:focus { text-decoration: none; }
a:hover, a:active { text-decoration: none; }







</style>
</head>
<body>
<% 
	String text = request.getParameter("noti_search");
	String id = request.getParameter("id");
	LoginBiz logbiz = new LoginBiz();
	String select = logbiz.selectCheck(id);
	System.out.println(text);
	NotiBiz biz = new NotiBiz();
	List<NotiDto> list = null;
	
	if(text==null){
		list = biz.selectList();
	}else{
		list = biz.searchList(text);
	}


	System.out.println(select);
%>
<script type="text/javascript">
	var select = <%=select%>;
	
	function select_insert() {
		if(select == "0"){
			location.href = 'noti_insert.jsp?id=<%=id%>';
		}else{
			alert("관리자가 아닙니다.");
		}	
	}

</script>
<header>
<jsp:include page="../header.jsp?id=<%=id %>"></jsp:include>
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
<form action="noti_list.jsp" method="post">
	<input type = "hidden" name="id" value="<%=id%>">
	
		<h3><b> 공지사항 </b></h3>
		<br>
		<table class="table table-hover table-md">
			<col width="5%"/>
			<col width="15%"/>
			<col width="55%"/>
			<col width="25%"/>
			<tr>
				<th style="text-align:center;">번호</th>
				<th style="text-align:center;">작성자</th>
				<th style="text-align:center;">제목</th>
				<th style="text-align:center;">작성일</th>
			</tr>
	
	<% 
		for (NotiDto dto : list) {
	%>
	
		<tr>
			<td style="text-align:center;"><%=dto.getBoard_no() %></td>
			<td style="text-align:center;"><%=dto.getBoard_id() %></td>
			<td><a href="noti_select.jsp?board_no=<%=dto.getBoard_no()%>&id=<%=id%>"><%=dto.getBoard_title() %></a></td> 
			<td style="text-align:center;"><%=dto.getBoard_date() %></td>
		</tr>
		
	<%	
		}
	%>
	
		<tr>
			<td colspan="4" align="center">
				<input type="text" name="noti_search" value="" style="text-align:center; width:400px;">
				<input type="submit" value="검색" class="btn btn-outline-dark">
			</td>
	      	<td colspan="4" align="right">
	       		<input type="button" value="글 작성" onclick="select_insert();" class="btn btn-outline-dark">
			</td>
		</tr>

		</table>			
</form>
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