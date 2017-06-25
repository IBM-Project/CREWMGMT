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
function addtraining() 
{
    window.location="Training.jsp";
}
function deletetraining() 
{
    window.location="TrainingEnd.jsp";
}
function displaytraining() 
{
    window.location="TrainingShow.jsp";
}
</script>
</head>
<body>
<%
if(session.getAttribute("trainersession")==null) 
{

response.sendRedirect("Home.jsp");
}


%>
<center>
<h1>WELCOME HR TRAINER</h1>
<h2>Welcome  <%out.println(session.getAttribute("trainersession"));  %></h2>
<button type="button" onclick="addtraining()">ADD TRAINING</button>
<button type="button" onclick="deletetraining()">End Training</button>
<button type="button" onclick="displaytraining()">DISPLAY TRAINING</button>
</center>

</body>
</html>