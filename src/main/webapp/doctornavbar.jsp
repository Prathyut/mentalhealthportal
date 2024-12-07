<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css"/>
<title>JFSD</title>
</head>
<h2 align="center">MENTAL HEALTH PORTAL</h2>
<div>
<a href="/">Home</a>&nbsp;&nbsp;
<a href="managepatient">Manage Patients</a>&nbsp;&nbsp;
<a href="viewreports">View Reports</a>&nbsp;&nbsp;
<a href="doctorlogout">Doctor Logout</a>&nbsp;&nbsp;

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


</div>

</body>
</html>