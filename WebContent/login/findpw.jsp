<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PW 찾기</title>
</head>
<body>
		<h1>PW 찾기</h1>
		
		<form action="findpw_res.jsp" method="post">
			<table border="1">
			 <tbody>
				<tr>
					<th>이름</th>
					<td>
						<input type="text" name="member_name">
					</td>
			
				</tr>
				
				<tr>
					<th>이메일</th>
					<td>
						<input type="text" name="member_email">
					</td>
			
				</tr>
				
				<tr>
					<th>질문</th>
					<td>
					<select name="member_question">
						<option value="질문을 선택해 주세요">질문을 선택해 주세요</option>
						<option value="기억의 남는 추억의 장소는?">기억의 남는 추억의 장소는?</option>
						<option value="자신의 인생 좌우명">자신의 인생 좌우명</option>
						<option value="가장 기억에 남는 선생님 성함은?">가장 기억에 남는 선생님 성함은?</option>
						<option value="인상 깊게 읽은 책 이름은?">인상 깊게 읽은 책 이름은?</option>
					</select>
					<input type="text" name="member_answer">
					</td>
				</tr>
				
			</tbody>
			<tfoot>
				<tr>
					<td align="right" colspan="2">
						<input type="submit" value="PW찾기">
					</td>
				</tr>
			</tfoot>
			
			</table>
		</form>
	


</body>
</html>