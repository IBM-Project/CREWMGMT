<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>  
<%@ page import="com.admin.user.Dao.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HR TRAINER DELETION</title>
</head>
<center>
<body>
<%
if(session.getAttribute("usersession")==null) 
{

response.sendRedirect("Home.jsp");
}
%>
<%
String sql="Select * from trainer";
IBMDAO obj=new IBMDAO();
ResultSet rs=obj.Featchdetails(sql);
%>
<h1>USER DETAILS</h1>
<form action="TrainerDelDynamicServlet" method="post">
<table border="1">
  <tr>
     <th>  </th>
     <th>ID</th>
     <th>NAME</th>
     <th>EMAIL</th>
     <th>STATUS</th>
     <th>TIMINGS</th>
     <th>PASSWORD</th>
  </tr>
  <% int j=0; while(rs.next()){ %>
    <tr>
        <td><input type="checkbox" name="rid" value="<%=rs.getString(1)%>" /> </td>
        <td><%=++j  %></td>
        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(3) %></td>
        <td><%=rs.getString(4) %></td>
        <td><%=rs.getString(5) %></td>
        <td><%=rs.getString(6) %></td>
    </tr>
  <%} %>
  
 </table>
 <input type="submit" value="Delete" />
 </form>
<br>
<br>
<a href="Logout.jsp">Click Here To Logout</a>

</center>

</body>
</html>