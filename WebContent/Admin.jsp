<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.admin.user.Dao.*" %>    
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<script>
function myFunction1() 
{
    window.location="recruit.jsp";
	
}

function myFunction2() 
{
    window.location="trainer.jsp";
	
}

//name changed
function myFunction3() 
{
    window.location="CrewRegister.jsp";
	
}

function myFunction4() 
{
    window.location="RecruitDel.jsp";
	
}

function myFunction5() 
{
    window.location="TrainerMenu.jsp";
	
}

function myFunction6() 
{
    window.location="CrewDeleteDynamic.jsp";
	
}

function myFunction7() 
{
    window.location="RecruitShow.jsp";
	
}

function myFunction8() 
{
    window.location="TrainerShow.jsp";
	
}

function myFunction9() 
{
    window.location="CrewShow.jsp";
	
}
function myFunction10() 
{
    window.location="RecruitUpdate.jsp";
	
}
function myFunction11() 
{
    window.location="TrainerUpdate.jsp";
	
}
function myFunction12() 
{
    window.location="CrewUpdate.jsp";
	
}
function myFunction13() 
{
    window.location="RecruitSearch.jsp";
	
}
function myFunction14() 
{
    window.location="TrainerSearch.jsp";
	
}
function myFunction15() 
{
    window.location="CrewSearch.jsp";
	
}



</script>
</head>

<body>
<%
if(session.getAttribute("usersession")==null)
{

response.sendRedirect("Home.jsp");
}


%>
<Center>
<h1>ADMIN MENU</h1>
<table>
<tr>
<td><button style="height:30px;width:200px" type="button" onclick="myFunction1()">ADD HR RECRUITER</button></td>
<td><button style="height:30px;width:200px" type="button" onclick="myFunction2()">ADD HR TRAINEE</button></td>
<td><button style="height:30px;width:200px" type="button" onclick="myFunction3()">ADD CREW MEMBER</button></td>
</tr>

<tr>
<td><button style="height:30px;width:200px" type="button" onclick="myFunction4()">DELETE HR RECRUITER</button></td>
<td><button style="height:30px;width:200px" type="button" onclick="myFunction5()">DELETE HR TRAINEE</button></td>
<td><button style="height:30px;width:200px" type="button" onclick="myFunction6()">DELETE CREW MEMBER</button></td>
</tr>

<tr>
<td><button style="height:30px;width:200px" type="button" onclick="myFunction7()">SHOW HR RECRUITER</button></td>
<td><button style="height:30px;width:200px" type="button" onclick="myFunction8()">SHOW HR TRAINEE</button></td>
<td><button style="height:30px;width:200px" type="button" onclick="myFunction9()">SHOW CREW MEMBER</button></td>
</tr>

<tr>
<td><button style="height:30px;width:200px" type="button" onclick="myFunction10()">UPDATE HR RECRUITER</button></td>
<td><button style="height:30px;width:200px" type="button" onclick="myFunction11()">UPDATE HR TRAINEE</button></td>
<td><button style="height:30px;width:200px" type="button" onclick="myFunction12()">UPDATE CREW MEMBER</button></td>
</tr>

<tr>
<td><button style="height:30px;width:200px" type="button" onclick="myFunction13()">SEARCH HR RECRUITER</button></td>
<td><button style="height:30px;width:200px" type="button" onclick="myFunction14()">SEARCH HR TRAINEE</button></td>
<td><button style="height:30px;width:200px" type="button" onclick="myFunction15()">SEARCH CREW MEMBER</button></td>
</tr>

</table>
<CENTER>
<pre>

<a href="Home.jsp">CLICK HERE TO GO BACK</a>
</pre>
</CENTER>


</Center>
</body>
</html>