package com.klef.jfsd.springboot.controller;

import com.klef.jfsd.springboot.model.ChatMessage;
import com.klef.jfsd.springboot.service.ChatService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/chat")
public class ChatController {
    private final ChatService chatService;

    public ChatController(ChatService chatService) {
        this.chatService = chatService;
    }

    @GetMapping
    public String showChatPage(Model model) {
        List<ChatMessage> chatMessages = chatService.getAllMessages();
        model.addAttribute("chatMessages", chatMessages);
        return "chat/chat"; // Points to chat.jsp
    }

        @GetMapping("/chat")
        public String showChatPage() {
            return "chat"; // This resolves to /WEB-INF/chat.jsp
        }
    
    @PostMapping("/send")
    public String sendMessage(@RequestParam String username, @RequestParam String message) {
        chatService.saveMessage(username, message);
        return "redirect:/chat";
    }
}
