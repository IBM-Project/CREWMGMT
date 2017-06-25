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

</script>
</head>
<%
if(session.getAttribute("crewsession")==null)
{

response.sendRedirect("Home.jsp");
}


%>

<body>
<h1>Successfully Logged In To Crew Page</h1>
<h2>Welcome  <%out.println(session.getAttribute("crewsession"));  %></h2>

<%
String sql="Select * from training";
IBMDAO obj=new IBMDAO();
ResultSet rs=obj.Featchdetails(sql);
%>
<h1>USER DETAILS</h1>
<form action="AddTrainingServlet" method="post">
<table border="1">
  <tr>
     <th>  </th>
     <th>ID</th>
     <th>Training</th>
     <th>Trainer</th>
     <th>Sdate</th>
     <th>edate</th>
     
  </tr>
  
  <% int j=0; while(rs.next()){ %>
    <tr>
       <td><input type="radio" name="rid" value="<%=rs.getString(2)%>" /> </td>
        <td><%=++j  %></td>
        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(3) %></td>
        <td><%=rs.getString(4) %></td>
        <td><%=rs.getString(5) %></td>
       
    </tr>
  <%} %>
  
 </table> 
 <input type="submit" value="ADD" />
 </form>
</body>
</html>