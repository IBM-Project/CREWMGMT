<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.admin.user.Dao.*" %>    
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>HR RECRUITER</title>
<script>
function myFunction4() 
{
    window.location="Home.jsp";
}
</script>
</head>

<body>
<%
if(session.getAttribute("usersession")==null)
{

response.sendRedirect("Home.jsp");
}


%>
<center>
<h1>HR REGISTER</h1>
		<form method="post" action="CrewRecruitServlet" enctype="multipart/form-data">
			<table border="0">
              <tr>
                <td>NAME</td>
                <td><input type="text" name="username"  /></td>
              </tr>
              <tr>
                <td>PASSWORD</td>
                <td><input type="password" name="pwd"  /></td>
              </tr>
              <tr>
                <td>EMAIL</td>
                <td><input type="email" name="email"  /></td>
              </tr>
              <tr>
                <td>DOB</td>
                <td><input type="date" name="dob"  /></td>
              </tr>
			  <tr>
                <td>QUALIFICATION</td>
                <td><input type="text" name="qualification"  /></td>
              </tr>
              <tr>
                <td>CONTACT NUMBER</td>
                <td><input type="text" name="contact"  /></td>
              </tr>
               <tr>
				<td>Choose Image:</td>
				<td><input type="file" name="photo" /></td>
			</tr>
              <tr>
               
                <td><input type="submit" value="Register" /></td>
                    <td><button type="button" onclick="myFunction4()">BACK</button></td>
              </tr>
            </table>
			</form>
</center>
</body>
</html>
