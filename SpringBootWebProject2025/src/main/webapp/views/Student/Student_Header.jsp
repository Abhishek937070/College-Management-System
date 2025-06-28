<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

       
        .navbar {
            background-color: #333;
            overflow: hidden;
            padding: 15px;
        }

        .navbar a {
            float: left;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 18px;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }

        .content {
            text-align: center;
            padding: 50px;
        }

        .content h1 {
            font-size: 3em;
        }

        .button-container {
            margin-top: 40px;
        }

        .button-container a {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        .button-container a:hover {
            background-color: #0056b3;
        }

    </style>


</head>
<body>
   <div class="navbar">
        <a href="/getStudentHomePage?sid=${std.sid }">Student Home</a>
            <a href="/MyProfile?sid=${std.sid}">My Profile</a>
            <a href="EnquiryForm?sid=${std.sid}">Enquiry</a>
            <a href="MyAllEnquiry?sid=${std.sid}">My Enquiries</a>
            <a href="/Home">Logout</a>
    </div>

</body>
</html>