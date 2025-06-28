<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us</title>
    <style>
        html, body {
            height: 100%;
            margin: 0;
            display: flex;
            flex-direction: column;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #74ebd5, #9face6);
            color: #333;
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
            flex: 1;
        }

        .content h1 {
            font-size: 3em;
        }

        .content p {
            max-width: 900px;
            margin: 20px auto;
            font-size: 18px;
            line-height: 1.7;
            text-align: justify;
        }

        .content ul {
            max-width: 800px;
            margin: 0 auto;
            text-align: left;
            font-size: 18px;
        }

       

        .footer {
            background-color: #222;
            color: #fff;
            text-align: center;
            padding: 15px 0;
        }
        

    </style>
</head>
<body>
 <%@ include file="Header.jsp" %>


    <div class="content">
        <div class="marquee-heading">About Us</div>
			
        <p>
            Welcome to the College Enquiry Management System – an integrated platform that helps streamline the interaction between students and administrators. Our mission is to simplify the student experience and provide transparency in academic communications.
        </p>

        <p><strong>Key Features:</strong></p>
        <ul>
            <li>Student registration & login portal Of Laksh IT Solution</li>
            <li>Enquiry submission & feedback tracking</li>
            <li>Admin control panel to manage student records</li>
            <li>Fast and user-friendly interface</li>
        </ul>

        <p>
            This system is developed using Java, Spring Boot, JSP, and MySQL, and follows MVC architecture. The UI is crafted for responsiveness and ease of use.
        </p>

        <p><strong>Developer Info:</strong><br>
        Name: Abhishek Subhash Vidhate<br>
        Intelligence: Full Stack Developer<br>
        Internship: Full Stack Developer at LitsBros Pvt. Ltd., Amravati</p>
    </div>

    <div class="footer">
        &copy; 2025 College Enquiry Management System. All rights reserved.
    </div>

</body>
</html>