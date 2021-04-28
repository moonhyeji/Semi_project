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
<title>학생 페이지</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<style type="text/css">
	
	body{
		text-align: center;
		width: 
	}
	img{
		width: 150px;
		height: 150px;
		margin-bottom: 20px;
		margin-top:30px;
		border: 1px solid black;
	}
	#div_01{
		font-weight: bold;
	}
	#name{
		width: 200px;
		display: inline-block;
		margin-bottom: 20px;
	}
	#phone{
		width: 200px;
		display: inline-block;
		margin-bottom: 20px;
	}
	#addr{
		width: 400px;
		display: inline-block;
		margin-bottom: 20px;
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
	<form action="mypage_info_update_stu.jsp" method="post">
	<input type="hidden" name="member_id" value="<%=dto.getMember_id() %>">
		<h1><a href="../index.jsp">LearnWay</a></h1>
		<h3>마이페이지(Student)</h3>
		<div class="form-group">
			<img class="tec_img" src="https://cdn.hellodd.com/news/photo/202005/71835_craw1.jpg"><br>
			<input class="btn btn-dark btn-sm" type="submit" value="수정">
		</div>
		<div class="form-group" id="div_01">
			<label for="name">이름</label><br>
			<input type="text" class="form-control" id="name" name="member_name" readonly="readonly" value="<%=dto.getMember_name()%>"><br>
			<label for="phone">핸드폰번호</label><br>
			<input type="text" class="form-control" id="phone" name="member_phone" readonly="readonly"value="<%=dto.getMember_phone()%>"><br>
			<label for="addr">주소</label><br>
			<input type="text" class="form-control" id="addr" name="member_addr" readonly="readonly" value="<%=dto.getMember_addr()%>">
		</div>
		<div class="form-group" style="margin-top: 20px;">
			<input class="btn btn-dark" type="button" value="수강 강의 듣기" onclick=""><br><br>
			<input class="btn btn-dark" type="button" value="회원 탈퇴" onclick=""><br><br>
			<input class="btn btn-dark" type="button" value="돌아가기" onclick="location.href='../index.jsp?id=<%=member_id%>'">
		</div>
	</form>
</body>
</html>