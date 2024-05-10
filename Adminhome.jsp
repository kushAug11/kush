<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .header {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            text-align: center;
        }
        .nav {
            padding: 20px;
            background: #ddd;
        }
        .nav a {
            padding: 10px 15px;
            margin: 0 5px;
            background: #444;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .nav a:hover {
            background: #555;
        }
        .content {
            padding: 20px;
        }
        .footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 20px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Student Management System</h1>
    </div>
    <div class="nav">
        <a href="showStudents.jsp">Show Students</a>
        <a href="searchStudent.jsp">Search Student</a>
        <a href="insertStudent.jsp">Insert Student</a>
        <a href="deleteStudent.jsp">Delete Student</a>
        <a href="updateStudent.jsp">Update Student</a>
        <a href="logout.jsp">Logout</a>
    </div>
    <div class="content">
        <!-- Content can be added here -->
    </div>
    <div class="footer">
        Developed By CSE Defaulters
    </div>
</body>
</html>
