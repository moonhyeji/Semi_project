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
<title>Insert title here</title>
</head>
<body>

<form action="webrtcres.jsp" method="post">
	<p>강의 이름을 입력해주세요.</p><br>
	<input type="text" name="title" value=""><br>
	<p>webrtc 강의 주소 입력해주세요</p><br>
	<input type="text" name="link" value="">
	<input type="submit" value="확인">
</form>

</body>
</html>