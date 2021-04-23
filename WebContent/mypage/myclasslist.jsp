<%@page import="com.lesson.dto.LessonDto"%>
<%@page import="java.util.List"%>
<%@page import="com.lesson.biz.LessonBiz"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <% request.setCharacterEncoding("UTF-8"); %>
  <% response.setContentType("texthtml; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 강의 목록</title>
</head>
<body>


<%
LessonBiz biz = new LessonBiz();
List<LessonDto> list = biz.selectList();
%>

<!--  강사 마이페이지 -> 내 강의 목-->
<h1>내 강의 목록 </h1>
 <table border ="1">

   <col width="60px">
   <col width="400px">
   <col width="100px">
   <col width="100px">
      <tr>
	      <th>강의번호</th>
	      <th>강의제목</th>
	      <th>수강시작일</th>
	      <th>수강종료일</th>
      </tr>
<%
  for(LessonDto dto : list){
%>      
    <tr>
       <td><%= dto.getClass_no() %></td>
       <td><%= dto.getClass_title() %></td>
       <td><%= dto.getClass_startdate() %></td>
       <td><%= dto.getClass_lastdate() %></td>
    </tr>  
    
<% 
    }
%>

      <tr>
	     <td colspan="4" align="right">
	        <input type="button" value="강의등록" onclick="location.href='myclassinsert.jsp'">
	        <input type="button" value="뒤로가기" onclick="location.href='mypage_tch.jsp'">
	      </td>
	      
	  </tr>
</table>

</body>
</html>