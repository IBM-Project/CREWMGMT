<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.admin.user.Dao.*" %>    
<%@ page import="java.sql.*" %>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Home</title>
</head>

<body>
<%
if(session.getAttribute("usersession")!=null || session.getAttribute("recruitsession")!=null || session.getAttribute("trainersession")!=null || session.getAttribute("crewsession")!=null)
{
       session.removeAttribute("usersession");
       session.removeAttribute("recruitsession");
       session.removeAttribute("crewsession");
       session.removeAttribute("trainersession");
 	   
       
       session.invalidate();
	   response.sendRedirect("Home.jsp");

}

%>


<center>
<h1>Crew Management</h1>
<form method="post" action="Servlet_home">
<table border="0">
  <tbody>
    <tr>
	<td>
	Select
	</td>
      <td>
  <select name="user">
  <option value="1">Admin</option>
  <option value="2">HR Recruiter</option>
  <option value="3">HR Trainer</option>
  <option value="4">Crew</option>
</select>

</td>
    </tr>
  
    <tr>
      <td>Username</td>
      <td><input type="text" name= "username"></td>
    </tr>
    <tr>
      <td>Password</td>
      <td><input type="password" name= "password"></td>
    </tr>
    
    <tr>
	  <td>		</td>
      <td><input type="submit" value= "Login"></td>
    </tr>
  </tbody>
</table>
</form>
</center>
</body>
</html>
