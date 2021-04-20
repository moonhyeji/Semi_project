<%@page import="com.login.biz.LoginBiz"%>
<%@page import="com.login.dto.LoginDto"%>
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
    int member_select = Integer.parseInt(request.getParameter("member_select"));
	String member_id = request.getParameter("member_id");
	String member_pw = request.getParameter("member_pw");
	String member_name = request.getParameter("member_name");
	String member_gender = request.getParameter("member_gender");
	String member_birth = request.getParameter("member_birth");
	String member_email = request.getParameter("member_email");
	String member_phone = request.getParameter("member_phone");
	String member_addr = request.getParameter("member_addr");
	
	
	
	
	
	
	LoginDto dto = new LoginDto();
	
	dto.setMember_id(member_id);
	dto.setMember_select(member_select);
	dto.setMember_pw(member_pw);
	dto.setMember_name(member_name);
	dto.setMember_gender(member_gender);
	dto.setMember_birth(member_birth);
	dto.setMember_email(member_email);
	dto.setMember_phone(member_phone);
	dto.setMember_addr(member_addr);
	
	
    LoginBiz biz = new LoginBiz();
	int res = biz.insert(dto);
	if(res > 0){
	
%>

	<script type="text/javascript">
	alert("회원가입 성공");
	location.href="realmain.jsp";
	</script>
	
	<%
	
}else{
	%>

	<script type="text/javascript">
	   alert("회원가입 실패");
	   location.href="realmain.jsp";	   
	</script>
		<%
	
}
%>


 
</body>
</html>