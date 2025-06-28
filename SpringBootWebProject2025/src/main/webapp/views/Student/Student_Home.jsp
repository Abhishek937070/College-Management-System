<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

</style>
<%@ include file="Student_Header.jsp" %>


 <div class="content">
        <h1>Welcome : ${std.name}</h1>

        <div class="button-container">
            <a href="/MyProfile?sid=${std.sid}">My Profilee</a>
             <a href="EnquiryForm?sid=${std.sid}">Enquiry</a>
        </div>
    </div>



</body>



</html>