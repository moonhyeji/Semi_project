<%@page import="com.cs.biz.CsBiz"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.cs.dao.CsDao" %>
<%@ page import="com.cs.dto.CsDto" %>    

<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here </title>


<!-- SmartEditor를 사용하기 위해서 다음 js파일을 추가 (경로 확인) -->
<script type="text/javascript" src="/LearnWay_CsBoard/se2/smarteditor2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script type="text/javascript">
var oEditors = [];

$(function(){
      nhn.husky.EZCreator.createInIFrame({
          oAppRef: oEditors,
          elPlaceHolder: "ir1", //textarea에서 지정한 id와 일치해야 합니다. 
          //SmartEditor2Skin.html 파일이 존재하는 경로
          sSkinURI: "/LearnWay_CsBoard/se2/smarteditor2/SmartEditor2Skin.html",  
          htParams : {
              // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
              bUseToolbar : true,             
              // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
              bUseVerticalResizer : true,     
              // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
              bUseModeChanger : true,         
              fOnBeforeUnload : function(){
                   
              }
          }, 
          
          
          fOnAppLoad : function(){
			  
        	  
        	  
              //기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
              oEditors.getById["ir1"].exec("PASTE_HTML", [text]);
          },
          fCreator: "createSEditor2"
      });
      
      //저장버튼 클릭시 form 전송
      $("#save").click(function(){
          oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
          $("#frm").submit();
      });    
});
 

</script>

</head>
<body>

<%
	int board_no = Integer.parseInt(request.getParameter("board_no"));

			
	CsBiz biz = new CsBiz();
	CsDto dto = biz.selectOne(board_no);


%>
	<h1>UPDATE</h1>

	<form id="frm" action="csupdate_res.jsp" method="post">
		<input type="hidden" name="board_no" value="<%=dto.getBoard_no()%>"/>		<!-- 글번호가 안보이게 했다. -->
		<table width="100%">
			<tr>
				<th>작성자</th>
				<td><%=dto.getBoard_id() %></td> <!-- 고정 -->
			</tr>
			<tr>
				<th>제목</th> <!-- 수정이 가능하게! -->
				<td><input type="text" name="board_title" value="<%=dto.getBoard_title()%>"></td>
			</tr>
			<tr>
				<th>내용</th> <!-- 수정이 가능하게! -->
				<textarea rows="10" cols="30" id="ir1" name="board_content" style="width:650px; height:350px; "><%=dto.getBoard_content()%></textarea>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="button" id="save" value="수정"/>
					<input type="button" value="취소" onclick="" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>