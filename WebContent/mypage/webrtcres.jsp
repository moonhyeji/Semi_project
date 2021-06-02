<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.webrtc.dto.WebrtcDto"%>
<%@page import="com.webrtc.biz.WebrtcBiz"%>
<%@page import="com.login.biz.LoginBiz"%>
<%@page import="com.login.dto.LoginDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("UTF-8");
response.setContentType("texthtml; charset=UTF-8");
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String class_title = request.getParameter("title");
	String webrtc_link = request.getParameter("link");
	System.out.println("타이틀 : "+class_title);
	System.out.println("링크 : "+webrtc_link);
	
	
	WebrtcBiz biz = new WebrtcBiz();
	
	
	String link = biz.selectOne(class_title);
	System.out.println("링크 : "+link);
	WebrtcDto dto = new WebrtcDto();
	if(link==null){
		dto.setClass_title(class_title);
		dto.setWebrtc_link(webrtc_link);
		
		System.out.println("dto : "+dto.getClass_title());
		System.out.println("dto : "+dto.getWebrtc_link());
		int res = biz.insert(dto);
		
		if(res > 0){
%>

		<script type="text/javascript">
			alert("화상 강의 등록성공");
			self.close();
		</script>
<%

		}else{
%>
		<script type="text/javascript">
			alert("화상 강의 등록 실패");
			self.close();
		</script>
<%
		}
		
	}else{
		Map map = new HashMap();
		map.put("item1",class_title);
		map.put("item2",webrtc_link);
		int ures = biz.update(map);
		
		if(ures > 0){
%>
		<script type="text/javascript">
			alert("화상 강의 업데이트성공");
			self.close();
		</script>

<%			
		}else{
%>
		<script type="text/javascript">
			alert("화상 강의 업데이트 실패");
			self.close();
		</script>

<%
		}
		
	}
%>
</body>
</html>