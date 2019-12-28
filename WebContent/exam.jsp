<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<title>Quiz</title>

</head>
<body  >	
  	<form action="StudentLogoutServlet" method="post"> 
  	Hello ${sessname},	<input type="submit" value="Logout" name="logout"/>
	</form>	    
	<br/><br/>
<b>Choose a subject:</b>
<form action="CppExamServ.jsp" method="post">
<button>C++</button>
</form>
<form action="JavaExamServ.jsp" method="post">
<button>Java</button>
</form>
<form action="NetworkExam.jsp" method="post">
<button>Computer Networking</button>
</form>

	
</body>
</html>