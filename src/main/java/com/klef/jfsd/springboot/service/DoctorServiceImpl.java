package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.DoctorRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class DoctorServiceImpl implements DoctorService{
	@Autowired
    private StudentRepository studentRepository;
	
	@Autowired
    private DoctorRepository doctorRepository;
	
	@Override
	public List<Student> viewAllStudents() {
		return studentRepository.findAll();
	}

	@Override
	public Doctor checkDoctorLogin(String uname, String pwd)
	{
		return doctorRepository.checkDoctorLogin(uname, pwd);
	}
	
	@Override
	public void deleteStudentById(int id) {
	    studentRepository.deleteById(id); // Use JPA repository to delete the student
	}

	@Override
	public void updateStudent(Student existingStudent) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addStudent(Student newStudent) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Doctor> getAllDoctors() {
	    // Ensure the method fetches the doctors list from the database or wherever it's stored
	    return doctorRepository.findAll();  // assuming you have a repository for doctors
	}


	@Override
	public void deleteDoctorByUsername(String username) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Student getStudentById(Integer studentId) {
		// TODO Auto-generated method stub
		return null;
	}

}
