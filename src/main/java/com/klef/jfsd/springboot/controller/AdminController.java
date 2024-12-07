package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.DoctorService;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController
{
	@Autowired
	private StudentService studentService; 
	@Autowired
	private DoctorService doctorService;
	@Autowired
	private AdminService adminservice;
	@GetMapping("adminlogin")
    public ModelAndView adminlogin()
    {
    	ModelAndView mv=new ModelAndView();
    	mv.setViewName("adminlogin");
    	return mv;
    }
	@GetMapping("adminhome")
    public ModelAndView adminhome(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        // Check if the admin is logged in (session check)
        Admin admin = (Admin) request.getSession().getAttribute("admin");
        if (admin != null) {
            mv.setViewName("adminhome"); // If logged in, show admin home page
        } else {
            mv.setViewName("adminlogin"); // If not logged in, redirect to login page
            mv.addObject("message", "Please log in first.");
        }

        return mv;
    }


	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView();

	    // Retrieve login details from the request
	    String adminUsername = request.getParameter("auname");
	    String adminPassword = request.getParameter("apwd");

	    // Check if the credentials are provided
	    if (adminUsername == null || adminUsername.isEmpty() || adminPassword == null || adminPassword.isEmpty()) {
	        mv.setViewName("adminloginfail");
	        mv.addObject("message", "Please Enter Again For Security.");
	        return mv;
	    }

	    // Authenticate admin
	    Admin admin = adminservice.checkAdminLogin(adminUsername, adminPassword);

	    if (admin != null) {
	        // If login is successful, store the admin in the session
	        request.getSession().setAttribute("admin", admin);

	        // Redirect to admin home page
	        mv.setViewName("adminhome");
	    } else {
	        // If login fails, show the failure page with an error message
	        mv.setViewName("adminloginfail");
	        mv.addObject("message", "Invalid username or password.");
	    }

	    return mv;
	}

	 @GetMapping("viewdoctors")
	    public ModelAndView viewDoctors() {
	        // Fetch the list of doctors
	        List<Doctor> doctorsList = doctorService.getAllDoctors();

	        // Debugging step: Check if doctorsList is not null and has data
	        if (doctorsList == null || doctorsList.isEmpty()) {
	            System.out.println("No doctors found.");
	        }

	        // Create a ModelAndView object to render the view
	        ModelAndView mv = new ModelAndView("viewdoctors");

	        // Add the list of doctors to the model
	        mv.addObject("doctors", doctorsList);

	        // Return the ModelAndView object
	        return mv;
	    }

	    // Delete doctor method
	    @GetMapping("deleteDoctor")
	    public String deleteDoctor(@RequestParam("id") String username) {
	        // Delete doctor by username
	        doctorService.deleteDoctorByUsername(username);

	        // Redirect back to the view doctors page after deletion
	        return "redirect:/viewdoctors";
	    }
    @GetMapping("viewstudents")
    public ModelAndView managePatients() {
        List<Student> studentList = doctorService.viewAllStudents(); // Fetch students
        ModelAndView mv = new ModelAndView();
        mv.setViewName("managepatients");
        mv.addObject("students", studentList);
        return mv;
    }
    @PostMapping("viewstudents")
    public ModelAndView handlePatientAction(@RequestParam("action") String action, 
                                            @RequestParam(value = "studentId", required = false) Integer studentId,
                                            @RequestParam(value = "name", required = false) String name, 
                                            @RequestParam(value = "email", required = false) String email) {
        
        ModelAndView mv = new ModelAndView();
        
        // Handle adding or updating student based on the action
        if ("add".equals(action)) {
            // Add new student
            Student newStudent = new Student();
            newStudent.setName(name);
            newStudent.setEmail(email);
            doctorService.addStudent(newStudent);
            mv.setViewName("redirect:/managepatients");
        } else if ("update".equals(action) && studentId != null) {
            // Update student details
            Student existingStudent = doctorService.getStudentById(studentId);
            if (existingStudent != null) {
                existingStudent.setName(name);
                existingStudent.setEmail(email);
                doctorService.updateStudent(existingStudent);
            }
            mv.setViewName("redirect:/managepatients");
        } else {
            // For other actions, just redirect back
            mv.setViewName("redirect:/managepatients");
        }
        
        return mv;
    }
    @GetMapping("/adminlogout")
    public String doctorLogout(HttpServletRequest request) {
        // Invalidate the session to log the doctor out
        request.getSession().invalidate();

        // Redirect to doctor login page after logging out
        return "redirect:/adminlogin";
    }
}
