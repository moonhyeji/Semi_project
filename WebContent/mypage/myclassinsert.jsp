<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.lesson.dto.LessonDto"%>
<%@page import="com.lesson.biz.LessonBiz"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <% request.setCharacterEncoding("UTF-8"); %>
  <% response.setContentType("texthtml; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<script>
window.onload = function(){
progress = document.querySelector("progress");
// upload 버튼을 클릭하면 파일을 업로드 한다.
document.querySelector("button").onclick = function(){
fileUpload();
};
};

// 파일을 업로드 한다.
function fileUpload(){
var uploadFile = document.querySelector("input");

var xhr = new XMLHttpRequest();

// 업로드 시작 -> xhr.download.onloadstart로 하면 download
xhr.upload.onloadstart = function(e){
progress.value = 0;
progress.style.display = "inline";
};

// 업로드 도중에 계속 발생 -> xhr.download.onprogress 하면 download
xhr.upload.onprogress= function(e){
// e.total : 전체 업로드 크기, e.loaded : 현재 업로드된 크기
progress.value = e.loaded/e.total;
console.log(progress.value);
};

// 업로드 종료 시 발생 -> xhr.download.onload 하면 download
xhr.upload.onload = function(e){
progress.style.display = "none";
};

xhr.onreadystatechange = function(){
if(xhr.readyState == 4 && xhr.status == 200){
document.querySelector("div").innerHTML = xhr.responseText + "<br>";
}
};
xhr.open("POST", "fileuploadres.jsp", true);
xhr.setRequestHeader("X-File-Name", encodeURIComponent(uploadFile.files[0].name));
xhr.send(uploadFile.files[0]);
}


/*-------------라디오버튼 ----------------------------*/
 
 function onevent(){
	$(".event-detail").removeAttr("disabled"); //onevent 발동시 , eventattr속성을 삭제 
}
 function notevent(){
		$(".event-detail").attr("disabled","disabled"); 
 } 
 
 //-----------------------------------------------------
</script>

</head>
<body>
<%


LessonDto dto = new LessonDto();

String class_writer = request.getParameter("class_writer");


%>

 <h1>강의 등록 페이지</h1>
 <form action="myclassinsertres.jsp" method="post">
 
<div>
내 아이디 <input type="text" readonly="readonly" name="class_writer" value="<%=class_writer%>"> 
</div>
<br>
      
<div>
<h4>강의 정보</h4>
<br>
강의 유형 선택
<select id="class_tag" name="class_tag">
   <option value="0">IT</option>
   <option value="1">Cook</option>
   <option value="2">Language</option>
   <option value="3">Stock</option>
   <option value="4">Art</option>
   <option value="5">Sports</option>
</select>

<br>강의시작일 <input type="date" id="class_startdate" name="class_startdate">
<br> 강의종료일 <input type="date" id="class_lastdate" name="class_lastdate">
<br>강의가격 &emsp; <input type="text" id="class_price" name="class_price">
<br> 강의수강생 최대인원 <input type="text" id="class_count" name="class_count">
</div>

<div>
<h4>이벤트 중인 강의 정보</h4><br>
이벤트 유무<br>
<input type="radio" class="radio-value" name="eventcheck" value="0" onclick="onevent();">이벤트 중
<input type="radio" class="radio-value" name="eventcheck" value="1" onclick="notevent();">이벤트 아님 
<!-- 이벤트 아님을 선택했을 때 아래 3개 비활성화하기  -->
<br><br>
이벤트 강의시작일 <input type="date" class="event-detail"  id="class_eventstartdate" name="class_eventstartdate" >
<br> 이벤트 강의종료일 <input type="date" class="event-detail" id="class_eventlastdate" name="class_eventlastdate" >
<br>이벤트 강의가격 &emsp; <input type="text" class="event-detail" id="class_eventprice" name="class_eventprice" >
</div>


제목<input type="text" name="class_title">
내용<input type="text" name="class_content"> 

<br><br>
<div id="summernote"><p>강의설명을 입력해 주세요</p></div>
  
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
	<h4>사진/동영상 파일 업로드</h4>
	<input type="file">
	<button>upload</button>
	<progress>0%</progress><br>
</div>


<div>
 <input type="submit" value="강의수정" > <!-- submit???  -->
 <input type="button" value="뒤로가기" onclick="location.href='mypage_tch.jsp'">
</div>	  
</form>
</body>
</html>