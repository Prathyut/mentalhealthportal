package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Student;

public interface AdminService 
{
   public List<Student> viewAllStudents();
   public Admin checkAdminLogin(String uname,String pwd);
}
