<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
    <head>
        
<link href="/static/css/clean-blog.css" rel="stylesheet">

    </head>

    <body>
       

        

<div>      
<div class="container px-4 px-lg-5 my-div-style">
    <div class="row gx-4 gx-lg-5 justify-content-center">
        <div class="col-md-10 col-lg-8 col-xl-7">
            <div class="d-flex justify-content-end mb-4">
                <a class="btn btn-primary float-right" href="/private_diary_java/diary_create">新規作成</a>
            </div>
            
            <div class="post-preview">
                <a href="/private_diary_java/diary_7/">
                    <h2 class="post-title">
                        日記3
                    </h2>
                    <h3 class="post-subtitle">
                        日記３の本文
                    </h3>
                </a>
                <p class="post-meta">2022年9月19日20:51</p>
            </div>
            <hr class="my-4">
            
            <div class="post-preview">
                <a href="#!">
                    <h2 class="post-title">
                        日記２
                    </h2>
                    <h3 class="post-subtitle">
                        日記２の本文
                    </h3>
                </a>
                <p class="post-meta">2022年9月16日2:22</p>
            </div>
            <hr class="my-4">
            

            <!-- ページネーション処理 -->
            
            <ul class="pagination">
                <!-- 前ページへのリンク -->
                

                <!-- ページ数表示 -->
                
                    
                    <li class="page-item active">
                        <a class="page-link" href="#">1</a>
                    </li>
                    
                
                    
                    <li class="page-item">
                        <a class="page-link" href="?page=2">2</a>
                    </li>
                    
                

                <!-- 次ページへのリンク -->
                
                <li class="page-item">
                    <a class="page-link" href="?page=2">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
                
            </ul>
            
        </div>
    </div>
</div>


        <!-- Footer-->
        
        </div>
        
    </body>
    <jsp:include page="/WEB-INF/jsp/index.jsp"/>
</html>