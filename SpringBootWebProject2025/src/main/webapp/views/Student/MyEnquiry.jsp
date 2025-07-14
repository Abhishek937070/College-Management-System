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
<%@ include file="Student_Header.jsp" %>
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

<script type="text/javascript">

function confirmDelete()
{
return confirm ("Do you want to delete enquiry....?")
}
</script>

<h1>Student List</h1>


<table>
	<tr>
		<th>EID</th>
		<th>SID</th>
		<th>Name</th>
		<th>Massage</th>
		<th>Date</th>
		<th>Remark</th>
		
		<th>Edit</th>
		<th>Delete</th>
	</tr>
<c:forEach var="enq" items="${enq_list}">
 	<tr>
 		<td>${enq.eid}</td>
 		<td>${enq.getStudent (). getSid()}</td>
 		<td>${enq.getStudent (). getName()}</td>
 		<td>${enq.message}</td>
 		<td>${enq.edate}</td>
 		<td>${enq.remark}</td>
 		
 		
 		<td><a href="#">Modify</a></td>
 		<td><a href="/deleteEnquiry?eid=${enq.eid }&sid=${enq.getStudent().getSid()}" onclick="return confirmDelete()">Delete</a></td>
 	</tr>
 </c:forEach>

</table>
<%@ include file="Student_Header.jsp" %>
</body>
</html>