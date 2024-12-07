package com.klef.jfsd.springboot.repository;

import com.klef.jfsd.springboot.model.ChatMessage;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ChatRepository extends JpaRepository<ChatMessage, Long> {
    // Custom queries if needed
}
