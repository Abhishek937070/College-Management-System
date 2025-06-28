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

    <h2><b>My Profile</b></h2>

    <form action="/myProfileEditSucess?sid=${std.sid}" method="post">
        <label for="name">Full Name:</label>
        
        <input type="text" id="name" name="name" value="${std.name }" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${std.email}" required>

          <label for="gender">Gender:</label>
   
   
        <div class="gender">
            <input type="radio" id="male" name="gender" value="Male" ${std.gender == "Male" ? 'checked' :''} required>
            <label for="male">Male</label>

            <input type="radio" id="female" name="gender" value="Female" ${std.gender == "Female" ? 'checked' :''}>
            <label for="female">Female</label>
        </div>
        <br>

        
        <label for="course">Course:</label>
        <br>
        <div style="width: 100%">
        <select style="width: 100% ; height: 30px" id="course" name="course" required>
            <option value="">Select</option>
            <option value="BTech" ${std.course=="BTech"? "Selected":'' } >BTech</option>
            <option value="BE"  ${std.course=="BE"?  "Selected":'' }>BE</option>
            <option value="MCA" ${std.course=="MCA"? "Selected":'' }>MCA</option>
            <option value="BCA" ${std.course=="BCA"? "Selected":'' }>BCA</option>
            <option value="MBA" ${std.course=="MBA"? "Selected":'' }>MBA</option>
        </select> <br><br>
        </div>
        
           <label for="password">Password:</label>
        <input type="password" id="password" name="password" value="${std.password}" required>
        
         <label for="Status">Status:</label>
        <br>
        <div style="width: 100%">
        <select style="width: 100% ; height: 30px" id="status" name="status" required>
        <option value="Accept"${std.status=="Accepte"?'Selected':'' }>Accept</option>
        </select> <br><br>
        </div>
         
        
        
        
        <input type="submit" value="Modify">
        <div class="sucessMassage">${msg}</div>
    </form>
    <br>
     
    
    
</body>

</html>