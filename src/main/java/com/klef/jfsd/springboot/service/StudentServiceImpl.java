package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.TestReport;
import com.klef.jfsd.springboot.repository.StudentRepository;
import com.klef.jfsd.springboot.repository.TestReportRepository;

@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentRepository studentRepository;

    @Autowired
    private TestReportRepository testReportRepository;

    @Override
    public String studentRegistration(Student student) {
        studentRepository.save(student);
        return "Student registered successfully";
    }

    @Override
    public Student checkStudentLogin(String email, String password) {
        return studentRepository.checkStudentLogin(email, password);
    }

    @Override
    public List<TestReport> getAllTestReports() {
        return testReportRepository.findAll();
    }

    @Override
    public void deleteTestReport(Long reportId) {
        testReportRepository.deleteById(reportId);
    }

    @Override
    public void saveTestReport(TestReport report) {
        testReportRepository.save(report);
    }
}
