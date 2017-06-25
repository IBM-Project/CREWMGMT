<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.admin.user.Dao.*" %>    
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Crew</title>
<script>
function addtrain() 
{
    window.location="Addtraining.jsp";
}

function viewtrain() 
{
    window.location="ViewTrain.jsp";
}
</script>
</head>
<%
if(session.getAttribute("crewsession")==null)
{

response.sendRedirect("Home.jsp");
}
%>



<% 
try{
String sql="select * from comp_training where crew=? order by id DESC";
IBMDAO obj=new IBMDAO();
String crew1=(String)session.getAttribute("crewsession");
ResultSet rs = obj.Fetchdetails5(sql,crew1);
rs.next();
String test=rs.getString(3);

out.println(session.getAttribute("crewsession")+" your "+test+ " training has been completed");

}
catch(Exception e)
{
	e.printStackTrace();
}
%>


<body>
<h1>Successfully Logged In To Crew Page</h1>
<h2>Welcome  <%out.println(session.getAttribute("crewsession"));  %></h2>
<button type="button" onclick="addtrain()">Enroll For Training</button>
<button type="button" onclick="viewtrain()">View Done Training</button>
<h1>Welcome</h1>
</body>
</html>