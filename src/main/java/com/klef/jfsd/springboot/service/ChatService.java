package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.ChatMessage;

import java.util.List;

public interface ChatService {
    List<ChatMessage> getAllMessages();
    void saveMessage(String username, String message);
}
