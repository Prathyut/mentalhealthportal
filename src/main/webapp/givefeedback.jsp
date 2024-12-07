<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Give Feedback</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
        }
        h2 {
            background-color: #4CAF50;
            color: white;
            padding: 15px;
            margin: 0;
            text-align: center;
            font-size: 24px;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            font-size: 16px;
            font-weight: bold;
        }
        input[type="text"], textarea {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }
        button {
            background-color: #4CAF50;
            color: white;
            font-size: 18px;
            padding: 10px 20px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<h2 align="center">Give Feedback</h2>

<div class="container">
    <form action="/submitFeedback" method="post">
        <div class="form-group">
            <label for="studentName">Your Name:</label>
            <input type="text" id="studentName" name="studentName" placeholder="Enter your name" required>
        </div>

        <div class="form-group">
            <label for="course">Course Name:</label>
            <input type="text" id="course" name="course" placeholder="Enter the course name" required>
        </div>

        <div class="form-group">
            <label for="feedbackText">Feedback:</label>
            <textarea id="feedbackText" name="feedbackText" rows="4" placeholder="Write your feedback here..." required></textarea>
        </div>

        <div class="form-group">
            <button type="submit">Submit Feedback</button>
        </div>
    </form>
</div>

</body>
</html>
