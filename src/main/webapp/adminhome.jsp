<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .welcome-container {
            text-align: center;
            margin-top: 50px;
        }
        h3 {
            color: #4CAF50;
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %> <!-- Include the navbar -->

    <div class="welcome-container">
        <!-- Display a personalized welcome message -->
        <h3>Hello, Admin</h3>
        
    </div>
</body>
</html>
