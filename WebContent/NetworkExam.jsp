<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<title>Quiz</title>
</head>
<body>
<p> Time Remaining: <span id="countdowntimer">150 </span> Seconds</p>

  	<form action="StudentLogoutServlet" method="post"> 
  	Hello ${sessname},	<input type="submit" value="Logout" name="logout"/>
	</form>	    
	<br/><br/>
<b>Answer all the following questions: </b>
<% 
try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123blood");

			PreparedStatement ps = con.prepareStatement("select * from ( select * from addques where lang='network' order by dbms_random.value ) where rownum <= 5 ");

			int count=0;
			ResultSet rs = ps.executeQuery(); %>
			<form action="result.jsp" method="post">
			<% 
			while(rs.next()){
				%>
				<% ++count; %>
				<%=rs.getString("ques").replace("\n","<br/>") %><br>
				<input type="text" hidden value="<%=rs.getString("qid") %>" name="qid<%=count %>" />
		<ul>
		<li><input type="radio" name="opt<%=count %>" value="1"> A. <%=rs.getString("opt1") %></li>
		<li><input type="radio" name="opt<%=count %>" value="2"> B. <%=rs.getString("opt2") %></li>
	    <li><input type="radio" name="opt<%=count %>" value="3"> C. <%=rs.getString("opt3") %></li>
		<li><input type="radio" name="opt<%=count %>" value="4"> D. <%=rs.getString("opt4") %></li>
				
		</ul><br/>
	<%
		}
		}
		catch (Exception e) {
		e.printStackTrace();
		}
	%>
						<input type="submit" value="Submit" onclick="confirm()" />
				</form>							
	<script src="jsfunc.js"></script>
	<script type="text/javascript">
    var timeleft = 150;
    var downloadTimer = setInterval(function() 
    {
	    timeleft--;
	    document.getElementById("countdowntimer").textContent = timeleft;
	    if(timeleft <=30)
	    	document.getElementById("countdowntimer").style.color="red";
	    if(timeleft <= 0)
	    {
	        clearInterval(downloadTimer);
	        //submit action here
	        alert('Time over!');
	        location.href = 'result.jsp';
	    }
    },1000);
    
    function confirm()
    {
    alert('Exam submitted successfully!');
    }
</script>
</body>
</html>