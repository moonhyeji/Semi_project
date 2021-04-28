<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*" %>
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
// 2번째 param에 명시된 서버만 서비스가 됨. 아래 코드는 모두 허용.
response.setHeader("Access-Control-Allow-Origin", "*");
response.setHeader("Access-Control-Allow-Headers", "X-File-Name");

if(!"OPTIONS".equals(request.getMethod().toUpperCase())){
String fileName = request.getHeader("X-File-Name");
fileName = java.net.URLDecoder.decode(fileName, "UTF-8");
System.out.println(fileName);
String ext = fileName.substring(fileName.lastIndexOf("."));
String uploadFileName = fileName.substring(0, fileName.lastIndexOf(".")) + "_" + System.currentTimeMillis() + ext;
File uploadDir = new File(application.getRealPath("fileupload"));
System.out.println(uploadDir);
if(!uploadDir.exists()){
uploadDir.mkdir();
}
File uploadFile = new File(uploadDir, uploadFileName);

InputStream in = request.getInputStream();
OutputStream outFile = new FileOutputStream(uploadFile);
byte[] buf = new byte[1024*2];
int size = 0;
while((size=in.read(buf)) != -1){
outFile.write(buf, 0, size);
}
outFile.close();
in.close();

String fileUrl = application.getContextPath() + "/fileupload/" + uploadFileName;
out.write("<a href='"+fileUrl+"'>"+fileName+"</a>");
}
%>
</body>
</html>