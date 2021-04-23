<%@page import="com.mypage.dto.myPageDto"%>
<%@page import="com.mypage.biz.myPageBiz"%>
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
String member_id = request.getParameter("member_id");
String member_name = request.getParameter("member_name");
String member_phone = request.getParameter("member_phone");
String member_addr = request.getParameter("member_addr");


myPageBiz biz = new myPageBiz();
int res = biz.updateinfo(member_id, member_name, member_phone, member_addr );

if(res > 0){ 
%>

<script type="text/javascript">
  alert("수강생정보 수정 성공");
  location.href="mypage_tch.jsp?member_id=<%=member_id %>";
</script>     


<%
}else{
%>

  <script type="text/javascript">
  alert("정보 수정 실패");
  location.href="mypage_info_update.jsp?member_id=<%=member_id%>";
  </script>
  
<%
}
%>

</body>
</html>