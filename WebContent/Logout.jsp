<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
</body>
</html>