<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String title=(String)request.getAttribute("title");
	String content=(String)request.getAttribute("content");
	String filename1=(String)request.getAttribute("filename1");
	String filename2=(String)request.getAttribute("filename2");
	String filename3=(String)request.getAttribute("filename3");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fileupload</title>
</head>
<body>
<p>タイトル:<%=title %></p>
<p>本文:<%=content %></p>
<p>写真:<br><img src="upload/<%=filename1 %>">
			<img src="upload/<%=filename2 %>">
			<img src="upload/<%=filename3 %>">
</p>
</body>
</html>