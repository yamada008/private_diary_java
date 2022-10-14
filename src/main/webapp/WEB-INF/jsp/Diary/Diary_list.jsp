<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="{% static 'css/clean-blog.css' %}" rel="stylesheet">
<div class="container px-4 px-lg-5 my-div-style">
    <div class="row gx-4 gx-lg-5 justify-content-center">
        <div class="col-md-10 col-lg-8 col-xl-7">
            <div class="d-flex justify-content-end mb-4">
                <a class="btn btn-primary float-right" href="/private_diary_java/create/">新規作成</a>
            </div>
            
            <div class="post-preview">
                <a href="/diary-detail/7/">
                    <h2 class="post-title"> <%--データベース呼び出し --%>
                       
                    </h2>
                    <h3 class="post-subtitle"><%--データベース呼び出し --%>
                       
                    </h3>
                </a>
                <p class="post-meta"></p>　<%-- 現在の日付 --%>
            </div>
            <hr class="my-4">
            

            <!-- ページネーション処理 -->
            
            <ul class="pagination">
                <!-- 前ページへのリンク -->
                
                <li class="page-item">
                    <a class="page-link" href="?page=1">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                
 
                 <!-- ページ数表示 -->
                
                
                <li class="page-item"><a class="page-link" href="?page=1">1</a></li>
                
                
                
                <li class="page-item active"><a class="page-link" href="#">2</a></li>
                
                
 
                 <!-- 次ページへのリンク -->
                
            </ul>
            
        </div>
    </div>
    <jsp:include page="/WEB-INF/jsp/index.jsp"/>
</div>
</html>