<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
  <title>Quiz</title>
  </head>
 
  <body> 
    <a href="index.jsp">Home</a><br><br>
  
  <b>SignUp into Quiz</b>
  		<form method="POST" action="SignUp">
  		  		 
  		 <label>Name :</label>
  		 <input type="text" name="name" placeholder="Enter name" required/> <br>		 
  		 <label>Email :</label>
  		 <input type="email" name="email" placeholder="Enter email" required/><br>
  		 <label>Password :</label>
  		 <input type="Password" name="pass" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required/>
  		<br> <label>Contact No :</label>
  		 <input type="number" name="mobile" placeholder="Enter Contact no" required/>
		<br/>  		 
  		 <input type="submit" value="Submit">
  		 <input type="reset" value="Reset">
  		</form>
  </body>
</html>
