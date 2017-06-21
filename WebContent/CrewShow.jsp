<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.admin.user.Dao.*" %>    
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Crew</title>
</head>
<body>
<%
if(session.getAttribute("usersession")==null && session.getAttribute("recruitsession")==null ) 
{

response.sendRedirect("Home.jsp");
}


%>
<center>
<h1>CREW MEMBERS</h1>
<%
	String sql="select * from crewd";
	IBMDAO obj=new IBMDAO();
	ResultSet rs=obj.Featchdetails(sql);

%>

<table>
        <tr>
            <th>ID</th>
            <th>USERNAME</th>
            <th>EMAIL</th>
            <th>DOB</th>
            <th>PASSWORD</th>
            <th>CONTACT</th>
        
        </tr>
        <% while(rs.next()){ %>
                <tr>
                   <td><%=rs.getString(1) %></td>
                   <td><%=rs.getString(2) %></td>
                   <td><%=rs.getString(3) %></td>
                   <td><%=rs.getString(4) %></td>
                   <td><%=rs.getString(5) %></td>
                   <td><%=rs.getString(6) %></td>
                   
                 </tr>
         <%}%>
</table>
<CENTER>
<pre>

<a href="Admin.jsp">CLICK HERE TO GO BACK</a>
</pre>
</CENTER>

</center>
</body>
</html>