<%@page import="java.util.List"%>
<%@page import="com.cs.dto.CsDto"%>
<%@page import="com.cs.biz.CsBiz"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LearnWay - 온·오프라인으로 즐기는 다양한 클래스 - 고객센터</title>
</head>
<body>

<% 
	String id = request.getParameter("id");
	String text = request.getParameter("cs_search");
	System.out.println(text);
	System.out.println(id);
	CsBiz biz = new CsBiz();
	List<CsDto> list = null;
	
	if(text==null){
		list = biz.selectList();
	}else{
		list = biz.searchList(text);
	}
%>
<form action="cs_list.jsp" method="post">
<input type = "hidden" name="id" value="<%=id%>">
	<h1> 고객상담 </h1>

	<table border="1">
		<col width="50px"/>
		<col width="100px"/>
		<col width="500px"/>
		<col width="100px"/>
		<tr>
			<th>번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>작성일</th>
		</tr>

<% 
	for (CsDto dto : list) {
%>

	<tr>
		<td><%=dto.getBoard_no() %></td>
		<td><%=dto.getBoard_id() %></td>
		<td><a href="csselect.jsp?board_no=<%=dto.getBoard_no()%>&id=<%=id%>"><%=dto.getBoard_title() %></a></td> 
		<td><%=dto.getBoard_date() %></td>
	</tr>
	
<%	
	}
%>

	<tr>
      <td colspan="4" align="right">
         <input type="button" value="글작성" onclick="location.href='csinsert.jsp?id=<%=id %>'" />
		</td>
	</tr>
			<tr>
			<td colspan="4" align="right">
			<input type="text" name="cs_search" value="">
			<input type="submit" value="검색"></td>
		</tr>
	</table>			
</form>
</body>
</html>