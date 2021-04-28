<%@page import="com.login.biz.LoginBiz"%>
<%@page import="com.login.dto.LoginDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String member_id = request.getParameter("id");

	LoginDto dto = new LoginDto();
	LoginBiz biz = new LoginBiz();

	dto = biz.mypageView(member_id);
%>


<h1>주문/결제</h1>

	<form action="kakao.jsp">
	<h3>주문 정보</h3>
		<p>
			<span>받으시는 분</span><br>
			<input name="name" value="<%=dto.getMember_name()%>"><br>
		</p>
		<p>
			<span>핸드폰 번호</span><br>
			<input name="phone" value="<%=dto.getMember_phone()%>">
		</p>	
		<p>
			<span>주소:</span><br>
			<input name="address" value="<%=dto.getMember_addr()%>">
		</p>
		<p>
			<h3>결제 금액</h3>
			<span>최종 가격</span><br>
			<input name="totalPrice">
		</p>
		<input type="submit" value="결제하기"> <input type="reset" value="취소하기">
	</form>



</body>
</html>