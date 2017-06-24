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
    window.location="CrewDeleteMenu.jsp";
}
function displaycrew() 
{
    window.location="CrewShow.jsp";
}
function updatecrew() 
{
    window.location="CrewUpdate.jsp";
}
function searchcrew() 
{
    window.location="CrewSearch.jsp";
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
<h1>Welcome</h1>
<h2><%=session.getAttribute("recruitsession") %></h2>
<button type="button" onclick="addcrew()">ADD CREW MEMBER</button>
<button type="button" onclick="deletecrew()">DELETE CREW MEMBER</button>
<button type="button" onclick="displaycrew()">DISPLAY CREW MEMBER</button>
<button type="button" onclick="updatecrew()">UPDATE CREW MEMBER</button>
<button type="button" onclick="searchcrew()">SEARCH CREW MEMBER</button>
<br>
<br>
<a href="Logout.jsp">Click Here To Logout</a>
</center>
</body>
</html>