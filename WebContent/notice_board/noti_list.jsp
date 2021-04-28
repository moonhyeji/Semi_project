<%@page import="com.login.biz.LoginBiz"%>
<%@page import="java.util.List"%>
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
<title>LearnWay - 온·오프라인으로 즐기는 다양한 클래스 - 공지사항</title>
</head>
<body>
<% 
	String text = request.getParameter("noti_search");
	String id = request.getParameter("id");
	LoginBiz logbiz = new LoginBiz();
	String select = logbiz.selectCheck(id);
	System.out.println(text);
	NotiBiz biz = new NotiBiz();
	List<NotiDto> list = null;
	
	if(text==null){
		list = biz.selectList();
	}else{
		list = biz.searchList(text);
	}


	System.out.println(select);
%>
<script type="text/javascript">
	var select = <%=select%>;
	
	function select_insert() {
		if(select == "0"){
			location.href = 'noti_insert.jsp?id=<%=id%>';
		}else{
			alert("관리자가 아닙니다.");
		}	
	}

</script>
<form action="noti_list.jsp" method="post">
	<input type = "hidden" name="id" value="<%=id%>">
	
		<h1> 공지사항 </h1>
	
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
		for (NotiDto dto : list) {
	%>
	
		<tr>
			<td><%=dto.getBoard_no() %></td>
			<td><%=dto.getBoard_id() %></td>
			<td><a href="noti_select.jsp?board_no=<%=dto.getBoard_no()%>"><%=dto.getBoard_title() %></a></td> 
			<td><%=dto.getBoard_date() %></td>
		</tr>
		
	<%	
		}
	%>
	
		<tr>
	      	<td colspan="4" align="right">
	       		<input type="button" value="글 작성" onclick="select_insert();">
			</td>
		</tr>
		<tr>
			<td colspan="4" align="right">
			<input type="text" name="noti_search" value="">
			<input type="submit" value="검색"></td>
		</tr>
		</table>			
</form>
</body>
</html>