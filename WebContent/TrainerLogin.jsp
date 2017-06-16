<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function addtraining() 
{
    window.location="Training.jsp";
}
function deletetraining() 
{
    window.location="TrainerDel.jsp";
}
function displaytraining() 
{
    window.location="TrainingShow.jsp";
}
</script>
</head>
<body>
<center>
<h1>WELCOME HR TRAINER</h1>
<button type="button" onclick="addtraining()">ADD TRAINING</button>
<button type="button" onclick="deletetraining()">DELETE TRAINING</button>
<button type="button" onclick="displaytraining()">DISPLAY TRAINING</button>
</center>

</body>
</html>