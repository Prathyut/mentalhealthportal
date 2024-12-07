package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.TestReport;

public interface StudentService {
    String studentRegistration(Student student);

    Student checkStudentLogin(String email, String password);

    List<TestReport> getAllTestReports();

    void deleteTestReport(Long reportId);

    void saveTestReport(TestReport report); // New method to save test reports
}
