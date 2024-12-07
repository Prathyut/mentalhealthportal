package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class TestReport {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "report_id")  // Map the 'id' field to the 'report_id' column in the database
    private Long id;

    @Column(name = "test_name")  // Column name in the database is 'test_name'
    private String testName;

    @Column(name = "test_date")  // Column name in the database is 'test_date'
    private String testDate;

    @Column(name = "score")  // Column name in the database is 'score'
    private Double score;

    @ManyToOne
    @JoinColumn(name = "student_student_id")  // Foreign key column is 'student_student_id'
    private Student student;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTestName() {
		return testName;
	}

	public void setTestName(String testName) {
		this.testName = testName;
	}

	public String getTestDate() {
		return testDate;
	}

	public void setTestDate(String testDate) {
		this.testDate = testDate;
	}

	public Double getScore() {
		return score;
	}

	public void setScore(Double score) {
		this.score = score;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

    // Getters and Setters
}
