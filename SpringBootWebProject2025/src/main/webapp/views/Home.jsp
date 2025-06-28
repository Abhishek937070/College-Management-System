<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Laksh IT Solution</title>

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

    .footer {
        background-color: #222;
        color: #fff;
        text-align: center;
        padding: 15px 0;
    }

    /* ✅ Marquee Style */
    marquee {
        scrollamount: 20; /* Increased speed */
    }

    .marquee-heading {
        font-size: 40px;
        font-weight: bold;
        color: #fff;
        background: linear-gradient(to right, #4facfe, #00f2fe);
        padding: 15px;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0,0,0,0.3);
        display: inline-block;
        width: auto;
        margin: 20px 0;
    }
</style>

</head>
<body>

    <%@ include file="Header.jsp" %>

    <div class="content">
        <marquee scrollamount="12" onmouseover="this.stop();" onmouseout="this.start();">
  				  <div><h3>Notice: Registration Started (You Can Login After Your Request Accept)</h3></div>
		</marquee>
        
        <br>
      
            <div class="marquee-heading">Welcome to Laksh It Solution</div>
   
        
        
        <p>Below are the process for Register and Login.</p>

        <div class="button-container">
            <a href="/Signup">Register</a>
            <a href="/Signin">Login</a>
        </div>
    </div>

    <div class="footer">
        <%@ include file="Footer.jsp" %>
    </div>

</body>
</html>
