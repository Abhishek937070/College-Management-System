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
<h1>All Enquiry</h1>


<table>
	<tr>
		<th>EID</th>
		<th>Name</th>
		<th>Gender</th>
		<th>Email</th>
		<th>Massage</th>
		<th>Date</th>
		<th>Remark</th>
		<th>Set</th>
	</tr>
<c:forEach var="enq" items="${enq_list}">
 	<tr>
 		<td>${enq.eid}</td>
 		<td>${enq.getStudent().getName() }</td>
 		<td>${enq.getStudent().getGender()}</td>
 		<td>${enq.getStudent().getEmail()}</td>
 		<td>${enq.message}</td>
 		<td>${enq.edate}</td>
 		<td>${enq.remark}</td>
 		<td><a href="/SetRemark?eid=${enq.eid}">Set Remark</a></td>
 	</tr>
 </c:forEach>


</table>

</body>
</html>