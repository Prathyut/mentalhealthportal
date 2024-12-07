package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.TestReport;
import com.klef.jfsd.springboot.repository.TestReportRepository;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {

    @Autowired
    private TestReportRepository testReportRepository;

    @Autowired
    private StudentService studentService;

    @GetMapping("/")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");
        return mv;
    }

    @GetMapping("stdreg")
    public ModelAndView studentreg() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("stdreg");
        return mv;
    }

    @GetMapping("stdlogin")
    public ModelAndView studentlogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("stdlogin");
        return mv;
    }

    @PostMapping("stdlogin")
    public ModelAndView checkLogin(String email, String password, HttpSession session) {
        // Check login credentials
        Student student = studentService.checkStudentLogin(email, password);

        ModelAndView mv = new ModelAndView();

        // If student exists and credentials match
        if (student != null) {
            mv.setViewName("stdhome"); // Redirect to stdhome
            session.setAttribute("student", student); // Store student in session
            mv.addObject("student", student); // Optional: Add student info to the model
        } else {
            mv.setViewName("stdlogin"); // If login fails, stay on the login page
            mv.addObject("errorMessage", "Invalid email or password"); // Optionally show an error message
        }

        return mv;
    }

    @PostMapping("insertstudent")
    public ModelAndView insertstudent(HttpServletRequest request) {
        // Get data from the form
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dateofbirth"); // Fix: Use the correct parameter name
        String email = request.getParameter("email");
        String location = request.getParameter("location");
        String contact = request.getParameter("contact");
        String password = request.getParameter("password");

        // Input validation (if necessary)
        if (dob == null || dob.isEmpty()) {
            ModelAndView mv = new ModelAndView("stdreg"); // Return to the registration page
            mv.addObject("error", "Date of Birth is required.");
            return mv;
        }

        // Further validations as needed
        if (contact == null || contact.isEmpty()) {
            ModelAndView mv = new ModelAndView("stdreg"); // Return to the registration page
            mv.addObject("error", "Contact is required.");
            return mv;
        }

        // Create the Student object
        Student student = new Student();
        student.setName(name);
        student.setGender(gender);
        student.setDateofbirth(dob);  // Now correctly set the date of birth
        student.setEmail(email);
        student.setLocation(location);
        student.setContact(contact);
        student.setPassword(password); // Ensure password is set

        // Call service to save student
        String message = studentService.studentRegistration(student);

        // On success, navigate to the success page
        ModelAndView mv = new ModelAndView("redirect:/stdregsuccess");
        mv.addObject("message", message);
        return mv;
    }

    @GetMapping("/stdregsuccess")
    public ModelAndView studentRegSuccess() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("stdregsuccess");
        return mv;
    }

    @GetMapping("stdlogout")
    public ModelAndView logout(HttpSession session) {
        session.invalidate(); // Invalidate the session to log out
        ModelAndView mv = new ModelAndView();
        mv.setViewName("redirect:/"); // Redirect to the home page
        return mv;
    }

    // Importance of Mental Health page
    @GetMapping("impofmentalhealth")
    public ModelAndView impofmentalhealth() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("impofmentalhealth"); // Return the importance of mental health page
        return mv;
    }

    @GetMapping("test")
    public ModelAndView test() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("test"); // Display the test form
        return mv;
    }
    @PostMapping("/submittest")
    public ModelAndView submitTest(HttpServletRequest request) {
        // Get responses from the test
        String question1 = request.getParameter("question1");
        String question2 = request.getParameter("question2");

        // Create a TestReport object and save responses
        TestReport report = new TestReport();
        report.setTestName("Sample Test");
        report.setTestDate(java.time.LocalDate.now().toString());
        report.setScore(calculateScore(question1, question2));

        // Retrieve the logged-in student from the session
        HttpSession session = request.getSession();
        Student loggedInStudent = (Student) session.getAttribute("student");

        if (loggedInStudent != null) {
            report.setStudent(loggedInStudent);
        } else {
            ModelAndView mv = new ModelAndView("error");
            mv.addObject("message", "You must be logged in to submit the test.");
            mv.addObject("status", 405); // HTTP status 405 for "Method Not Allowed"
            return mv;
        }

        // Save the test report
        testReportRepository.save(report);

        // Redirect to the test success page
        ModelAndView mv = new ModelAndView("redirect:/testsuccess");
        mv.addObject("message", "Your test has been submitted successfully!");
        return mv;
    }

    // Utility method to calculate score (example logic)
    private double calculateScore(String question1, String question2) {
        // Implement scoring logic based on the test
        double score = 0.0;

        // Define scoring for question 1
        if ("Not at all".equalsIgnoreCase(question1)) {
            score += 10;
        } else if ("Several days".equalsIgnoreCase(question1)) {
            score += 5;
        } else if ("More than half the days".equalsIgnoreCase(question1)) {
            score += 2.5;
        } else if ("Nearly every day".equalsIgnoreCase(question1)) {
            score += 1;
        }

        // Define scoring for question 2
        if ("Not at all".equalsIgnoreCase(question2)) {
            score += 10;
        } else if ("Several days".equalsIgnoreCase(question2)) {
            score += 5;
        } else if ("More than half the days".equalsIgnoreCase(question2)) {
            score += 2.5;
        } else if ("Nearly every day".equalsIgnoreCase(question2)) {
            score += 1;
        }

        return score;
    }


    @GetMapping("/testsuccess")
    public ModelAndView testSuccess() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("testsuccess");
        return mv;
    }
    @GetMapping("/submittest")
    public ModelAndView handleGetToSubmitTest() {
        ModelAndView mv = new ModelAndView("error");
        mv.addObject("message", "This action is not allowed via a direct URL. Please submit the test through the form.");
        mv.addObject("status", 405); // Add HTTP status for clarity
        return mv;
    }

    // Removed: The GET mapping for /submittest is unnecessary and has been removed.
}
