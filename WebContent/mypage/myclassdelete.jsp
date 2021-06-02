<%@page import="com.lesson.dto.LessonDto"%>
<%@page import="com.lesson.biz.LessonBiz"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <% request.setCharacterEncoding("UTF-8"); %>
  <% response.setContentType("texthtml; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int class_no = Integer.parseInt(request.getParameter("class_no"));
	String class_writer = request.getParameter("class_writer");
	
	LessonBiz biz = new LessonBiz();
	int res = biz.delete(class_no);
	
	if(res>0){
%>
	<script type="text/javascript">
		alert("강의 삭제 성공");
		location.href="myclasslist.jsp?id=<%=class_writer %>";
	</script>
<%
	}else{
%>
	<script type="text/javascript">
		alert("강의 삭제 성공");
		location.href="myclasslist.jsp?id=<%=class_writer %>";
	</script>
<%
	}
%>
</body>
</html>