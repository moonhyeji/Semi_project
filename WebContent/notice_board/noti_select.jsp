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
</head>

<%
	int board_no = Integer.parseInt(request.getParameter("board_no"));

	NotiBiz biz = new NotiBiz();
	NotiDto dto = biz.selectOne(board_no);
%>



<body>

	<h1>DETAIL</h1>
	<table border="1">
		<tr>
			<th>작성자</th>
			<td><%=dto.getBoard_id() %></td>
		</tr>
		<tr>
			<th>제목</th>
			<td><%=dto.getBoard_title() %></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea rows="10" cols="60" readonly="readonly"><%=dto.getBoard_content() %></textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="수정" onclick="location.href='noti_update.jsp?board_no=<%=dto.getBoard_no() %>'"/>
				<input type="submit" value="삭제" onclick="location.href='noti_delete.jsp?board_no=<%=dto.getBoard_no() %>'"/>
				<input type="button" value="목록" onclick=""/>
			</td>
		</tr>
	</table>
</body>
</html>