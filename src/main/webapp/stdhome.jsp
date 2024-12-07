<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Home</title>
</head>
<body>
<%@ include file="stdnavbar.jsp" %> <!-- Include the navbar -->

<h3 align="center">Welcome to the Student Dashboard</h3>

<div align="center">
    <!-- Display student's name -->
    <p>Hello, <strong>${student.name}</strong>! Welcome to your home page.</p>
</div>

</body>
</html>
