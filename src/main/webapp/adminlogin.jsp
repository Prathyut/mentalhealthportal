<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- Import JSTL -->

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
</head>
<body>
<%@ include file="mainnavbar.jsp" %> <!-- Include your navigation bar -->

<h3 align="center">Admin Login</h3>

<div align="center">
    <form method="post" action="checkadminlogin">
        <!-- Doctor Username -->
        <label for="username">Username:</label>
        <input type="text" name="username" id="username" required maxlength="50" />
        <br/><br/>

        <!-- Doctor Password -->
        <label for="password">Password:</label>
        <input type="password" name="password" id="password" required maxlength="50" />
        <br/><br/>

        <!-- Submit Button -->
        <input type="submit" value="Login" />
    </form>

    <br/>
    <!-- Error message -->
    <c:if test="${not empty errorMessage}">
        <div style="color: red;">
            <p>${errorMessage}</p>
        </div>
    </c:if>
</div>

</body>
</html>
