<%@page import="com.adminPage.dto.learnDto"%>
<%@page import="java.util.List"%>
<%@page import="com.adminPage.dto.adminPageDto"%>
<%@page import="com.adminPage.biz.adminListBiz"%>
<%@page import="com.adminPage.dao.adminListDao"%>
<%@	page language="java" contentType="text/html; charset=UTF-8"
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
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.js"></script>
<%
	adminListBiz biz = new adminListBiz();

	String member_id = request.getParameter("member_id");
	String member_name = request.getParameter("member_name");
	System.out.println(member_id + " : " + member_name);
	int result = biz.adminCheck(member_id, member_name);
	if (result == -1){%>
	<script type="text/javascript">alert("계정이 발견되지 않았습니다"); window.history.back();</script>
<%	} else if(result != 0) {%>
<script type="text/javascript">alert("관리자만 입장이 가능합니다"); window.history.back();</script>
<%	} else { System.out.println("관리자 입장"); }
	
	List<adminPageDto> memberList = biz.selectList();
	List<learnDto> learnList = biz.learnList();
	
%>
<script type="text/javascript">
var memberscrollmax = 19;
var memberscroll = 19;
var learnscrollmax = 19;
var learnscroll = 19;
var scrollname = true;
function memberList(){
	var user = document.getElementById("userList");
	var learn = document.getElementById("learnList");
	user.removeAttribute("hidden");
	learn.setAttribute("hidden","");
	scrollname = true;
}
function learnList(){
	var user = document.getElementById("userList");
	var learn = document.getElementById("learnList");
	learn.removeAttribute("hidden");
	user.setAttribute("hidden","");
	scrollname = false;
}

$(document).scroll(function(){
	if($(window).scrollTop() >= ($(document).height() - $(window).height())){ // 스크롤 높이 >= 사이트 크기 - 화면 크기
		if(scrollname){
			for(var a = 0; a < memberscrollmax; a++ ){
				if(<%=memberList.size()%> < memberscrollmax){alert("마지막 멤버입니다");break;}
				var tr = document.getElementById("member"+memberscroll);
				tr.removeAttribute("hidden");
				learnscroll++;
			}memberscrollmax += 20;
		} else {
			for(var a = 0; a < learnscrollmax; a++ ){
				if(<%=learnList.size()%> < learnscrollmax){alert("마지막 강의입니다");break;}
				var tr = document.getElementById("learn"+learnscroll);
				tr.removeAttribute("hidden");
				learnscroll++;
			}learnscrollmax += 20;
		}
	}
})
</script>
</head>
<body>
<div>
	<div>
		<h1>관리자 페이지</h1>
		<div id="menu">
			<input type="button" value="멤버목록" onclick="memberList();">
			<input type="button" value="강의목록" onclick="learnList();">
		</div>
		<div id="userList">
			<table border="1">
				<col width="70px">
				<col width="200px">
				<col width="200px">
				<col width="100px">
				<col width="600px">
				<col width="170px">
				<col width="300px">
				<col width="60px">
				<col width="100px">
				<col width="100px">
				<col width="130px">
				<tr>
					<th>번호</th>
					<th>아이디</th>
					<th>이름</th>
					<th>생년월일</th>
					<th>주소</th>
					<th>핸드폰번호</th>
					<th>이메일</th>
					<th>성별</th>
					<th>권한</th>
					<th>회원탈퇴</th>
					<th>가입일</th>
				</tr>
				<%if(memberList.size() == 0){ %>
				<tr><td colspan="11">-----회원이 없습니다-----</td></tr>
				<% } else { for(int a = 0; a < memberList.size(); a++){ 
				adminPageDto dto = memberList.get(a);
				if(a < 19){
				%>	<tr id="member<%=a%>">
				<%} else { %>
					<tr id="member<%=a%>" hidden="">
				<%} %>
						<td><%=dto.getMember_no() %></td>
						<td><%=dto.getMember_id() %></td>
						<td><%=dto.getMember_name() %></td>
						<td><%=dto.getMember_birth() %></td>
						<td><%=dto.getMember_addr() %></td>
						<td><%=dto.getMember_phone() %></td>
						<td><%=dto.getMember_email() %></td>
						<td><%=(dto.getMember_gender().equals("F"))? "여자" : "남자" %></td>
						<%switch(dto.getMember_select()){
						case 0:%><td>관리자</td><%break; 
						case 1:%><td>강사</td><%break; 
						case 2:%><td>학생</td><%break; 
						} %>
						<td><%=(dto.getMember_del() == 0)? "회원": "탈퇴" %></td>
						<td><%=dto.getMember_regdate() %></td>
					</tr>
				<% }
				} %>
			</table>
		</div>
		<div id="learnList" hidden="">
			<table border="1">
				<col width="70px">
				<col width="1500px">
				<col width="200px">
				<col width="130px">
				<col width="130px">
				<col width="200px">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>강사이름</th>
					<th>시작일</th>
					<th>종료일</th>
					<th>수정 및 삭제</th>
				</tr>
				<%if(learnList.size() == 0){ %>
				<tr><td colspan="6" style="text-align: center;">-----강의가 없습니다-----</td></tr>
				<% } else { for(int a = 0; a < learnList.size(); a++){ 
				learnDto dto = learnList.get(a);
				if(a < 19){
				%>	<tr id="learn<%=a%>">
				<%} else { %>
					<tr id="learn<%=a%>" hidden="">
				<%} %>
							<td><%=dto.getClass_no() %></td>
							<td><%=dto.getClass_title() %></td>
							<td><%=dto.getClass_writer() %></td>
							<td><%=dto.getClass_startdate() %></td>
							<td><%=dto.getClass_lastdate() %></td>
							<td>
								<input type="button" value="수정">
								<input type="button" value="삭제">
							</td>
						</tr>
					<% }
				} %>
			</table>
		</div>
	</div>
</div>
</body>
</html>