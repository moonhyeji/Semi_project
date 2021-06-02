<%@page import="com.myclass.dto.MyclassDto"%>
<%@page import="com.myclass.biz.MyclassBiz"%>
<%@page import="com.lesson.dto.LessonDto"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.lesson.biz.LessonBiz"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <% request.setCharacterEncoding("UTF-8"); %>
  <% response.setContentType("texthtml; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 강의 목록</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/stylesheet.css" type="text/css"/>
<style type="text/css">
body {
    font-family: "Lato", sans-serif;
}
h3{
   color: white;
}
.page-header{
   background-color: #777;
   font-color: #white;
   padding: 10px;
}
.center{
   color: #000;
}
.board_num {
    text-align: center;
}
.container {
    padding: 0px 10px;
}
table{
   border-top: 1px solid black;
   border-bottom: 1px solid black;
   padding-top: 10px;
   padding-bottom: 10px;
   height: 350px;
   
}
td{
   border-top: 1px solid black;
   border-bottom: 1px solid black;
}

 a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: blue; text-decoration: underline;}

</style>

</head>
<body>
<header>
<jsp:include page="../header.jsp"></jsp:include>
</header>

<%
  	String member_id = request.getParameter("id");
		
  	MyclassBiz biz = new MyclassBiz();
  	List<MyclassDto> list = biz.myclassList(member_id);
  	SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
%>
   
   
      
      <br>
      <br>
      <div class="container">
         <div class="page-header">
            <div class="col-md-30">
               <div class="title-header text-center">
                  <h3>Class List</h3>
               </div>
            </div>
         </div>
      </div>
      <br>
      <br>
      <div class="content_sub_wrap_box" style="padding-top:0">
      <div class="container">
         <div class="text-center" >
            <div class="title-header text-center">
   
		 <table style="width: 100%">
		
		   <col width="6%">
		   <col width="40%">
		   <col width="20%">
		   <col width="15%">
		   <col width="15%">
		      <tr>
			      <th>강의번호</th>
			      <th>강의제목</th>
			      <th>강사이름</th>
			      <th>수강시작일</th>
			      <th>수강종료일</th>
		      </tr>
                  
   
<%
        for (MyclassDto dto : list) {
%>
                  <tr>
                     <td style="background-color:WhiteSmoke"><%=dto.getClass_no()%></td>
                     <td><a href="../lesson_board/lessonselectone.jsp?id=<%=member_id %>&class_no=<%=dto.getClass_no() %>"><%=dto.getClass_title()%></a></td>
                     <td><%= dto.getClass_writer() %></td>
                     <td style="background-color:WhiteSmoke"><%=date.format(dto.getClass_startdate())%></td>
                     <td style="background-color:WhiteSmoke"><%=date.format(dto.getClass_lastdate())%></td>
                  </tr>
   
                  <%
                  }
                  %>
                  <tr>
   
                     <td colspan="5" align="right">
                     <input type="button" class="btn btn-secondary" value="뒤로가기" onclick="location.href='mypage_stu.jsp?id=<%=member_id%>'"></td>      
                  </tr>
               </table>
            </div>
         </div>
      </div>
      </div>
      <br>
      <br>
      <br>
      

   <br>
   <br>
   <br>



<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>