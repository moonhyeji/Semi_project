<%@page import="com.login.biz.LoginBiz"%>
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
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/9b7675f701.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="../css/stylesheet.css" type="text/css"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	if ($(".board_id").val() == $('.my_id').val()) {
		$('input[name=update]').css("display", "inline-block");
		$('input[name=delete]').css("display", "inline-block");
	} else {
		$('input[name=update]').css("display", "none");
		$('input[name=delete]').css("display", "none");
	}
});
	
</script>
<style type="text/css">

.title{
	margin: 30px auto 10px auto;
	text-align: center;
	align: center;
	text-size: 32px;
	width: 720px;

	background: #D9D4CF;
	color: white;
}

.read{
	border-collapse: separate;
	border-spacing: 0 10px;
}
</style>
</head>

<%
	int board_no = Integer.parseInt(request.getParameter("board_no"));
	String id = request.getParameter("id");
	
	NotiBiz biz = new NotiBiz();
	NotiDto dto = biz.selectOne(board_no);
	LoginBiz logbiz = new LoginBiz();
	String select = logbiz.selectCheck(id);
	String board_id = dto.getBoard_id();
	   
	System.out.println(select);
	System.out.println(id);
	System.out.println(board_id);
%>
<script type="text/javascript">
	var select = <%=select%>;
	
	function select_insert() {
		if(select == "0"){
			location.href = location.href='noti_update.jsp?board_no=<%=dto.getBoard_no()%>&id=<%=id%>';
		}else{
			alert("???????????? ????????????.");
		}	
	}

</script>
<body>
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

<input type="hidden" class="select" value="<%=select%>">
<input type="hidden" class="my_id" name="my_id" value="<%=id%>">
	<div class="title"><b> ???????????? </b></div>
	<table style="margin:30px auto 30px auto;" class="read">
		<tr>
			<th>????????????</th>
			<td><input class="board_id" type="text" name="board_id" style="width:150px" value="<%=dto.getBoard_id() %>" readonly="readonly"></td>
		</tr>
		<tr>
			<th>??????</th>
			<td><input type="text" name="board_title" style="width:680px" value="<%=dto.getBoard_title() %>" readonly="readonly"></td>
		</tr>
		<tr>
			<th>??????</th>
			<td><div style="border:1px solid;"><%=dto.getBoard_content() %></div></td>
		</tr>
		<tr>
			<td colspan="3" align="right">
				<input name="update" class="btn btn-outline-dark" type="button" value="??????" onclick="select_insert();"/>
				<input name="delete" class="btn btn-dark" type="submit" value="??????" onclick="location.href='noti_delete.jsp?board_no=<%=dto.getBoard_no() %>&id=<%=id%>'"/>
				<input type="button" class="btn btn-outline-dark" value="??????" onclick="location.href='noti_list.jsp?id=<%=id%>'"/>
			</td>
		</tr>
	</table>
	
<footer>
   <div class="last">
      <span class="footerLogo">
         <h1>LearnWay</h1>
      </span>
      <div class="addrWrap">
         <sub>
            ????????? ????????? ???????????? TEL:1234-5678, FAX:1234-5679,
            <p class="copyright">Copyright(C) 2021 All Right Reserved.</p>
         </sub>
         <a href="#"><sub>????????????</sub></a>
         <a href="#"><sub>????????????????????????</sub></a>
      </div>
   </div>
</footer>	
</body>
</html>