<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.admin.user.Dao.*" %>    
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Crew Register</title>
<script>
function back() 
{
    window.location="Home.jsp";
}
</script>
</head>
<body>
<%
if(session.getAttribute("usersession")==null && session.getAttribute("recruitsession")==null) 
{

response.sendRedirect("Home.jsp");
}


%>

<center>
<h1>Crew Register</h1>
		<form method="post" action="CrewRegServelet" >
			<table border="0">
              <tr>
                <td>Username</td>
                <td><input type="text" name="username"  /></td>
              </tr>
              <tr>
                <td>Password</td>
                <td><input type="password" name="pwd"  /></td>
              </tr>
              <tr>
                <td>Email</td>
                <td><input type="email" name="email"  /></td>
              </tr>
              <tr>
                <td>DOB</td>
                <td><input type="date" name="dob"  /></td>
              </tr>
              <tr>
                <td>Contact Number</td>
                <td><input type="text" name="contact"  /></td>
              </tr>
              <tr>
				<td>Choose Image:</td>
				<td><input type="file" name="photo" /></td>
			</tr>
              <tr>
                <td>&nbsp;</td>
                <td><input type="submit" value="Register" /></td>
                <td><button type="button" onclick="back()">BACK</button></td>
              </tr>
            </table>
			</form>
<br>
<br>
<a href="Logout.jsp">Click Here To Logout</a>
</center>
</body>
</html>