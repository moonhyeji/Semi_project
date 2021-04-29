<%@page import="org.apache.ibatis.javassist.bytecode.annotation.IntegerMemberValue"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
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
<style type="text/css">

body {
    font-family: "Lato", sans-serif;
}
h1{
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
.h4{
	font-color: #white;
}
.container {
    padding: 0px 10px;
}

</style>

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


/*-------------라디오버튼 onevent 일 경우 버튼 자동클릭되도록 가져오기. ----------------------------*/
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

/* 
LessonBiz biz = new LessonBiz();
String class_writer = request.getParameter("class_writer");
 */





int class_tag = Integer.parseInt(request.getParameter("class_tag"));
Date class_startdate = new SimpleDateFormat("yyyy-mm-dd").parse(request.getParameter("class_startdate"));
Date class_lastdate = new SimpleDateFormat("yyyy-mm-dd").parse(request.getParameter("class_lastdate"));
int class_price = Integer.parseInt(request.getParameter("class_price"));
int class_count = Integer.parseInt(request.getParameter("class_count"));

int class_eventcheck = Integer.parseInt(request.getParameter("class_eventcheck"));
Date class_eventstartdate = new SimpleDateFormat("yyyy-mm-dd").parse(request.getParameter("class_eventstartdate"));
Date class_eventlastdate = new SimpleDateFormat("yyyy-mm-dd").parse(request.getParameter("class_eventlastdate"));
int class_eve



%>


   <div class="container">
      <div class="page-header">
         <div class="col-md-30">
            <div class="title-header text-center">
               <h1 style=" color:white; ">강의 상세 페이지</h1>
            </div>
         </div>
      </div>
   </div>
   


	   <br>



 <form action="myclassinsertres.jsp" method="post" name="forfunction">
 
	<div>
	<input type="hidden" name="class_writer" value="<%=class_writer%>"> 
	</div>
<br>
      
<div>
<div class="center">
	   <div class="container">
	      <div class="row col-md-12 m-2">
	         <div class="form-inline col-md=12 justify-content-center" name="forcss">
	            <div class="form-group" style="margin-left:200px;">
	            	<div class="panel panel-default">
               			 <div class="panel-heading">
							<h4>강의 정보</h4>
							<br> 강의 유형 선택 <select id="class_tag" name="class_tag">
							   <option value="0">IT</option>
							   <option value="1">Cook</option>
							   <option value="2">Language</option>
							   <option value="3">Stock</option>
							   <option value="4">Art</option>
							   <option value="5">Sports</option>
							</select>
							<br>
							<br>강의시작일 <input type="date" id="class_startdate" name="class_startdate">
							<br>
							<br> 강의종료일 <input type="date" id="class_lastdate" name="class_lastdate">
							<br>
							<br>강의가격 &emsp; <input type="text" id="class_price" name="class_price"  placeholder="ex) 59,000원">
							<br>
							<br> 강의수강생 최대인원 <select id="class_count" name="class_count">
							                      <option value="0">1</option>
								                  <option value="1">2</option>
								                  <option value="2">3</option>
								                  <option value="3">4</option>
								                  <option value="4">5</option>
								                  <option value="5">6</option>
								                  <option value="6">7</option>
								                  <option value="7">8</option>
								                  <option value="8">9</option>
								                  <option value="9">10</option>
								                  <option value="10">11</option>
								                  <option value="11">12</option>
								                  <option value="12">13</option>
								                  <option value="14">14</option>
								                  <option value="15">15</option>
                                                </select>
              </div>
	          </div>
	          </div>
	          
	          

           <div class="form-group" style="margin-left:200px; margin-bottom:20px;" >
	          	<div class="panel panel-default">
              		<div class="panel-heading">
					<h4>이벤트 중인 강의 정보</h4>
					<br>
					이벤트 유무<br>
					<input type="radio" class="radio-value" name="eventcheck" value="1" onclick="onevent();">이벤트 중
					<input type="radio" class="radio-value" name="eventcheck" value="0" onclick="notevent();">이벤트 아님 
					<!-- 이벤트 아님을 선택했을 때 아래 3개 비활성화하기  -->
					<br>
					<br>이벤트 강의시작일 <input type="date" class="event-detail"  id="class_eventstartdate" name="class_eventstartdate" >
					<br>
					<br> 이벤트 강의종료일 <input type="date" class="event-detail" id="class_eventlastdate" name="class_eventlastdate" >
					<br>
					<br>이벤트 강의가격 &emsp; <input type="text" class="event-detail" id="class_eventprice" name="class_eventprice" placeholder="ex) 39,000원">
					<br>
					<br>
					
					</div>
					  </div>
					    </div>
					    
              </div>
            </div>
          </div>
        </div>
      </div>
       <br>
    <br>					    
<div class="panel panel-default">
    <div class="panel-heading">
     <div class="text-center" style="width:1200px; margin-left:70px;" >
		강의제목&emsp;&emsp;<input type="text" style="width: 500px" name="class_title" placeholder="강의제목을 입력해주세요."> 
	</div> 
	  </div>
	    </div>
	
	
		<!--섬머노트 --> 
		<br>
		<br>
		
  <div class="container">
  <div class="text-center" style="width:1000px; margin-left:70px;" >
		<textarea class="summernote" name="class_content" id="summernote">강의설명을 입력해 주세요</textarea>
		</div>
		  
		  
		  <script>
		    $(document).ready(function() {
		        $('#summernote').summernote();
		       
		    });
		  </script>
		  
		  <br>
		  <script>
      $('#summernote').summernote({
         width : 100%,
         height : 1000px, // set editor height
         minHeight : null, // set minimum height of editor
         maxHeight : null, // set maximum height of editor
         focus : true
         text-align:center;

      // set focus to editable area after initializing summernote
      });
      
      $('textarea[name="class_content"]').html($('.summernote').code());
   </script>
   </div>
		
		
		
		<br><br>	
			
<div class="form-group" style="margin-left:550px; margin-right:600px; margin-bottom:100px;" >
	          	<div class="panel panel-default">
              		<div class="panel-heading">		
              			<h4>사진/동영상 파일 업로드</h4><br>
					    <input class="title-header text-center" type="file"><br>
						<span><button>upload</button>&emsp;<progress>0%</progress></span>
					<br>
		</div>
	</div>
</div>
		<div>
		   <div class="title-header text-center">
			 <input type="submit" value="강의 수정하기" onclick="location.href='myclassupdate.jsp?id=<%=class_writer%>'">&emsp;&emsp; <!-- submit???  -->
			 <input type="button" value="뒤로가기" onclick="location.href='mypagelist.jsp?id=<%=class_writer%>'">
			</div>
		</div>	  
    <br>
    <br>
    <br>
    <br>
</form>
</body>
</html>