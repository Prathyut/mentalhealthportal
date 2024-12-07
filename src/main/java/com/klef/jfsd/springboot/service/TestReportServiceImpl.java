package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.TestReport;
import com.klef.jfsd.springboot.repository.TestReportRepository;

@Service
public class TestReportServiceImpl implements TestReportService {
    @Autowired
    private TestReportRepository testReportRepository;

    @Override
    public List<TestReport> getAllReports() {
        return testReportRepository.findAll();
    }
}
