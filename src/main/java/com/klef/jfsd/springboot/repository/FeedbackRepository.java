package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.springboot.model.Feedback;

public interface FeedbackRepository extends JpaRepository<Feedback, Long> {
    // Additional query methods can be defined here if needed
}
