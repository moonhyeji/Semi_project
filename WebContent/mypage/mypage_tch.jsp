<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ������</title>
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
		<h3>����������(Teacher)</h3>
		<div class="form-group">
			<img class="tec_img" src="https://cdn.hellodd.com/news/photo/202005/71835_craw1.jpg"><br>
			<input class="btn btn-dark btn-sm" type="button" value="����" onclick="">
		</div>
		<div class="form-group" id="div_01">
			<label for="name">�̸�</label><br>
			<input type="text" class="form-control" id="name" name="teacher_name" readonly="readonly"><br>
			<label for="phome">�ڵ�����ȣ</label><br>
			<input type="text" class="form-control" id="phone" name="teacher_phone" readonly="readonly"><br>
			<label for="addr">�ּ�</label><br>
			<input type="text" class="form-control" id="addr" name="teacher_name" readonly="readonly">
		</div>
		<div class="form-group" style="margin-top: 20px;">
			<input class="btn btn-dark" type="button" value="�� ���Ǹ��" onclick="location.href='myclasslist.jsp'"><br><br>
			<input class="btn btn-dark" type="button" value="�ǽð� ���� ����" onclick=""><br><br>
			<input class="btn btn-dark" type="button" value="ȸ�� Ż��" onclick="">
		</div>
	</form>
</body>
</html>