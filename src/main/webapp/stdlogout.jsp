<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logout</title>
</head>
<body>
<%@ include file="stdnavbar.jsp" %> <!-- Include the navbar -->

<h3 align="center">Logging Out...</h3>

<%
    // Invalidate the session to log the student out
    session.invalidate();
    response.sendRedirect("/"); // Redirect to the home page after logging out
%>

</body>
</html>
