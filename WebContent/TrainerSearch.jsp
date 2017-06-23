<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>  
<%@ page import="com.admin.user.Dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>search</title>
</head>
<body>
<%
 String sql="select * from trainer";
 IBMDAO obj=new IBMDAO();
 ResultSet rs=obj.Featchdetails(sql);
%>
<center>
<h1>TRAINER SEARCH BY EMAIL ID</h1>
<form action="TrainerSearch.jsp">
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
	String sql1="select * from trainer where email=?";
	IBMDAO obj1=new IBMDAO();
	ResultSet rs1=obj.Fetchdetails5(sql1, email);

%>

<table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>EMAIL</th>
            <th>STATUS</th>
            <th>TIMINGS</th>
            <th>PASSWORD</th>
        
        </tr>
        <% while(rs1.next()){ %>
                <tr>
                   <td><%=rs1.getString(1) %></td>
                   <td><%=rs1.getString(2) %></td>
                   <td><%=rs1.getString(3) %></td>
                   <td><%=rs1.getString(4) %></td>
                   <td><%=rs1.getString(5) %></td>
                   <td><%=rs1.getString(6) %></td>
                 </tr>
         <%} }%>
</table>


</center>

</body>
</html>