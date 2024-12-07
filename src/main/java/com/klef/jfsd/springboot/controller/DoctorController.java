package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.TestReport;
import com.klef.jfsd.springboot.repository.TestReportRepository;
import com.klef.jfsd.springboot.service.DoctorService;
import com.klef.jfsd.springboot.service.StudentService;
import com.klef.jfsd.springboot.service.TestReportService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class DoctorController
{  @Autowired
    private TestReportRepository testReportRepository;

	@Autowired
	private StudentService studentService; 
	@Autowired
	private DoctorService doctorService;
	   @Autowired
	    private TestReportService testReportService;

	   @GetMapping("/viewreports")
	    public ModelAndView viewReports() {
	        ModelAndView mv = new ModelAndView();
	        
	        // Fetch all the test reports from the repository
	        List<TestReport> reports = testReportRepository.findAll();
	        
	        // Add the reports list to the model
	        mv.addObject("reports", reports);
	        
	        // Set the view name for the doctor's reports page
	        mv.setViewName("viewreports"); 
	        
	        return mv;
	    }
	@GetMapping("doctorlogin")
    public ModelAndView doctorlogin()
    {
    	ModelAndView mv=new ModelAndView();
    	mv.setViewName("doctorlogin");
    	return mv;
    }
	
	@GetMapping("doctorhome")
    public ModelAndView doctorhome()
    {
    	ModelAndView mv=new ModelAndView();
    	mv.setViewName("doctorhome");
    	return mv;
    }
	@PostMapping("doctorhome")
	public ModelAndView postDoctorHome() {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("doctorhome");
	    return mv;
	}

	@PostMapping("doctorlogin")
	public ModelAndView checkDoctorLogin(String username, String password) {
	    Doctor doctor = doctorService.checkDoctorLogin(username, password);

	    ModelAndView mv = new ModelAndView();
	    if (doctor != null) {
	        System.out.println("Doctor Logged In: " + doctor.getUsername()); // Debugging
	        mv.setViewName("doctorhome");
	        mv.addObject("doctor", doctor);
	    } else {
	        mv.setViewName("doctorlogin");
	        mv.addObject("errorMessage", "Invalid username or password");
	    }
	    return mv;
	}
    @GetMapping("managepatient")
    public ModelAndView managePatients() {
        List<Student> studentList = doctorService.viewAllStudents(); // Fetch students
        ModelAndView mv = new ModelAndView();
        mv.setViewName("managepatients");
        mv.addObject("students", studentList);
        return mv;
    }
    @PostMapping("managepatient")
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
    // Mapping to delete a student
    @GetMapping("deletestudent")
    public String deleteStudent(@RequestParam("id") int id) {
        doctorService.deleteStudentById(id); // Call service to delete the student
        return "redirect:/managepatients"; // Redirect back to managepatients
    } 
    // POST mapping to delete a specific test report
    @PostMapping("/deleteReport")
    public String deleteReport(@RequestParam("reportId") Long reportId) {
        // Call service to delete the report
        studentService.deleteTestReport(reportId);

        // Redirect to view reports after deletion
        return "redirect:/viewreports";
    }
    @GetMapping("/doctorlogout")
    public String doctorLogout(HttpServletRequest request) {
        // Invalidate the session to log the doctor out
        request.getSession().invalidate();

        // Redirect to doctor login page after logging out
        return "redirect:/doctorlogin";
    }
}
