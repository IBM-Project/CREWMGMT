<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>  
<%@ page import="com.admin.user.Dao.*" %>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<%
 String sql="select * from trainer";
 IBMDAO obj=new IBMDAO();
 ResultSet rs=obj.Featchdetails(sql);
%>
<center>
<h1>TRAINER DETAILS</h1>
<form action="TrainerUpdate.jsp" method="post">
<table border="1">
  <tr>
     <th>  </th>
     <th>ID</th>
     <th>NAME</th>
     <th>EMAIL</th>
     <th>STATUS</th>
     <th>TIMIMNG</th>
     <th>PASSWORD</th>
  </tr>
  <%  while(rs.next()){ %>
    <tr>
        <td><input type="radio" name="rid" value="<%=rs.getString(3)%>" /> </td>
        <td><%=rs.getString(1) %></td>
        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(3) %></td>
        <td><%=rs.getString(4) %></td>
        <td><%=rs.getString(5) %></td>
        <td><%=rs.getString(6) %></td>
    </tr>
  <%} %>
  
 </table>
 <input type="submit" value="UPDATE" />
 </form>



<%
  if(request.getParameter("rid")!=null)
  {
	  
	  out.println(request.getParameter("rid"));
	  String sql1="select * from trainer where email=?";
	  IBMDAO obj1=new IBMDAO();
	  ResultSet rs1= obj1.Fetchdetails5(sql1, request.getParameter("rid"));
	  
	  out.print("<form method=post action=TrainerUpdateServlet>");
      out.print("<table border=1>");	  
	  while(rs1.next())
	  {
		 out.println("<tr><td>ID</td><td><input type='text' name='id' value='"+rs1.getString(1)+"' readonly=readonly/></td></tr>");
		 out.println("<tr><td>NAME</td><td><input type='text' name='name' value='"+rs1.getString(2)+"' /></td></tr>");
		 out.println("<tr><td>EMAIL</td><td><input type='text' name='email' value='"+rs1.getString(3)+"' readonly=readonly/></td></tr>");
		 out.println("<tr><td>STATUS</td><td><input type='text' name='status' value='"+rs1.getString(4)+"' /></td></tr>");
		 out.println("<tr><td>TIMINGS</td><td><input type='text' name='timings' value='"+rs1.getString(5)+"' /></td></tr>");
		 out.println("<tr><td>PASSWORD</td><td><input type='text' name='pwd' value='"+rs1.getString(6)+"' /></td></tr>");
			
		  
		  
	  }
	  out.print("</table>");
	  out.print("<input type=submit value=update />");
	  out.print("</form>");
  }
%>
</center>
</body>
</html>