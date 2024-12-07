<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login - Failed</title>
    <link rel="stylesheet" href="styles.css"> <!-- If you have any CSS files -->
</head>
<body>
    <div class="login-container">
        <h2>Admin Login</h2>

        <!-- Displaying failure message -->
        <div class="alert alert-danger" style="color: red; font-weight: bold;">
            <c:if test="${not empty message}">
                ${message}
            </c:if>
        </div>

        <!-- Login Form -->
        <form action="checkadminlogin" method="POST">
            <label for="auname">Username:</label>
            <input type="text" id="auname" name="auname" placeholder="Enter Username" required>

            <label for="apwd">Password:</label>
            <input type="password" id="apwd" name="apwd" placeholder="Enter Password" required>

            <button type="submit">Login</button>
        </form>

        <!-- Optionally provide a link to try again or to reset password -->
        <p><a href="adminlogin">Try Again</a></p>
    </div>
</body>
</html>
