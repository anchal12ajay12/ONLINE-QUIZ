<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
   %>
<!doctype html>
<html lang="en">
  <head>
  <title>Quiz</title>   
  </head>
 
  <body> 
    <a href="index.jsp">Home</a><br><br>
  		<form method="POST" action="./AdminLoginServlet" >
  		<b class="login">Admin Login</b><br>
 	  		 
  		 	<input type="text" name="userid" placeholder="Enter Your Email" required />
	 <br>		 	
	 <input type="Password" name="pass" id="myinput" placeholder="Enter Password" required />     
  		 <br>
		 
  		 <input type="submit" value="Login" />  		 
  		</form>

  </body>
</html>
