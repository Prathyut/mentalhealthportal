<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="navstyle.css"/>
<title>Healthy Heads - Mental Health Portal</title>
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
<body>
    <header>
        <h1 class="title">Healthy Heads - Mental Health Portal</h1>
    </header>
    
    <nav class="navbar">
        <a href="/" class="nav-link">Home</a>
        <a href="viewdoctors" class="nav-link">View Doctors</a>
        <a href="viewstudents" class="nav-link">View Students</a>
        <a href="adminlogout" class="nav-link logout">Logout</a>
    </nav>

    <section class="intro">
        <h2>Welcome to the Healthy Heads Portal</h2>
        <p>Your well-being is our top priority. This platform connects you to resources, support, and a community that cares about mental health. Browse through our sections to find helpful information or talk to a professional today.</p>
        <img src="image1.jpg" alt="Mental Health Support" class="intro-image">
    </section>
</body>
</html>
