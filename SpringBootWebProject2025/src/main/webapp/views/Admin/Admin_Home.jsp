<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>

<style>
    body {
        margin: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #74ebd5, #9face6);
        color: #333;
    }

    .content {
        text-align: center;
        margin-top: 100px;
    }

    h1 {
        font-size: 36px;
        color: #2c3e50;
        margin-bottom: 50px;
    }

    .button-container {
        display: flex;
        justify-content: center;
        gap: 30px;
    }

    .button-container a {
        text-decoration: none;
        background-color: #2980b9;
        color: white;
        padding: 15px 30px;
        border-radius: 10px;
        font-size: 18px;
        transition: background-color 0.3s ease, transform 0.2s;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    .button-container a:hover {
        background-color: #1abc9c;
        transform: scale(1.05);
    }
</style>
</head>
<body>

<%@ include file="Admin_Header.jsp" %>

<div class="content">
    <h1>Welcome to Admin Home</h1>

    <div class="button-container">
        <a href="/viewAllStudentsPage">Student List</a>
         <a href="/ViewAllEnquiry">View Eneuiry</a>
    </div>
</div>

</body>
</html>
