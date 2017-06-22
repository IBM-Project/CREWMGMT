<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SELECT YOUR CHOICE</title>
<script>
function delByemail() 
{
    window.location="TrainerDel.jsp";
}
function delBydyna() 
{
    window.location="TrainerDelDynamic.jsp";
}
</script>
</head>
<body>
<%
if(session.getAttribute("usersession")==null ) 
{

response.sendRedirect("Home.jsp");
}


%>
<center>
<button type="button" onclick="delByemail()">Delete by email id</button>
<button type="button" onclick="delBydyna()">Delete dynamically</button>
<br>
<br>
<a href="Logout.jsp">Click Here To Logout</a>
</center>

</body>
</html>