<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Quiz</title>
</head>
<body>	
  	<form action="StudentLogoutServlet" method="post"> 
  	Hello ${sessname},	<input type="submit" value="Logout" name="logout"/>
	</form>	
	<br>
 
<b>Result Summary:</b>
<%
int percent;
String aid[]= new String[5];
String qid[] = new String[5];
for(int i=0;i<5;i++)
{
  String temp = request.getParameter("opt"+(i+1));
  if(temp=="null")
  {
  	aid[i]="0";
  }
  else{
	aid[i] = temp;
  }
  qid[i]=request.getParameter("qid"+(i+1));
  
  
}

	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123blood");
		Statement stmt=con.createStatement();
		int correct=0,total=0;
		for(int i=0;i<5;++i)
		{
			PreparedStatement ps = con.prepareStatement("select * from addques where qid=?");
			ps.setString(1, qid[i]);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				out.println("</br>");
				out.println("Actual Answer: " + rs.getString("correctopt"));	
				out.println("</br>");
				out.println("User Answer: " + aid[i]);
				out.println("</br>");
	
				if(rs.getString("correctopt").equals(aid[i])){
					
					correct+=2;
					
				}
			}
		}
			
		out.println("</br>");
		out.println("You got "+correct+" marks out of 10.");
		out.println("</br>");
		if(correct>=5)
		{
			out.println("Congratulations! You have passed the test.");
		}
		else
		{
			out.println("You have failed to pass the test!");
		}
	}
	catch(Exception e)
	{
		System.out.print(e);
	}
		%>
</body>
</html>