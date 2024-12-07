<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            text-align: center;
        }
        .container {
            margin: 50px auto;
            padding: 20px;
            max-width: 600px;
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .container h1 {
            color: #4CAF50;
        }
        .container p {
            font-size: 18px;
            color: #555;
        }
        .container a {
            text-decoration: none;
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border-radius: 4px;
            font-size: 16px;
            display: inline-block;
            margin-top: 20px;
        }
        .container a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Registration Successful!</h1>
        <p>Your details have been successfully submitted.</p>
        <p><strong>${message}</strong></p> <!-- Dynamic message from the controller -->
        <a href="/">Go to Home</a>
    </div>
</body>
</html>
