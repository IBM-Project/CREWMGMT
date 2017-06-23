<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.admin.user.Dao.*" %>    
<%@ page import="java.sql.*" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>View Training</title>
</head>
<table width="200" border="1">
  <body>
  
  <form action="ViewTrain.jsp" method="POST">
  Name<input type="text" name="crew"></input>
  <input type="submit" value="search"></input>
  </form>
  
  
  <%
  if(request.getParameter("crew")!=null)
  {
  String crew=request.getParameter("crew");
  
  String sql="select * from comp_training where crew=?";
  IBMDAO obj= new IBMDAO();
  ResultSet rs=obj.Fetchdetails5(sql,crew);
  
  
  
  
  
  %>
 
  <table>
        <tr>
            
            <th>Username</th>
            <th>Training</th>
        
        </tr>
        <% while(rs.next()){ %>
                <tr>
                   <td><%=rs.getString(1) %></td>
                   <td><%=rs.getString(2) %></td>
                    </tr>
         <%} }%>
</table>
  
  
  </body>
</table>

<body>
</body>
</html>
