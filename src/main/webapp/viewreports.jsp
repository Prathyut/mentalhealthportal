<!-- viewreports.jsp -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Test Reports</title>
</head>
<body>
    <h2>All Test Reports</h2>
    
    <table border="1">
        <thead>
            <tr>
                <th>Report ID</th>
                <th>Student Name</th>
                <th>Test Name</th>
                <th>Test Date</th>
                <th>Score</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="report" items="${reports}">
                <tr>
                    <td>${report.id}</td>
                    <td>${report.student.name}</td>
                    <td>${report.testName}</td>
                    <td>${report.testDate}</td>
                    <td>${report.score}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
