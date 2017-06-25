<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.admin.user.Dao.*" %>    
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Crew Delete</title>
</head>
<body>
<%
if(session.getAttribute("usersession")==null && session.getAttribute("recruitsession")==null ) 
{

response.sendRedirect("Home.jsp");
}


%>


<center>
<h1>Crew Deletion</h1>
		<form method="post" action="CrewDelServlet" >
			<table border="0">
              <tr>
                <td>E-Mail</td>
                <td><input type="text" name="email"  /></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><input type="submit" value="Delete" /></td>
              </tr>
            </table>
			</form>
<br>
<br>
<a href="Logout.jsp">Click Here To Logout</a>
</center>
</body>
</html>