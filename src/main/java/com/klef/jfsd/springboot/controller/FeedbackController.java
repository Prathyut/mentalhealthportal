package com.klef.jfsd.springboot.controller;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.repository.FeedbackRepository;

@Controller
public class FeedbackController {

    @Autowired
    private FeedbackRepository feedbackRepository;

    // Show the feedback form (GET request)
    @GetMapping("/feedbackform")
    public String showFeedbackForm() {
        return "feedbackform"; // Renders feedbackform.jsp
    }

    // Handle feedback submission (POST request)
    @PostMapping("/submitfeedback")
    public String submitFeedback(@RequestParam String studentName,
                                 @RequestParam String course,
                                 @RequestParam String feedbackText) {
    	
        Feedback feedback = new Feedback();
        feedback.setStudentName(studentName);
        feedback.setCourse(course);
        feedback.setFeedbackText(feedbackText);
        feedback.setSubmittedAt(LocalDateTime.now().toString());
        feedbackRepository.save(feedback);
        return "feedbackSuccess"; // Redirect to success page (feedbackSuccess.jsp)
    }
}
