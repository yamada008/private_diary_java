<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
    <head>
       <link rel="stylesheet" type="text/css" href="/static/css/mystyle.css">
    </head>
	<body>
       
        <!-- Navigation-->
        
		<div class="container my-div-style">
		<div class="row">
        	<form action="/private_diary_java/CreateServlet" method="post" enctype="multipart/form-data">
				タイトル:<input type="text" name="title"><br>
				本文:<input type="text" name="content"><br>
				写真:<input type="file" name="pict1"><br>
	 				 <input type="file" name="pict2"><br>
	 				 <input type="file" name="pict3"><br>
			<button type="submit">作成</button>
			<a class="btn btn-secondary ml-2" href="/private_diary_java/diary_list">キャンセル</a>
			</form>
    	</div>
		</div>
        
    </body>
    <jsp:include page="/WEB-INF/jsp/index.jsp"/>
</html>