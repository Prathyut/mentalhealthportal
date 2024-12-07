package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.ChatMessage;
import com.klef.jfsd.springboot.repository.ChatRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChatServiceImpl implements ChatService {
    private final ChatRepository chatRepository;

    public ChatServiceImpl(ChatRepository chatRepository) {
        this.chatRepository = chatRepository;
    }

    @Override
    public List<ChatMessage> getAllMessages() {
        return chatRepository.findAll();
    }

    @Override
    public void saveMessage(String username, String message) {
        ChatMessage chatMessage = new ChatMessage();
        chatMessage.setUsername(username);
        chatMessage.setMessage(message);
        chatRepository.save(chatMessage);
    }
}
