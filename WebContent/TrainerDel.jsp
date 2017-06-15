<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>HR Trainer Deletion</h1>
		<form method="post" action="TrainerDelServlet" >
			<table border="0">
              <tr>
                <td>E-Mail</td>
                <td><input type="text" name="email"  /></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><input type="submit" value="Delete" /></td>
              </tr>
            </table>
			</form>
</center>
</body>
</html>