<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.admin.user.Dao.*" %>    
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.Date" %>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Home</title>
</head>

<body>
<%
if(session.getAttribute("usersession")!=null || session.getAttribute("recruitsession")!=null || session.getAttribute("trainersession")!=null || session.getAttribute("crewsession")!=null)
{
       session.removeAttribute("usersession");
       session.removeAttribute("recruitsession");
       session.removeAttribute("crewsession");
       session.removeAttribute("trainersession");
 	   
       
       session.invalidate();
	   response.sendRedirect("Home.jsp");

}

%>

    
<% 
try{
DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
Date date = new Date();
System.out.println(dateFormat.format(date)); 
String currdate = (String) dateFormat.format(date);

SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
Date currdate1 = format.parse(currdate);
System.out.println(currdate1);

String sql = "select * from training";
IBMDAO obj=new IBMDAO();
ResultSet rs = obj.Featchdetails(sql);
while(rs.next())
{
    Date tabledate = format2.parse(rs.getString(5));
    if (currdate1.compareTo(tabledate) >= 0) {
    	String sql2 = "select * from crewd where Training=?";
        String training = rs.getString(2);
    	ResultSet rs2 = obj.Fetchdetails2(sql2,training);
        while(rs2.next()){
        	String sql3="insert into comp_training(crew,training)values(?,?)";
    		String crew =rs2.getString(3);
    		String Training=rs.getString(2);
    		String msg1=obj.UpdateTraining(sql3, crew, Training);
    	}
        
        String sql4="update crewd set Training=?,Flag=? where Training=?";
		String msg2=obj.UpdateCrew1(sql4,null,"0",training);
		
		String sql5="delete from training where training_name=?";
		String msg3=obj.deleteTraining(sql5,training);
		
        System.out.println("Training over "+training);
	}

}
}catch(Exception e)
{
	e.printStackTrace();
}
%>



<center>
<h1>Crew Management</h1>
<form method="post" action="Servlet_home">
<table border="0">
  <tbody>
    <tr>
	<td>
	Select
	</td>
      <td>
  <select name="user">
  <option value="1">Admin</option>
  <option value="2">HR Recruiter</option>
  <option value="3">HR Trainer</option>
  <option value="4">Crew</option>
</select>

</td>
    </tr>
  
    <tr>
      <td >Username</td>
      <td><input type="text" name= "username"></td>
    </tr>
    <tr>
      <td>Password</td>
      <td><input type="password" name= "password"></td>
    </tr>
    
    <tr>
	  <td>		</td>
      <td><input type="submit" value= "Login"></td>
    </tr>
    
  </tbody>
</table>
</form>
</center>
</body>
</html>
