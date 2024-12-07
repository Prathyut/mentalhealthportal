package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.model.Student;

public interface DoctorService {
	public List<Student> viewAllStudents();
	   public Doctor checkDoctorLogin(String uname,String pwd);
	void deleteStudentById(int id);
	public void updateStudent(Student existingStudent);
	public void addStudent(Student newStudent);
	  List<Doctor> getAllDoctors(); // Fetch all doctors
	    void deleteDoctorByUsername(String username); // Delete doctor by username
		public Student getStudentById(Integer studentId);
}
