<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Login</title>
</head>
<body>
<%@ include file="mainnavbar.jsp" %>
<h3 align="center">Student Login Form</h3>
<div>
    <form method="post" action="stdlogin" onsubmit="return validateLoginForm()">
        <!-- Email Input -->
        <label>Enter Email ID</label>
        <input type="email" name="email" id="email" required maxlength="100" />
        <br/>

        <!-- Password Input -->
        <label>Enter Password</label>
        <input type="password" name="password" id="password" required maxlength="100" />
        <br/>

        <!-- Submit and Reset Buttons -->
        <input type="submit" value="Login" />
        <input type="reset" value="Reset" />
    </form>

    <script>
        function validateLoginForm() {
            var email = document.getElementById('email').value;
            var password = document.getElementById('password').value;
            // Example simple validation (you can add more as per your needs)
            if (!email || !password) {
                alert("Please fill in both email and password fields.");
                return false; // Prevent form submission
            }
            return true;
        }
    </script>
</div>
</body>
</html>
