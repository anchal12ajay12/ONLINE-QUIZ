<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
  <title>Quiz</title>
 </head>
 
  <body> 
  <ul>
    <li><a href="index.jsp">Home</a></li>
    <li><a href="#abt1">About Us</a></li>
    <li><a href="#"> Subjects</a>
        <a href="C.jsp">C</a>
        <a href="Cpp.jsp">C++</a>
        <a href="Java.jsp">Java</a>
        <a href="Html.jsp">HTML</a>
        <a href="Network.jsp">Computer Networking</a>
            </li>
    
  </ul>
    <ul>
      <li><a href="signup.jsp"> Sign Up</a></li>
      <li><a href="#">Login As</a>
       <a href="AdminLogin.jsp">Admin</a>
        <a href="StudentLogin.jsp">Student</a>        
    </li>
    </ul>  	
  		<form method="POST" action="./StudentLoginServlet">
  		<b>Login to take exam</b><br>  		  		 
  		 	<input type="email" name="email" placeholder="Enter Your Email" required /> <br>	 
  		 	
  		 	<input type="Password" name="pass" placeholder="Enter Password" required />
  		 
  		 <br>  		 
  		 <input type="submit" value="Login" />
  		</form>
<a id="link" href="signup.jsp">sign up</a>
  </body>
</html>
