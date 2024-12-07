package com.klef.jfsd.springboot.service;

//package com.klef.jfsd.springboot.service.impl;

import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.repository.FeedbackRepository;
import com.klef.jfsd.springboot.service.FeedbackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class FeedbackServiceImpl implements FeedbackService {

    @Autowired
    private FeedbackRepository feedbackRepository;

    @Override
    public void submitFeedback(Feedback feedback) {
        feedbackRepository.save(feedback); // Save feedback in the database
    }

    @Override
    public List<Feedback> getAllFeedbacks() {
        return feedbackRepository.findAll(); // Retrieve all feedbacks from the database
    }
}
