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
        <form method="./delete">
            <input type="hidden" name="csrfmiddlewaretoken" value="ffzMEPQGDQ0RlZ6bRzbbLeh09GiaNwKzitKya1eOv7kunmxuTrHfSnQeUxqumGSj">
            <input type="hidden" name="id" value="XX">
            
            <p>本当に削除しますか？</p>
            <button class="btn btn-primary mt-5" type="submit">削除</button>
            <a class="btn btn-secondary mt-5 ml-2" href="/private_diary_java/Diary/diary_detail">キャンセル</a>
        </form>
    </div>
</div>
</body>
</html>