<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.admin.user.Dao.*" %>    
<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>HR TRAININGS</h1>
<%
	String sql="select * from training";
	IBMDAO obj=new IBMDAO();
	ResultSet rs=obj.Featchdetails(sql);

%>

<table border=1px solid black;>
        <tr><th>Sno.</th>
            <th>TRAINING NAME</th>
            <th>TRAINER</th>
            <th>START DATE</th>
            <th>END DATE</th>
            
        
        </tr>
        <% while(rs.next()){ %>
                <tr>
                   <td><%=rs.getString(1) %></td>
                   <td><%=rs.getString(2) %></td>
                   <td><%=rs.getString(3) %></td>
                   <td><%=rs.getString(4) %></td>
                   <td><%=rs.getString(5) %></td>
                   
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