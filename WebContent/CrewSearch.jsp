<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>  
<%@ page import="com.admin.user.Dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
if(session.getAttribute("usersession")==null && session.getAttribute("recruitsession")==null ) 
{

response.sendRedirect("Home.jsp");
}


%>

<%
 String sql="select * from crewd";
 IBMDAO obj=new IBMDAO();
 ResultSet rs=obj.Featchdetails(sql);
%>
<center>
<h1>CREW SEARCH BY EMAIL ID</h1>
<form action="CrewSearch.jsp">
<select name="rid">
<%  while(rs.next()){ %>
out.println("<option value='<%=rs.getString(3) %>' ><%=rs.getString(3) %></option>");
<%} %>
</select>
<input type="submit" value="SEARCH">
</form>


<%
if(request.getParameter("rid")!=null)
{
	String email=request.getParameter("rid");
	out.println("<h3>"+email+"</h3>");
	String sql1="select * from crewd where email=?";
	IBMDAO obj1=new IBMDAO();
	ResultSet rs1=obj.Fetchdetails5(sql1, email);

%>

<table border="1">
<% while(rs1.next()){ %>
              <tr>
                <td>ID</td>
                <td><input type="text" name="id" value="<%=rs1.getString(1) %>" readonly=readonly /></td>
              </tr>
              <tr>
                <td>Username</td>
                <td><input type="text" name="username" value="<%=rs1.getString(2) %>" readonly=readonly /></td>
              </tr>
              <tr>
                <td>Password</td>
                <td><input type="text" name="password" value="<%=rs1.getString(3) %>" readonly=readonly /></td>
              </tr>
              <tr>
                <td>Email</td>
                <td><input type="text" name="email" value="<%=rs1.getString(4) %>" readonly=readonly /></td>
              </tr>
              <tr>
                <td>DOB</td>
                <td><input type="text" name="dob" value="<%=rs1.getString(5) %>" readonly=readonly /></td>
              </tr>
              <tr>
                <td>Contact Number</td>
                <td><input type="text" name="contact" value="<%=rs1.getString(6) %>" readonly=readonly /></td>
              </tr>
<%} }%>
</table>
<br>
<br>
<a href="Logout.jsp">Click Here To Logout</a>
</center>
</body>
</html>