<%@page import="com.noti.biz.NotiBiz"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");

response.setContentType("text/html; charset=UTF-8");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	int boardno = Integer.parseInt(request.getParameter("board_no"));
	

	NotiBiz biz = new NotiBiz();
	int res = biz.delete(boardno);
	
	if (res > 0) {
%>
	<script type="text/javascript">
		alert("글 삭제 성공");
		location.href = "noti_list.jsp";
	</script>
<%
	} else {
%>
	<script type="text/javascript">
		alert("글 삭제 실패");
		location.href="noti_select.jsp?board_no=<%=boardno%>";
	</script>
<%
	}
%>



</body>
</html>

