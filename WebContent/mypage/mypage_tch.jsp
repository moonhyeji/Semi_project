<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>강사 페이지</title>
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
	<form>
		<h1><a href="../index.jsp">LearnWay</a></h1>
		<h3>마이페이지(Teacher)</h3>
		<div class="form-group">
			<img class="tec_img" src="https://cdn.hellodd.com/news/photo/202005/71835_craw1.jpg"><br>
			<input class="btn btn-dark btn-sm" type="button" value="수정" onclick="">
		</div>
		<div class="form-group" id="div_01">
			<label for="name">이름</label><br>
			<input type="text" class="form-control" id="name" name="teacher_name" readonly="readonly"><br>
			<label for="phome">핸드폰번호</label><br>
			<input type="text" class="form-control" id="phone" name="teacher_phone" readonly="readonly"><br>
			<label for="addr">주소</label><br>
			<input type="text" class="form-control" id="addr" name="teacher_name" readonly="readonly">
		</div>
		<div class="form-group" style="margin-top: 20px;">
			<input class="btn btn-dark" type="button" value="내 강의목록" onclick="location.href='myclasslist.jsp'"><br><br>
			<input class="btn btn-dark" type="button" value="실시간 강의 시작" onclick=""><br><br>
			<input class="btn btn-dark" type="button" value="회원 탈퇴" onclick="">
		</div>
	</form>
</body>
</html>