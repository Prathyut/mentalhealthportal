<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Appointment Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            text-align: center;
            padding-top: 50px;
        }
        .container {
            background-color: #dff0d8;
            border-radius: 8px;
            width: 50%;
            margin: auto;
            padding: 30px;
            border: 1px solid #c3e6cb;
        }
        .message {
            font-size: 24px;
            color: #3c763d;
        }
        .home-btn {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            color: white;
            background-color: #4CAF50;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            font-size: 16px;
        }
        .home-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="message">Your appointment has been successfully booked!</div>
        <a href="/patienthome" class="home-btn">Return to Home</a>
    </div>
</body>
</html>