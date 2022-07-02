<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, com.jdbc.LoginDao, com.jdbc.Login"%>
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
    <title>Student Information</title>
</head>

<body>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <nav class="navbar navbar-expand-md navbar-light bg-transparent p-4 shadow-sm">
        <div class="container-fluid">
            <img src="resources/images/xmum-logo.png" width = 15% class="logo">
            <button class="navbar-toggler border" type="button" data-bs-toggle="collapse" data-bs-target="#main-nav" aria-controls="main-nav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end align-center" id="main-nav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="studentinfo.jsp" class="nav-link text-uppercase text-dark">student information</a>
                    </li>
                    <li class="nav-item">
                        <a href="courselist.jsp" class="nav-link text-uppercase text-dark">course list</a>            
                    </li>
                    <li class="nav-item">
                        <a href="examresult.jsp" class="nav-link text-uppercase text-dark">examinations result</a>
                    </li>
                    <li class="nav-item">
                        <a href="logout.jsp" class="nav-link text-uppercase text-dark">logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    
    <div class="container-fluid w-100 py-5" style="background-image: linear-gradient(rgba(255, 255, 255, 1), rgba(255, 255, 255,0.5)), url(/resources/images/front-background.jpg); background-position: center; background-repeat: no-repeat; background-size: cover;">
        <div class="card mx-auto w-75 p-5 shadow">
            <h1 class="text-center text-uppercase pb-5">student information</h1>
            <img src="resources/images/avatar icon.jpg" alt="" class="w-25 mx-auto mb-5 border rounded shadow-sm">
            <table class="table table-hover table-striped">
               	<% 
               		String studentid = session.getAttribute("StudentID").toString();
               		List<Login>list = LoginDao.getStudentInfo(studentid); 
               		request.setAttribute("list",list);
               	%>
                <c:forEach items="${list}" var="l">
                <tr>
                    <th>Student ID</th>
                    <td>${l.getStudentId()}</td>
                </tr>
                <tr>
                    <th>Student Name</th>
                    <td>${l.getStudentName()}</td>
                </tr>
                <tr>
                    <th>Gender</th>
                    <td>${l.getStudentGender()}</td>
                </tr>
                <tr>
                    <th>NRIC / Passport Number</th>
                    <td>${l.getStudentIdentification()}</td>
                </tr>
                <tr>
                    <th>Programme</th>
                    <td>${l.getStudentProgramme()}</td>
                </tr>
                <tr>
                    <th>Intake</th>
                    <td>${l.getStudentIntake()}</td>
                </tr>
                <tr>
                    <th>Nationality</th>
                    <td>${l.getStudentNationality()}</td>
                </tr>
                <tr>
                    <th>Phone Number</th>
                    <td>${l.getStudentPhoneNumber()}</td>
                </tr>                
                </c:forEach>
            </table>
        </div>
    </div>
   
    
    <footer class="page-footer bg-light w-100">
        <div class="footer-copyright text-center py-4">Copyright @ Chong Jing Yi | Ngiam Tee John | Yee Ze Hong. All Rights Reserved</div>
    </footer>
</body>

</html>