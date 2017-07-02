<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.admin.user.Dao.*" %>    
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.Date" %>


<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crew Management - Login</title>
    <!-- Core CSS - Include with every page -->
    <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
   <link href="assets/css/style.css" rel="stylesheet" />
      <link href="assets/css/main-style.css" rel="stylesheet" />

</head>

<body class="body-Login-back">

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


    <div class="container">
       
        <div class="row">
            <div class="col-md-4 col-md-offset-4 text-center logo-margin ">
              <img src="assets/img/logo.png" alt=""/>
                </div>
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">                  
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In To Continue</h3>
                    </div>
                    <div class="panel-body">
                        <form method="post" action="Servlet_home">
                            <fieldset>
                                <div class="form-group">
                                      <select name="user" class="form-control">
										  <option value="1" class="form-control">Admin</option>
										  <option value="2" class="form-control">HR Recruiter</option>
										  <option value="3" class="form-control">HR Trainer</option>
										  <option value="4" class="form-control">Crew</option>
									   </select>

                                </div>                                
								<div class="form-group">
                                    <input class="form-control" placeholder="E-mail" name= "username" type="email" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="password" type="password" value="">
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                    </label>
                                </div>
                                <input type="submit" class="btn btn-lg btn-success btn-block" value="Login">
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

     <!-- Core Scripts - Include with every page -->
    <script src="assets/plugins/jquery-1.10.2.js"></script>
    <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>

</body>

</html>
