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
        
        .successMessage{
			text-align: center;
			font-weight: bold;
			margin-bottom: 20px;
			color: green;
			margin-bottom: 15px;
			margin-top: 15px;
		}

        .navbar a:hover {
            background-color: #ddd;
            color: black;
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
        
        

        input[type="text"], input[type="email"], input[type="password"] , input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

		 label {
            font-weight: bold;
        }
	
        .gender {
            margin: 10px 0;
        }
         .course {
            margin: 10px 0;
        }

        input[type="radio"] {
            margin-right: 10px;
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

 <%@ include file="Student_Header.jsp" %>
 
 <p>
${message}
</p>

    <h2><b>Enquiry</b></h2>

    <form action="/saveEnquiryData" method="post">
        <label for="sid">SID:</label>
        <input type="text" readonly="readonly" style="width: 30%" id="sid" name="sid"  value="${std.sid }"  required>
        
        <br>

        <label for="message">Message:</label>
        <textarea type="text" style="width: 100% ; height: 150px" id="message" name="message"  required></textarea>
        
        <label for="edate"> Date :</label>
        <input type="date" style="width: 50% ; height: 30px" id="edate" name="edate"  required>
		<br>
		<br>
        <label for="remark">Remark :</label>
        <br>
        <input type="text" value="Not Set" readonly="readonly" id="remark" name="remark"  required>
        
        
        <input type="submit" value="Send">
        <div class="sucessMassage">${msg}</div>
    </form>
    <br>
     
    
    <%@ include file="Student_Header.jsp" %>
</body>

</html>