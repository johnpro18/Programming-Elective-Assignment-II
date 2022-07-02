<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=League+Gothic&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="resources/main.css">
    <title>Login Page</title>
</head>

<body>
    <nav class="navbar navbar-expand-md navbar-light bg-light p-4 shadow-sm">
        <div class="container-fluid">
            <img src="resources/images/xmum-logo.png" width = 15% class="logo">
            <button class="navbar-toggler border" type="button" data-bs-toggle="collapse" data-bs-target="#main-nav" aria-controls="main-nav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end align-center" id="main-nav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="index.jsp" class="nav-link text-uppercase text-dark font-weight-bold">xmum academic affairs system</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <header>
        <div class="overlay opacity-50">
            <video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop" class="">
                <source src="resources/video/Xiamen University Malaysia Campus.mp4" type="video/mp4">
            </video>    
        </div>

        <div class="container">
            <div class="card mx-auto w-50 p-5 shadow">
                <h1 class="text-center text-uppercase pb-3">login</h1>
                <form method="post" action="login.jsp">
                	<div class="d-grid pt-3">
                        <button type="submit" class="btn btn-outline-danger" disabled>Invalid Student ID or Password</button>
                    </div>
                    <div class="form-floating my-4">
                        <input type="text" class="form-control" id="floatingInput" placeholder="Student ID" name="Studentid">
                        <label for="floatingInput">Student ID</label>
                    </div>
                    <div class="form-floating my-4"> 
                        <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="Password">
                        <label for="floatingPassword">Password</label>
                    </div>
                    <div class="d-grid pt-3">
                        <button type="submit" class="btn btn-outline-primary">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </header>

    <footer class="page-footer bg-light w-100">
        <div class="footer-copyright text-center py-4">Copyright @ Chong Jing Yi | Ngiam Tee John | Yee Ze Hong. All Rights Reserved</div>
    </footer>
</body>
</html>