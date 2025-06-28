<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.MyWebProject.Entities.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>

 body {
        margin: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #74ebd5, #9face6);
        color: #333;
    }

table, th, td {
  border: 1px solid;
}

</style>
<h1>Student List</h1>


<table>
	<tr>
		<th>SID</th>
		<th>NAME</th>
		<th>EMAIL</th>
		<th>GENDER</th>
		<th>COURSE</th>
		<th>PASSWORD</th>
	</tr>
<%
		List<Student> stud_list = (List<Student>) request.getAttribute("stud_list");
		for(Student stud : stud_list)
		{
			%>
			<tr>
			<td><%= stud.getSid()%></td>
			<td><%= stud.getName()%></td>
			<td><%= stud.getEmail()%></td>
			<td><%= stud.getGender()%></td>
			<td><%= stud.getCourse()%></td>
			<td><%= stud.getPassword()%></td>
			
			</tr>
			
			<%
		}


%>




</table>

</body>
</html>