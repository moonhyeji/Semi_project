<%@page import="com.mypage.dto.myPageDto"%>
<%@page import="com.mypage.biz.myPageBiz"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�л� ������</title>
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
String member_id = request.getParameter("member_id");

myPageBiz biz = new myPageBiz();
myPageDto dto = biz.selectstu(member_id);

%> 

	<form>
		<h1><a href="../index.jsp">LearnWay</a></h1>
		<h3>����������(Student)</h3>
		<div class="form-group">
			<img class="tec_img" src="https://cdn.hellodd.com/news/photo/202005/71835_craw1.jpg"><br>
			<input class="btn btn-dark btn-sm" type="button" value="����" onclick="location.href='mypage_updateres.jsp'">
		</div>
		<div class="form-group" id="div_01">
			<label for="name">�̸�</label><br>
			<input type="text" class="form-control" id="name" name="teacher_name" value="<%=dto.getMember_name() %> readonly="readonly"><br>
			<label for="phone">�ڵ�����ȣ</label><br>
			<input type="text" class="form-control" id="phone" name="teacher_phone" value="<%=dto.getMember_phone()%>" readonly="readonly"><br>
			<label for="addr">�ּ�</label><br>
			<input type="text" class="form-control" id="addr" name="teacher_name" value="<%=dto.getMember_addr() %>" readonly="readonly">
		</div>
		<div class="form-group" style="margin-top: 20px;">
			<input class="btn btn-dark" type="button" value="���� ���� ���" onclick=""><br><br>
			<input class="btn btn-dark" type="button" value="ȸ�� Ż��" onclick="location.href='index.jsp'">
		</div>
	</form>
</body>
</html>