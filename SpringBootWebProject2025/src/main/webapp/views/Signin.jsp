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
        
         .errorMessage{
			text-align: center;
			font-weight: bold;
			margin-bottom: 20px;
			color: red;
			margin-bottom: 15px;
			margin-top: 15px;
		}
        
 
        h2 {
            text-align: center;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        input[type="text"], input[type="password"], select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

       

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<%@ include file="Header.jsp" %>


<div  class="content1">
    <h2>Login</h2>

    <form action="/checkSignIn"  method="get">
    
    
     <label for="type">Type:</label>
        <br>
        <div style="width: 100%">
        <select style="width: 100% ; height: 40px" id="type" name="type" required>
             <option value="">Select</option>
            <option value="Admin">Admin</option>
             <option value="Student">Student</option>
        </select> <br><br>
        </div>
    
    

        <label for="email">Email:</label>
        <input type="text" id="email" name="email" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>

        <input type="submit" value="Login">
        
        <br>
         <div class="errorMessage"> ${errorMsg} </div>
       
    </form>
 </div>   


<%@ include file="Footer.jsp" %>
</body>
</html>