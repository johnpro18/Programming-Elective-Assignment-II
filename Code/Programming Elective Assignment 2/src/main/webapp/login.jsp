<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, com.jdbc.LoginDao, com.jdbc.Login"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<% 	
		String StudentId = request.getParameter("Studentid");
		String StudentPass = request.getParameter("Password");
		session.setAttribute("StudentID", StudentId);
		session.setAttribute("StudentPassword", StudentPass);
		
		boolean status = LoginDao.verify(StudentId, StudentPass);
		if(status == true)
		{
			response.sendRedirect("studentinfo.jsp");
		}
		else
		{
			response.sendRedirect("indexerror.jsp");
		}
	%>
</body>
</html>