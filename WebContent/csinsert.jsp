<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/LearnWay_CsBoard/se2/smarteditor2/js/HuskyEZCreator.js" charset="utf-8"></script>
</head>
<body>
<body>

   <h1> 고객센터 </h1>
   
   <form action="csinsert_res.jsp" method="post">
      <table border="1">
         <tr>
            <th>작성자</th>
            <td><input type="text" name="board_id" /></td>
         </tr>
         <tr>
            <th>제목</th>
            <td><input type="text" name="board_title"/></td>
         </tr>
         <tr>
            <th>내용</th>
         <td><textarea name="board_content" id="weditor" rows="10" cols="100" ></textarea></td>
         </tr>
         <tr>
            <td colspan="2" align="right">
            <input type="submit" value="작성"/>
            <input type="button" value="취소" onclick="" />
            </td>
         </tr>
      </table>
   </form>
   
   
<script type="text/javascript">
      var oEditors = [];
      
      nhn.husky.EZCreator.createInIFrame({
          oAppRef: oEditors,
          elPlaceHolder: "weditor",
          sSkinURI: "/LearnWay_CsBoard/se2/smarteditor2/SmartEditor2Skin.html",
          htParams : {
             bUseToolbar : true,  
             bUseVerticalResizer : true,
             bUseModeChanger : true,         
                fOnBeforeUnload : function(){
                     
                }
          },
          fCreator: "createSEditor2"
      });
      
      </script>
</body>
</html>