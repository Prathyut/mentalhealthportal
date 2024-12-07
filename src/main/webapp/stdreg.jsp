<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Registration</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
<%@ include file="mainnavbar.jsp" %>
<h3 align="center">Student Registration Form</h3>

<div class="container">
    <!-- Registration Form Section -->
    <div class="form-container">
        <form method="post" action="insertstudent" onsubmit="return validateForm()">
            <!-- Name Input -->
            <label>Enter Name</label>
            <input type="text" name="name" id="name" required maxlength="100" />
            <br/>

            <!-- Gender Selection -->
            <label>Select Gender</label>
            <input type="radio" name="gender" value="Male" required /> Male
            <input type="radio" name="gender" value="Female" required /> Female
            <input type="radio" name="gender" value="Others" required /> Others
            <br/>

            <!-- Date of Birth -->
            <label>Enter Date of Birth</label>
            <input type="date" name="dateofbirth" required />
            <br/>

            <!-- Email Input -->
            <label>Enter Email ID</label>
            <input type="email" name="email" id="email" required maxlength="100" />
            <br/>

            <!-- Password Input -->
            <label>Enter Password</label>
            <input type="password" name="password" id="password" required maxlength="100" />
            <br/>

            <!-- Location Input -->
            <label>Enter Location</label>
            <input type="text" name="location" id="location" required maxlength="100" />
            <br/>

            <!-- Contact Input -->
            <label>Enter Contact</label>
            <input type="tel" name="contact" id="contact" required pattern="[0-9]{10}" maxlength="10" title="Enter a valid 10-digit phone number" />
            <br/>

            <!-- Submit and Reset Buttons -->
            <input type="submit" value="Register" />
            <input type="reset" value="Reset" />
        </form>

        <script>
            function validateForm() {
                // Example of simple validation logic (can be customized based on your specific needs)
                var contact = document.getElementById('contact').value;
                if (!contact.match(/^[0-9]{10}$/)) {
                    alert("Please enter a valid 10-digit contact number.");
                    return false; // Prevent form submission
                }
                return true;
            }
        </script>
    </div>

    <!-- Image Section -->
    <div class="image-container">
        <img src="image2.jpg" alt="Mental Health Image" />
    </div>
</div>

</body>
</html>
