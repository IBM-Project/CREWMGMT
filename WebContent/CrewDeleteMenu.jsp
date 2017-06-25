<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function delemail() 
{
    window.location="CrewDelete.jsp";
}
function deldyna() 
{
    window.location="CrewDeleteDynamic.jsp";
}
</script>
</head>
<body>
<%
if(session.getAttribute("usersession")==null && session.getAttribute("recruitsession")==null ) 
{

response.sendRedirect("Home.jsp");
}


%>
<center>
<button type="button" onclick="delemail()">Delete by email id</button>
<button type="button" onclick="deldyna()">Delete dynamically</button>
<br>
<br>
<a href="Logout.jsp">Click Here To Logout</a>
</center>
</body>
</html>