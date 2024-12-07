<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Feedback</title>
    <style>
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f4f4f9;
        }
    </style>
</head>
<body>
    <h2>All Feedback</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Student Name</th>
                <th>Course</th>
                <th>Feedback</th>
                <th>Submitted At</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="feedback" items="${feedbacks}">
                <tr>
                    <td>${feedback.id}</td>
                    <td>${feedback.studentName}</td>
                    <td>${feedback.course}</td>
                    <td>${feedback.feedbackText}</td>
                    <td>${feedback.submittedAt}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
