package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;
import com.klef.jfsd.springboot.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
    private StudentRepository studentRepository;
	
	@Autowired
    private AdminRepository adminRepository;
	
	@Override
	public List<Student> viewAllStudents() {
		return studentRepository.findAll();
	}

	@Override
	public Admin checkAdminLogin(String uname, String pwd)
	{
		return adminRepository.checkAdminLogin(uname, pwd);
	}

}
