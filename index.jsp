<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h2>Admin Login</h2>
    <form action="loginProcess.jsp" method="post">
        User Name: <input type="text" name="username"><br>
        Password: <input type="password" name="password"><br>
        <input type="submit" value="Login"><br>
    </form>

    <h3>Student Login</h3>
    <form action="studentLoginProcess.jsp" method="post">
        Roll Number: <input type="text" name="rollNumber"><br>
        Name: <input type="text" name="name"><br>
        <input type="submit" value="Login">
    </form>
</body>
</html>
