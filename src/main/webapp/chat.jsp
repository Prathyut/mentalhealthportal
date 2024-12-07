<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sessions Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }
        .upload-section, .chat-section {
            width: 80%;
            margin: 20px 0;
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
        }
        .chat-box {
            border: 1px solid #ddd;
            height: 300px;
            overflow-y: auto;
            padding: 10px;
            background-color: #f9f9f9;
            margin-bottom: 10px;
        }
        .chat-input {
            display: flex;
            gap: 10px;
        }
        .chat-input input {
            flex: 1;
            padding: 10px;
        }
        .chat-input button {
            padding: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Video Upload Section -->
        <div class="upload-section">
            <h2>Upload Video</h2>
            <form action="uploadVideoServlet" method="post" enctype="multipart/form-data">
                <input type="file" name="video" accept="video/*">
                <button type="submit">Upload</button>
            </form>
        </div>

        <!-- Chatbox Section -->
        <div class="chat-section">
            <h2>Chat Box</h2>
            <div class="chat-box" id="chatBox">
                <!-- Chat messages will be appended here -->
            </div>
            <div class="chat-input">
                <input type="text" id="messageInput" placeholder="Type your message...">
                <button id="sendButton">Send</button>
            </div>
        </div>
    </div>

    <script>
        // WebSocket connection
        const socket = new WebSocket('ws://localhost:2004/chat'); // Update with your server's WebSocket endpoint

        // DOM elements
        const chatBox = document.getElementById('chatBox');
        const messageInput = document.getElementById('messageInput');
        const sendButton = document.getElementById('sendButton');

        // Function to append messages to chat box
        function appendMessage(message, isOwnMessage = false) {
            const messageElement = document.createElement('div');
            messageElement.style.textAlign = isOwnMessage ? 'right' : 'left';
            messageElement.textContent = message;
            chatBox.appendChild(messageElement);
            chatBox.scrollTop = chatBox.scrollHeight; // Auto-scroll to bottom
        }

        // Listen for incoming messages
        socket.onmessage = function(event) {
            appendMessage(event.data); // Display received message
        };

        // Handle send button click
        sendButton.addEventListener('click', () => {
            const message = messageInput.value.trim();
            if (message) {
                socket.send(message); // Send message via WebSocket
                appendMessage(`You: ${message}`, true); // Display own message
                messageInput.value = ''; // Clear input
            }
        });

        // Handle WebSocket connection errors
        socket.onerror = function() {
            appendMessage('Error connecting to chat server.');
        };

        // Handle WebSocket connection close
        socket.onclose = function() {
            appendMessage('Chat server disconnected.');
        };
    </script>
</body>
</html>
