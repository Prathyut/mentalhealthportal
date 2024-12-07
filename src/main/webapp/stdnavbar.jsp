<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css"/>
<title>JFSD</title>
<style>
    /* General Page Styles */
    body {
        font-family: 'Arial', sans-serif;
        margin: 0;
        padding: 0;
        background-color: #fdf6e3; /* Pastel cream background */
        color: #374151; /* Dark gray-blue for text */
    }

    h2 {
        background-color: #a7c7e7; /* Pastel blue for header */
        color: #ffffff;
        padding: 15px;
        margin: 0;
        text-align: center;
        font-size: 26px;
        text-transform: uppercase;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    /* Navigation Bar Styles */
    div {
        text-align: center;
        background-color: #fefaf6; /* Light pastel cream for contrast */
        padding: 15px 0;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    a {
        text-decoration: none;
        color: white;
        background-color: #f7a8a8; /* Pastel pink for buttons */
        padding: 12px 25px;
        margin: 5px;
        border-radius: 5px;
        font-size: 16px;
        font-weight: bold;
        display: inline-block;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

    a:hover {
        background-color: #f4bfbf; /* Softer pink for hover */
        transform: scale(1.05);
    }

    /* Responsive Design for Mobile Devices */
    @media (max-width: 768px) {
        a {
            display: block;
            margin: 10px auto;
            padding: 10px 20px;
        }

        h2 {
            font-size: 22px;
        }
    }
</style>
</head>
<h2 align="center">MENTAL HEALTH PORTAL</h2>
<div>
<a href="/stdhome">Home</a>&nbsp;&nbsp;
<a href="impofmentalhealth">Importance of mental health</a>&nbsp;&nbsp;
<a href="test">Student Test</a>&nbsp;&nbsp;
<!-- 
<a href="bookappointment">Book Appointment</a>&nbsp;&nbsp;
<a href="givefeedback">FeedBack form</a>&nbsp; -->
<a href="stdlogout">Logout</a>&nbsp;&nbsp;



</div>

</body>
</html>