<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Test Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .container {
            max-width: 600px;
            margin: auto;
            text-align: center;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            background-color: #f9f9f9;
        }
        .success-message {
            color: green;
            font-size: 18px;
            margin-bottom: 20px;
        }
        table {
            margin: 0 auto;
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Test Result</h2>
        <p class="success-message">${message}</p>
        <table>
            <tr>
                <th>Test Name</th>
                <td>${report.testName}</td>
            </tr>
            <tr>
                <th>Test Date</th>
                <td>${report.testDate}</td>
            </tr>
            <tr>
                <th>Score</th>
                <td>${report.score}</td>
            </tr>
        </table>
        <br>
        <a href="/test">Take Another Test</a>
    </div>
</body>
</html>
