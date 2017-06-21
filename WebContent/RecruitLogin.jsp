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
function addcrew() 
{
    window.location="CrewRegister.jsp";
}
function deletecrew() 
{
    window.location="CrewDelete.jsp";
}
function displaycrew() 
{
    window.location="RecruitShow.jsp";
}
</script>
</head>
<body>
<%
if(session.getAttribute("recruitsession")==null ) 
{

response.sendRedirect("Home.jsp");
}


%>
<center>
<h1>Welcome HR Recruit</h1>
<button type="button" onclick="addcrew()">ADD CREW MEMBER</button>
<button type="button" onclick="deletecrew()">DELETE CREW MEMBER</button>
<button type="button" onclick="displaycrew()">DISPLAY CREW MEMBER</button>
</center>
</body>
</html>