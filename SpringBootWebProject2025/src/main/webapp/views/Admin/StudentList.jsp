<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.MyWebProject.Entities.*" %>
    <%@ page import="java.util.*" %>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="Admin_Header.jsp" %>
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
		<th>Status</th>
		<th>EDIT</th>
	</tr>
<c:forEach var="stud" items="${stud_list}">
 	<tr>
 		<td>${stud.sid}</td>
 		<td>${stud.name}</td>
 		<td>${stud.email}</td>
 		<td>${stud.gender}</td>
 		<td>${stud.course}</td>
 		<td>${stud.password}</td>
 		<td>${stud.status}</td>
 		<td><a href="studentEdit?sid=${stud.sid}">Modify</a></td>
 	</tr>
 </c:forEach>


</table>

</body>
</html>