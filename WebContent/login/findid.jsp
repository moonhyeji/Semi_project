<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 찾기</title>
</head>
<body>
		<h1>ID 찾기</h1>
		
		<form action="findid_res.jsp" method="post">
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
			</tbody>
			<tfoot>
				<tr>
					<td align="center" colspan="2">
						<input type="submit" value="찾기">
					</td>
				</tr>
			</tfoot>
			
			</table>
		</form>
	


</body>
</html>
