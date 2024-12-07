package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.TestReport;

public interface TestReportService {
    List<TestReport> getAllReports();
}
