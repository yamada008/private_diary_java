<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>日記作成 | Private Diary</title>
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
            	<a class="nav-link active" 
               		href="#!">Blog</a>
            </li>
            <li class="nav-item">
            	<a class="nav-link " 
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