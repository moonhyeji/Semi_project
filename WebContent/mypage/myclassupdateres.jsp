<%@page import="com.lesson.dto.LessonDto"%>
<%@page import="com.lesson.biz.LessonBiz"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

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

int class_no = Integer.parseInt(request.getParameter("class_no"));

Date a = new SimpleDateFormat("yyyy-mm-dd").parse(request.getParameter("class_startdate"));
Date class_lastdate = new SimpleDateFormat("yyyy-mm-dd").parse(request.getParameter("class_lastdate"));

int class_price = Integer.parseInt(request.getParameter("class_price"));
int class_count = Integer.parseInt(request.getParameter("class_count"));
/* int class_eventprice = Integer.parseInt(request.getParameter("class_eventprice"));
String class_eventstartdate = request.getParameter("class_eventstartdate");
String class_eventlastdate = request.getParameter("class_eventlastdate");*/ 

 
 int eventcheck = Integer.parseInt(request.getParameter("eventcheck"));
 
Date class_eventstartdate = new SimpleDateFormat("yyyy-mm-dd").parse("0000-00-00");
Date class_eventlastdate = new SimpleDateFormat("yyyy-mm-dd").parse("0000-00-00");

int class_eventprice = 0;

if(eventcheck == 1 ){
    class_eventstartdate = new SimpleDateFormat("yyyy-mm-dd").parse(request.getParameter("class_eventstartdate"));
    class_eventlastdate = new SimpleDateFormat("yyyy-mm-dd").parse(request.getParameter("class_eventlastdate"));
    class_eventprice = Integer.parseInt(request.getParameter("class_eventprice"));
}


String class_title = request.getParameter("class_title");
String class_content = request.getParameter("class_content");


String class_writer = request.getParameter("class_writer");

    //--------------------------------------------------
    LessonDto dto = new LessonDto();

    dto.setClass_no(class_no);
    dto.setClass_startdate(a);
    dto.setClass_lastdate(class_lastdate);
    dto.setClass_price(class_price);
    dto.setClass_count(class_count);
   
     //dto??? private ????????? eventcheck ??? setter ??????.    
    dto.setClass_eventcheck(eventcheck); //evnetcheck ????????? dto??? set???. 
    dto.setClass_eventstartdate(class_eventstartdate);
    dto.setClass_eventlastdate(class_eventlastdate);
    dto.setClass_eventprice(class_eventprice);
    
    dto.setClass_writer(class_writer);
    
    dto.setClass_title(class_title);
    dto.setClass_content(class_content);
    //?????? ?????? ?????? ()_?????? ???????????? dto??? ????????????, 
    LessonBiz biz = new LessonBiz();  //????????????. 
   
    
    int res = biz.update(dto);  //????????? ??? dto??? ????????? ????????? ??????. ?????????.  
    //dto??? ??????????????? ?????????. update?????? ??? ???, 
    //int res = 1;
    
    
    if(res > 0){
    	

%>

	<script type="text/javascript">
	alert("?????? ?????? ??????! ");
	location.href="myclasslist.jsp?id=<%=dto.getClass_writer() %>";
	</script>
	
	<%
	
}else{
	%>

	<script type="text/javascript">
	   alert("?????? ?????? ??????");
	   location.href="myinsert.jsp??id=<%=dto.getClass_writer() %>";
	</script>
		
<%	
}
%>



</body>
</html>