<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
  <title>Quiz</title>
  </head> 
  <body >
<% response.setHeader("Cache-control", " no-cache, no-store,must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "-1"); %>
  <form action="AdminLogoutServlet" method="post"> 
	<input type="submit" value="Logout" name="logout"/>
	</form>
<table >
<%
String userid=(String)session.getAttribute("sessname"); 
out.print("Hello "+userid); 
%>
<p>Create your own questions</p>
<form method="post" action="AddQues">
<p>Choose the language:</p>
   <select name="lang">
     <option value="C">C</option>
     <option value="cpp">C++</option>
      <option value="java">Java</option>
      <option value="html">HTML</option>
      <option value="network">Computer Networking</option>  
   </select>
<p>Enter Question:</p>
<textarea name="ques" rows="3" cols="50" value="${ques} "></textarea>
<ul>
<p>Option 1:</p><input type="radio" name="opt" value="1">
<textarea name="opt1" rows="3" cols="50"></textarea>
<p>Option 2:</p><input type="radio" name="opt" value="2">
<textarea name="opt2" rows="3" cols="50"></textarea>
<p>Option 3:</p><input type="radio" name="opt" value="3">
<textarea name="opt3"  rows="3" cols="50"></textarea>
<p>Option 4:</p><input type="radio" name="opt" value="4">
<textarea name="opt4" rows="3" cols="50"></textarea>

</ul>
<input type="submit" value="Add" />


</form>
</table>	
    <a id="link" href="signup.jsp">sign up</a> 
</body>
</html>