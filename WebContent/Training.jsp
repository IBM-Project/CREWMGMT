<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.admin.user.Dao.*" %>    
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function back() 
{
    window.location="TrainerLogin.jsp";
}
</script>
</head>
<body>
<% 
if(session.getAttribute("usersession")==null && session.getAttribute("trainersession")==null) 
{

response.sendRedirect("Home.jsp");
}


%>

<center>
<h1>Crew Register</h1>
		<form method="post" action="CrewTrainingServlet" >
			<table border="0">
              <tr>
                <td>TRAINING-NAME</td>
                <td><input type="text" name="tname"  /></td>
              </tr>
              <tr>
              <td>
              TRAINER
              </td>
                <td>
                <select name="trainer">
  <option value="Mr Pankaj">Mr Pankaj</option>
  <option value="Mrs Riya">Mrs Riya</option>
  <option value="Mr Abhishek">Mr Abhishek</option>
  <option value="Mr Pulkit">Mr Pulkit</option>
</select>
                </td>
              
              </tr>
              <tr>
                <td>START DATE</td>
                <td><input type="date" name="sdate"  /></td>
              </tr>
              <tr>
                <td>END DATE</td>
                <td><input type="date" name="edate"  /></td>
              </tr>
             
              <tr>
                <td>&nbsp;</td>
                <td colspan=1><input type="submit" value="Register" />
                <button type="button" onclick="back()">BACK</button></td>
              </tr>
            </table>
			</form>
</center>
</body>
</html>