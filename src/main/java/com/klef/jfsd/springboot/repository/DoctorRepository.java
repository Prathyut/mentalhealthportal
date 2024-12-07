package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Doctor;

@Repository
public interface DoctorRepository extends JpaRepository<Doctor, String>  //modelname,datatype
{
	@Query("select d from Doctor d where d.username=?1 and d.password=?2")
	public Doctor checkDoctorLogin(String uname, String pwd);

}
