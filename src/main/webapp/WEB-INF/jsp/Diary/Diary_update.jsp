<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	    
<div class="container my-div-style">
    <div class="row">
        <form method="POST" enctype='multipart/form-data'>
            <input type="hidden" name="csrfmiddlewaretoken" value="gdKDywXeMURpcSPHexkvny1wzSERF3wcjrVp4IlmEbb2efg0gpQzuHAKkJMbedEW">
            <table class="table">
                <tr><th><label for="id_title">タイトル:</label></th><td><input type="text" name="title" <%-- データベース --%>
                value="Sample３" maxlength="40" required id="id_title"></td></tr>
                
<tr><th><label for="id_content">本文:</label></th><td><textarea name="content" cols="40" rows="10" id="id_content"><%-- データベース --%>
AWS</textarea></td></tr>
<tr><th><label for="id_photo1">写真01:</label></th><td><input type="file" name="photo1" accept="image/*" id="id_photo1"></td></tr> <%-- データベース --%>
<tr><th><label for="id_photo2">写真02:</label></th><td><input type="file" name="photo2" accept="image/*" id="id_photo2"></td></tr> <%-- データベース --%>
<tr><th><label for="id_photo3">写真03:</label></th><td><input type="file" name="photo3" accept="image/*" id="id_photo3"></td></tr> <%-- データベース --%>
            </table>
            <button class="btn btn-primary" type="submit">更新</button>
            <a class="btn btn-secondary ml-2" href="/diary-detail/9/">キャンセル</a>
        </form>
    </div>
</div>

</body>
</html>