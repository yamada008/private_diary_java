<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>日記一覧 | Private Diary</title>
        <link rel="icon" type="image/x-icon" href="/static/assets/favicon.ico" />

        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet" />

        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/static/css/styles.css" rel="stylesheet" />

        <!-- My style -->
        <link rel="stylesheet" type="text/css" href="/static/css/mystyle.css">
        
<link href="/static/css/clean-blog.css" rel="stylesheet">

    </head>

    <body>
        <div id="wrapper">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
            <div class="container px-5">
                <a class="navbar-brand" href="/private_diary_java/">PRIVATE DIARY</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
                    data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" 
                    aria-expanded="false" aria-label="Toggle navigation"><span 
                    class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link " 
                                href="#!">INQUIRY</a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link " 
                                href="#!">Blog</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" 
                                href="/private_diary_java/diary_list">DIARY LIST</a>
                        </li>
                        
                    </ul>
                    <ul class="navbar-nav ms-auto">
                        
                            <li class="nav-item">
                                <a class="nav-link" href="/private_diary_java/user?logout=true">Log Out</a>
                            </li>
                        
                    </ul>
                </div>
            </div>
        </nav>

        

        

        
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
        <footer class="py-5 bg-black">
            <div class="container px-5"><p class="m-0 text-center text-white small">Copyright &copy; Your Website 2022</p></div>
        </footer>

        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS -->
        <script src="/static/js/scripts.js"></script>
        </div>
    </body>
</html>
