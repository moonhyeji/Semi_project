

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.List"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<%
response.setContentType("texthtml; charset=UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function idCheckConfirm() {
		var chk = document.getElementsByName("member_id")[0].title;
		if (chk == "n") {
			alert("id 중복체크를 먼저 해주세요.");
			document.getElementsByName("member_id")[0].focus();
		}
		s
	}

	function idCheck() {
		var doc = document.getElementsByName("member_id")[0];
		if (doc.value.trim() == "" || doc.value == null) {
			alert("id를 입력해주세요");
		} else {
			open("idcheck.jsp?command=idchk&member_id=" + doc.value, "",
					"width=200, height=200");
		}
	}
 // opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "abc.go.kr";

function goPopup(){
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
    var pop = window.open("jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
    
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}
/** API 서비스 제공항목 확대 (2017.02) **/
function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn
						, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo){
	// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
	document.form.roadAddrPart1.value = roadAddrPart1;
	document.form.roadAddrPart2.value = roadAddrPart2;
	document.form.addrDetail.value = addrDetail;
	document.form.zipNo.value = zipNo;
}
</script>


<h1>Register form</h1>

<form action="realmain.jsp" method="POST">
	<div>
		<fieldset class="field">
			<label>강사 학생 선택</label><br> <label> 강사 </label><input
				type="radio" name="member_select" value="1"> <label>
				학생 </label><input type="radio" name="member_select" value="2">
		</fieldset>
	</div>


	<!-- 아이디 -->
	<div>
		<label for="member_id">아이디</label><br> <input type="button"
			value="중복체크" onclick="idCheck();"> <input type="text"
			class="" id="memeber_id" name="member_id" placeholder="Id"
			required="required">
	</div>
	<!-- 비밀번호 -->
	<div>
		<label for="member_pw">비밀번호</label><br> <input type="password"
			class="" id="member_pw" name="member_pw" placeholder="Passward"
			required="required">

	</div>

	<!-- 이름 -->
	<div>
		<label for="member_name">이름</label><br> <input type="text"
			class="" id="member_name" name="member_name" placeholder="Name"
			required="required">
	</div>
	<!-- 휴대전화 -->
	<div>
		<label for="member_phone">전화번호</label><br> <input type="text"
			class="" id="member_phone" name="member_phone"
			placeholder="ex) 010-1234-5601" required="required">
	</div>
	<!-- 성별 -->
	<div>
		<fieldset class="field">
			<label for="member_name">성별</label><br> <label> 남 </label><input
				type="radio" name="gender" value="M"> <label> 여 </label><input
				type="radio" name="gender" value="F">
		</fieldset>
	</div>
	<!-- 생년월일 -->
	<div>
		<label for="member_birth">생년월일</label><br> <input type="text"
			class="" id="member_birth" name="member_birth"
			placeholder="ex) 19990415" required="required">

	</div>
	<!-- 이메일 -->
	<div>
		<label for="member_email">이메일</label><br> <input type="text"
			class="" name="member_email" id="member_email" placeholder="E-amil"
			required="required">
	</div>
	<!--  질문 -->
	<div>
		<form>
			<label>내 정보 찾기 질문</label> <br> <select name="question">
				<option value="none">질문을 선택해 주세요</option>
				<option value="question1">기억의 남는 추억의 장소는?</option>
				<option value="question2">자신의 인생 좌우명</option>
				<option value="question3">가장 기억에 남는 선생님 성함은?</option>
				<option value="question4">인상 깊게 읽은 책 이름은?</option>
			</select>
		</form>
	</div>
	<!-- 답변  -->
	<div>
		<label> 내 답변 입력 </label><br> <input type="text">
	</div>


	<!--  주소 -->
	<div >

		<body>
<form name="form" id="form" method="post">
	<table >
			<colgroup>
				<col style="width:20%"><col>
			</colgroup>
			<tbody>
				<tr>
					<th>우편번호</th>
					<td>
					    <input type="hidden" id="confmKey" name="confmKey" value=""  >
						<input type="text" id="zipNo" name="zipNo" readonly style="width:100px">
						<input type="button"  value="주소검색" onclick="goPopup();">
					</td>
				</tr>
				<tr>
					<th>도로명주소</th>
					<td><input type="text" id="roadAddrPart1" style="width:85%"></td>
				</tr>
				<tr>
					<th>상세주소</th>
					<td>
						<input type="text" id="addrDetail" style="width:40%" value="">
						<input type="text" id="roadAddrPart2"  style="width:40%" value="">
					</td>
				</tr>
			</tbody>
		</table>
</form>
</body>

	</div>
	<br>
	<br>
	<div class="reg_button">
		<button>취소하기</button>
		<button>가입하기</button>
	</div>
</form>
</body>
</html>