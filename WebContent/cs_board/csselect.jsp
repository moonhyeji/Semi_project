

<%@page import="com.cs.dto.CsDto"%>
<%@page import="com.cs.biz.CsBiz"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	
	int board_no = Integer.parseInt(request.getParameter("board_no"));


	
	CsBiz biz = new CsBiz();
	CsDto dto = biz.selectOne(board_no);
	

%>


	<h1>DETAIL</h1>
	<form action="cs_answerform.jsp" method="post">
	<input type="hidden" name="board_no" value="<%=dto.getBoard_no()%>">	
	<table border="1">
		<tr>
			<th>작성자</th> 
			<td><input type="text" name="board_id" value="<%=dto.getBoard_id() %>" readonly="readonly"></td>
		</tr>
		<tr>
			<th>제목</th>
			<td><input type="text" name="board_title" value="<%=dto.getBoard_title() %>" readonly="readonly"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><input type="hidden" name="board_content" value="<%=dto.getBoard_content() %>"><div><%=dto.getBoard_content() %></div></td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="수정" onclick="location.href='csupdate.jsp?board_no=<%=dto.getBoard_no()%>'"/>
				
				<input type="button" value="삭제" onclick="location.href='csdelete.jsp?board_no=<%=dto.getBoard_no()%>'"/>
				<input type="submit" value="답변">
				<input type="button" value="목록" onclick=""/>
			</td>
		</tr>		
	</table>
	</form>
</body>
</html>