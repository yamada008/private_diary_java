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
        <form method="POST" action="./create">
            <input type="hidden" name="csrfmiddlewaretoken" value="lXq9DR7JUIqQ3n5R10xgWdWccksmbEFqobBV93vRMZKt5Kwa3S3k3mvqXbAGKONa">
            <table class="table">
                <tr><th><label for="id_title"></label></th><td><input type="text" name="title"  <%--データベース--%>
                maxlength="40" required id="id_title"></td></tr>
                
<tr><th><label for="id_content"></label></th><td><textarea name="content" cols="40" rows="10" id="id_content"> <%--データベース--%>
</textarea></td></tr>

            </table>
            <button class="btn btn-primary" type="submit">作成</button>
        </form>
    </div>
</div>
</body>
</html>