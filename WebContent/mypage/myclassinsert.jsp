<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <% request.setCharacterEncoding("UTF-8"); %>
  <% response.setContentType("texthtml; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<script type="text/javascript" src="/LearnWay/myclasspage/se2/smarteditor2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>



</head>
<body>

<div>
내 아이디 <input type="text"> 
</div>
<br>

<div>
<h4>강의 정보</h4>
강의유형 <input type="text" id="class_tag" name="class_tag">
강의시작일 <input type="text" id="class_startdate">
<br> 강의종료일 <input type="text" id="class_lastdate">
<br>강의가격 &emsp; <input type="text" id="class_price">
<br> 강의수강생 최대인원 <input type="text" id="class_count">
</div>

<div>
<h4>이벤트 중인 강의 정보</h4>
이벤트 유무<input type="radio" name="">이벤트 진행중 
<input type="radio" name="">이벤트 안함 
<br><br>
이벤트 강의시작일 <input type="text" id="class_eventstartdate">
<br> 이벤트 강의종료일 <input type="text" id="class_eventlastdate">
<br>이벤트 강의가격 &emsp; <input type="text" id="class_eventprice">
</div>



<br><br>
<div id="summernote"><p>Hello Summernote</p></div>
  
  <script>
    $(document).ready(function() {
        $('#summernote').summernote();
       
    });
  </script>
  <script>
  $('#summernote').summernote({
  width:600,
  height: 300,                 // set editor height
  minHeight: null,             // set minimum height of editor
  maxHeight: null,             // set maximum height of editor
  focus: true                  // set focus to editable area after initializing summernote
});
  </script>



<br><br>
<div>
 <input type="button" value="강의등록" onclick=""> <!-- submit???  -->
 <input type="button" value="뒤로가기" onclick="location.href='mypage_tch.jsp'">
</div>	     



</body>
</html>