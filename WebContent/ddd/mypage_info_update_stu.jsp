<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <% request.setCharacterEncoding("UTF-8"); %>
 <% response.setContentType("texthtml; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 페이지</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<style type="text/css">
	
	body{
		text-align: center;
		width: 
	}
	img{
		width: 150px;
		height: 150px;
		margin-bottom: 20px;
		margin-top:30px;
		border: 1px solid black;
	}
	#div_01{
		font-weight: bold;
	}
	#name{
		width: 200px;
		display: inline-block;
		margin-bottom: 20px;
	}
	#phone{
		width: 200px;
		display: inline-block;
		margin-bottom: 20px;
	}
	#member_addr{
		width: 400px;
		display: inline-block;
		margin-bottom: 20px;
	}

</style>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function member_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ''; // 주소 변수
						var extraAddr = ''; // 참고항목 변수
						var memaddr = '';

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						if (data.userSelectedType === 'R') {
							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraAddr !== '') {
								extraAddr = ' (' + extraAddr + ')';
							}
						} else {
							extraAddr = '';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById("member_addr").value = '['+data.zonecode+'] ' + addr + extraAddr;
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("member_addr")
								.focus();
					}
				}).open();
	}
</script>
</head>
<body>
 
<%
String member_id = request.getParameter("member_id");
String member_name = request.getParameter("member_name");
String member_phone = request.getParameter("member_phone");
String member_email = request.getParameter("member_addr");

%>

	<form action="mypage_stu_updateres.jsp" method="post">
	<input type="hidden" name="member_id" value="<%=member_id %>">
		<h1><a href="../index.jsp">LearnWay</a></h1>
		<h3>학생 마이페이지 수정</h3>
		<div class="form-group">
			<img class="tec_img" src="https://cdn.hellodd.com/news/photo/202005/71835_craw1.jpg"><br>
		</div>
		<div class="form-group" id="div_01">
			<label for="name">이름</label><br>
			<input type="text" class="form-control" id="name" name="member_name" value="<%=member_name%>"><br>
			<label for="phone">핸드폰번호</label><br>
			<input type="text" class="form-control" id="phone" name="member_phone" value="<%=member_phone%>"><br>
			<label for="addr">주소</label><br>
			<input type="text" class="form-control" id="member_addr" name="member_addr" value="<%=member_email %>">
			<input type="button" class="btn-dark" onclick="member_execDaumPostcode()" value="우편번호 찾기"><br>
		</div>
		<div class="form-group" style="margin-top: 20px;">
			<input class="btn btn-dark" type="submit" value="수정 완료">&emsp;&emsp;&emsp;
			<span><input class="btn btn-dark" type="button" value="수정 취소" onclick="location.href='index.jsp'"></span>
		</div>
	</form>
</body>
</html>