<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <% request.setCharacterEncoding("UTF-8"); %>
  <% response.setContentType("texthtml; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<%

  if(command.equals("idchk")){
	String member_id = request.getParameter("member_id");
	LoginDto dto = dao.idCheck(member_id);
	
	//dao.idCheck(myid) 의 myid 로 되어있는 값이 없으면, 
	boolean idnotused = true;
	//id사용한적 없는것 이 참.;
	
	
	if(dto != null){
	//중복체크할 때 건네준 값(myid)가 null 이 아니면 -> 사용한 적 있다면. 
	  idnotused = false;
	}
	
	response.sendRedirect("idcheck.jsp?idnotused="+idnotused);
	
%>
<script type="text/javascript">

onload = function(){
	var myid = opener.document.getElementsByName("member_id")[0].value;
	document.getElementsByName("member_id")[0].value = member_id;
}
function confirmId(bool){
	if(bool =="true"){
		opener.document.getElementsByName("member_id")[0].title="y";
		opener.document.getElementsByName("member_pw")[0].focus();
	}else{
		opener.document.getElementsByName("member_id")[0].focus();
	}
	self.close();
}

</script>
</head>
<body>


<%
    String idnotused = request.getParameter("idnotused");

  
  
%>

         <div>
            <input type="text" name="member_id">
         </div>
         <div>
            <%=idnotused.equals("true")?"아이디 생성 가능":"이미 생성된 아이디 입니다!!!" %>
         </div>
         <div>
           <input type="button" value="확인" onclick="confirmId('<%=idnotused %>')">
         </div>
         

         
</body>
</html>




