<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home - Healthy Heads</title>
    <link rel="stylesheet" type="text/css" href="style.css"/> <!-- Link to your CSS file -->
</head>
<body>
    <%@ include file="mainnavbar.jsp" %> <!-- Include navigation bar -->

    <section class="intro">
        <h2>Welcome to the Healthy Heads Portal</h2>
        <p>We care about your mental well-being. This platform is designed to provide support, resources, and tools for students dealing with mental health challenges like depression, stress, and overthinking.</p>
    </section>

    <section class="mental-health-topics">
        <div class="topic">
            <h3>Depression</h3>
            <p>Depression is more than just feeling sad. It can affect how you think, feel, and function in daily life. If you're feeling overwhelmed, reaching out for support can help you feel better.</p>
        </div>

        <div class="topic">
            <h3>Stress</h3>
            <p>Stress is a natural reaction to challenges in life, but when it becomes chronic, it can take a toll on both your mental and physical health. Managing stress is crucial for your well-being.</p>
        </div>

        <div class="topic">
            <h3>Overthinking</h3>
            <p>Overthinking can lead to feelings of anxiety and uncertainty. Learning how to focus on the present moment and letting go of unnecessary worries can help reduce its impact.</p>
        </div>
    </section>

    <section class="resources">
        <h3>Useful Resources</h3>
        <p>We have curated a list of resources to help you navigate mental health challenges. Whether you need professional support or self-help techniques, these resources are here to guide you.</p>
        <a href="viewdoctors">Connect with Doctors</a> | <a href="viewstudents">View Student Stories</a>
    </section>

</body>
</html>
