<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.admin.user.Dao.*" %>    
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
if(session.getAttribute("usersession")==null)
{

response.sendRedirect("Home.jsp");
}


%>
<%
 String sql="select * from recruit";
 IBMDAO obj=new IBMDAO();
 ResultSet rs=obj.Featchdetails(sql);
%>
<center>
<h1>USER DETAILS</h1>
<form action="RecruitDelServelet" method="post">
<table border="1">
  <tr>
     <th>  </th>
     <th>ID</th>
     <th>USERNAME</th>
     <th>EMAIL</th>
     <th>DOB</th>
     <th>Qualification</th>
     <th>CONTACT</th>
     <th>PASSWORD</th>
     </tr>
  <% int j=0; while(rs.next()){ %>
    <tr>
        <td><input type="checkbox" name="rid" value="<%=rs.getString(1)%>" /> </td>
        <td><%=++j %></td>
        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(3) %></td>
        <td><%=rs.getString(4) %></td>
        <td><%=rs.getString(5) %></td>
        <td><%=rs.getString(6) %></td>
        <td><%=rs.getString(7) %></td>
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