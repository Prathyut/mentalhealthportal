package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Feedback;
import java.util.List;

public interface FeedbackService {
    void submitFeedback(Feedback feedback);
    List<Feedback> getAllFeedbacks();
}
