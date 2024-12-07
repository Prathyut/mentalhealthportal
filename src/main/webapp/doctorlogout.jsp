<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor Logout</title>
</head>
<body>
    <h3 align="center">You have successfully logged out!</h3>
    <p align="center">Redirecting to login page...</p>

    <script type="text/javascript">
        // Redirecting to doctor login page after 3 seconds
        setTimeout(function() {
            window.location.href = 'doctorlogin'; // Change to your login page URL
        }, 3000);
    </script>
</body>
</html>
