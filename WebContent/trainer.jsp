<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>HR TRAINER</title>
</head><body>
<center>
<h1>HR TRAINER</h1>
		<form method="post" action="CrewTrainerServlet" >
			<table border="0">
              <tr>
                <td>NAME</td>
                <td><input type="text" name="username"  /></td>
              </tr>
              <tr>
                <td>PASSWORD</td>
                <td><input type="password" name="pwd"  /></td>
              </tr>
              <tr>
                <td>EMAIL</td>
                <td><input type="email" name="email"  /></td>
              </tr>
              <tr>
                <td>STATUS</td>
                <td><input type="text" name="status"  /></td>
              </tr>
			  <tr>
                <td>TIMINGS</td>
                <td><input type="text" name="timings"  /></td>
              </tr>
              
              <tr>
                <td>&nbsp;</td>
                <td><input type="submit" value="Register" /></td>
              </tr>
            </table>
			</form>
</center>


</body>
</html>
