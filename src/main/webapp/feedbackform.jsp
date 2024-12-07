<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Submit Feedback</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
        }
        form {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        input, textarea, button {
            width: 100%;
            margin: 10px 0;
            padding: 10px;
            font-size: 16px;
        }
        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h2 align="center">Submit Your Feedback</h2>
    <form action="submitFeedback" method="POST">
        <label for="studentName">Your Name:</label>
        <input type="text" id="studentName" name="studentName" required>
        
        <label for="course">Course:</label>
        <input type="text" id="course" name="course" required>
        
        <label for="feedbackText">Your Feedback:</label>
        <textarea id="feedbackText" name="feedbackText" rows="5" required></textarea>
        
        <button type="submit">Submit Feedback</button>
    </form>
</body>
</html>
