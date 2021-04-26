<%@	page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="memberList.jsp">
	<input type="text" name="member_id" value="admin">
	<input type="text" name="member_name" value="관리자">
	<input type="submit" value="이동">
</form>
</body>
</html>