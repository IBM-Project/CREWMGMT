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
<h1>Recruit SEARCH BY EMAIL ID</h1>
<form action="RecruitSearch.jsp">
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
	String sql1="select * from recruit where email=?";
	IBMDAO obj1=new IBMDAO();
	ResultSet rs1=obj.Fetchdetails5(sql1, email);

%>


        
        <% while(rs1.next()){ %>
        <table border=1px solidblack;>
                <tr>
                <td><b>ID</b><td>
                   <td><%=rs1.getString(1) %></td>
                   </tr>
                   <tr>
                <td><b>NAME</b><td>
                   <td><%=rs1.getString(2) %></td>
                   </tr>
                   <tr>
                <td><b>EMAIL</b><td>
                   <td><%=rs1.getString(3) %></td>
                   </tr>
                   <tr>
				<tr>
                <td><b>DOB</b><td>
                   <td><%=rs1.getString(4) %></td>
                   </tr>
				                   
                <td><b>QUALIFICATION</b><td>
                   <td><%=rs1.getString(5) %></td>
                   </tr>
                   <tr>
                <td><b>CONTACT</b><td>
                   <td><%=rs1.getString(6) %></td>
                   </tr>
                   <tr>
                <td><b>PASSWORD</b><td>
                   <td><%=rs1.getString(7) %></td>
                   </tr>
                  </table>
          
         <%} }%>


</center>
</body>
</html>